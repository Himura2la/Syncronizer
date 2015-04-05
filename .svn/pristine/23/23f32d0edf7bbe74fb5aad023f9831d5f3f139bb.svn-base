#include <avr/io.h>
#define F_CPU 9600000U
#include <avr/interrupt.h>
#include <util/delay.h>

#define LED_ON PORTB |= (1 << PB0)
#define LED_OFF PORTB &= ~(1 << PB0)

#define RFS_H PORTB |= (1 << PB4)
#define RFS_L PORTB &= ~(1 << PB4)

void button(){
	DDRB = ~(1 << PB3); //PB3 - button
	PORTB = (1 << PB3); //PB3 - button
}

void timer(){
	TCCR0B = (1 << CS00) | (1 << CS01); //Timer Clock = 150 kHz
	TIMSK0 = (1 << TOIE0) | (1 << OCIE0A) | (1 << OCIE0B); // Enable interrupts
	OCR0A = 84; // OCM_A	(Send 0)
	OCR0B = 213; // OCM_B	(Send 1)
	sei();
}

#define PAT_L 8
uint8_t pattern[PAT_L] = {0,1,0,0,0,1,1,0};
uint8_t i = PAT_L; //Not send

ISR(TIM0_OVF_vect){ //Timer overflow
	RFS_L;
	if (i < PAT_L) i++;
	if (i > PAT_L) i = 0; //Start sending
}
ISR(TIM0_COMPA_vect){ //Timer OCM_A	(Send 0)
	if (i < PAT_L && pattern[i] == 0) {
		RFS_H;
	}
}
ISR(TIM0_COMPB_vect){ //Timer OCM_B	(Send 1)
	RFS_H;
}

#define FIRE i = PAT_L + 1

uint8_t status = 0;	//Ready
uint8_t btn_prev_sate = 0;
uint8_t btn_cur_sate = 0;
uint8_t btn_pressed = 0;

int main(void){
	button();
	timer();

    while(1){
		btn_prev_sate = btn_cur_sate;
		btn_cur_sate = (PINB & (1<<PB3)) ? 0 : 1; //LOW = 1
		btn_pressed = (btn_prev_sate == 0 && btn_cur_sate == 1) ? 1 : 0; //Rising Edge (Press)
																		 //(Actually, Falling)
		//if (btn_pressed){
			//_delay_ms(10);	//Антидребезг
			//if (PINB & (1<<PB3)) btn_pressed = 0;
		//}
		
		if (btn_pressed && status == 0){
			status = 1;	//Firing
			FIRE;
		}
		if (i == PAT_L){
			status = 0;	//Ready
			LED_ON;
		}
		if (i < PAT_L){
			LED_OFF;
		}
	}
}