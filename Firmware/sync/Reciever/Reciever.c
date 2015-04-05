#include <avr/io.h>
#define F_CPU 9600000U
#include <util/delay.h>
#include <string.h>
#include <avr/interrupt.h>

#define LED_ON PORTB |= (1 << PB0)
#define LED_OFF PORTB &= ~(1 << PB0)

#define FL_ON PORTB |= (1 << PB4)
#define FL_OFF PORTB &= ~(1 << PB4)

#define RFR_1 PINB & (1<<PB3)
#define RFR_0 !(PINB & (1<<PB3))

void ports(){
	DDRB = ~(1<<PB3); //PB3 - RF Link
	PORTB = (1<<PB3);
}

void timer(){
	#define START TCCR0B = (1 << CS00) | (1 << CS01) //Timer Clock = 150 kHz
	#define STOP TCCR0B = 0
	TIMSK0 = (1 << OCIE0A); // Enable interrupts
	OCR0A = 255; // OCM_A
	sei();
}

void debug(uint8_t n){
	uint8_t s = n;
	while(s--){
		LED_ON;
		LED_OFF;
	}
}

uint8_t status = 0; //Init
uint8_t pat_status = 0; //Not receiving
uint8_t data = 1;

#define PAT_L 8
uint8_t pat_need[PAT_L] = {0,1,0,0,0,1,1,0};
uint8_t pat_rcvd[PAT_L];
uint8_t i = 0;
uint8_t FIRE = 0;


uint8_t sig_pat[PAT_L] = {1,1,1,1,1,1,1,1};
uint8_t sig_rcvd[PAT_L];
uint8_t j = 0;
uint8_t ONLINE = 0;

void sig_reset(){
	uint8_t k = PAT_L;
	while (k--){
		sig_rcvd[k] = 0;
	}
	ONLINE = 0;
}

ISR(TIM0_COMPA_vect){ //Timer OCM_A
	switch(status){
		case 1:
			status = 2; //Found transmitter. Waiting for data
			OCR0A = 127;
			break;
		case 2:
			status = 3; //Listening to data
			data = 1;	//LOW = 1
			OCR0A = 171;
			break;
		case 3:
			status = 4;		//Data received
			STOP; TCNT0 = 0;
			if (data == 1) {
				sig_rcvd[j] = data;
				j = (j < PAT_L - 1) ? j + 1 : 0;
				if (!memcmp(sig_rcvd, sig_pat, PAT_L)) ONLINE = 127;
				
			}				
			if (data == 0 && i == 0) pat_status = 1; //Starting to read pattern
			if (pat_status == 1){
				pat_rcvd[i] = data; //If reading pattern, save bit
				i++;
				if (i >= PAT_L){ // Finished reading pattern
					pat_status = 0;
					status = 0;
					i = 0;
					if (!memcmp(pat_need, pat_rcvd, PAT_L)) FIRE = 127;
				}
			}
		break;
	}	
}

//ISR(TIM0_COMPB_vect){ //Timer OCM_B
//
//}

#define BLINK_DELAY 20
void blink(){
	_delay_ms(BLINK_DELAY);
	LED_ON;
	_delay_ms(BLINK_DELAY);
	LED_OFF;
	_delay_ms(BLINK_DELAY);
}

uint8_t rf_cur_sate = 0;
uint8_t rf_prev_sate = 0;

int main(void){
	ports();
	timer();
	blink();blink();blink();
    while(1){
		rf_prev_sate = rf_cur_sate;
		rf_cur_sate = RFR_1 ? 1 : 0;
		if (rf_prev_sate == 1 && rf_cur_sate == 0){ //Falling edge detected
			START;
			status = 1; //Listen for SIG
			OCR0A = 43;
		}
		if (status == 1 && RFR_1) {
			status = 0; //Failed to find transmitter (((
			sig_reset();
			STOP; TCNT0=0;
		}
		if (status == 3 && RFR_1) data = 0;	//HIGH = 0
		
		if (ONLINE){
			LED_ON;
		}else{
			LED_OFF;
		}
		
		if (ONLINE && FIRE) {
			FL_ON;
			blink();
			FL_OFF;
			FIRE = 0;
		}
    }
}