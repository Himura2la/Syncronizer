EESchema Schematic File Version 2  date 09.01.2015 13:52:46
LIBS:analog_IC
LIBS:digital_IC
LIBS:mixture
LIBS:power
LIBS:transmitter-cache
EELAYER 27 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title ""
Date "9 jan 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY13 DD1
U 1 1 54AC3DE6
P 4600 2850
F 0 "DD1" H 5100 3000 60  0000 C CNN
F 1 "ATTINY13" H 5100 2100 60  0000 C CNN
F 2 "" H 4600 2850 60  0000 C CNN
F 3 "" H 4600 2850 60  0000 C CNN
	1    4600 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 54AC3E38
P 4450 4250
F 0 "#PWR8" H 4450 4275 30  0001 C CNN
F 1 "GND" H 4450 4225 30  0001 C CNN
F 2 "" H 4450 4250 60  0000 C CNN
F 3 "" H 4450 4250 60  0000 C CNN
	1    4450 4250
	1    0    0    -1  
$EndComp
$Comp
L R_RES R2
U 1 1 54AC3E7A
P 4350 2250
F 0 "R2" H 4200 2375 60  0000 C CNN
F 1 "1K" H 4450 2375 60  0000 C CNN
F 2 "" H 4350 2250 60  0000 C CNN
F 3 "" H 4350 2250 60  0000 C CNN
	1    4350 2250
	0    1    1    0   
$EndComp
$Comp
L +3V #PWR7
U 1 1 54AC3E98
P 4350 1700
F 0 "#PWR7" H 4350 1660 30  0001 C CNN
F 1 "+3V" H 4350 1860 30  0000 C CNN
F 2 "" H 4350 1700 60  0000 C CNN
F 3 "" H 4350 1700 60  0000 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
$Comp
L XP_CONN_06_M XP2
U 1 1 54AC3EFB
P 6100 3350
F 0 "XP2" H 6350 3750 60  0000 C CNN
F 1 "ISP" H 6450 3050 60  0000 C CNN
F 2 "" H 6100 3350 60  0000 C CNN
F 3 "" H 6100 3350 60  0000 C CNN
	1    6100 3350
	1    0    0    -1  
$EndComp
Text Notes 6550 3100 2    60   ~ 0
MISO
Text Notes 6500 3200 2    60   ~ 0
VCC
$Comp
L GB_BAT GB2
U 1 1 54AC3F81
P 2550 3750
F 0 "GB2" H 2575 3825 60  0000 L CNN
F 1 "CR2032" H 2575 3625 60  0000 L CNN
F 2 "" H 2550 3750 60  0000 C CNN
F 3 "" H 2550 3750 60  0000 C CNN
	1    2550 3750
	0    -1   1    0   
$EndComp
$Comp
L +3V #PWR3
U 1 1 54AC3F95
P 2400 3300
F 0 "#PWR3" H 2400 3260 30  0001 C CNN
F 1 "+3V" H 2400 3460 30  0000 C CNN
F 2 "" H 2400 3300 60  0000 C CNN
F 3 "" H 2400 3300 60  0000 C CNN
	1    2400 3300
	1    0    0    -1  
$EndComp
Text Notes 6500 3300 2    60   ~ 0
SCK
Text Notes 6550 3400 2    60   ~ 0
MOSI
Text Notes 6600 3500 2    60   ~ 0
RESET
Text Notes 6500 3600 2    60   ~ 0
GND
$Comp
L +3V #PWR9
U 1 1 54AC4074
P 5750 2650
F 0 "#PWR9" H 5750 2610 30  0001 C CNN
F 1 "+3V" H 5750 2810 30  0000 C CNN
F 2 "" H 5750 2650 60  0000 C CNN
F 3 "" H 5750 2650 60  0000 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L XS_CONN_04_F XS1
U 1 1 54AC417F
P 2350 2150
F 0 "XS1" H 2600 2350 60  0000 C CNN
F 1 "RF Link" H 2700 1850 60  0000 C CNN
F 2 "" H 2350 2150 60  0000 C CNN
F 3 "" H 2350 2150 60  0000 C CNN
	1    2350 2150
	-1   0    0    -1  
$EndComp
Text Notes 2000 2100 0    60   ~ 0
V+
Text Notes 1900 2200 0    60   ~ 0
DATA
Text Notes 1900 2300 0    60   ~ 0
DATA
Text Notes 2000 2400 0    60   ~ 0
V-
$Comp
L GND #PWR4
U 1 1 54AC421A
P 2450 2700
F 0 "#PWR4" H 2450 2725 30  0001 C CNN
F 1 "GND" H 2450 2675 30  0001 C CNN
F 2 "" H 2450 2700 60  0000 C CNN
F 3 "" H 2450 2700 60  0000 C CNN
	1    2450 2700
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR6
U 1 1 54AC4299
P 2750 1700
F 0 "#PWR6" H 2750 1660 30  0001 C CNN
F 1 "+9V" H 2750 1860 30  0000 C CNN
F 2 "" H 2750 1700 60  0000 C CNN
F 3 "" H 2750 1700 60  0000 C CNN
	1    2750 1700
	1    0    0    -1  
$EndComp
$Comp
L +3V #PWR5
U 1 1 54AC42CD
P 2550 1700
F 0 "#PWR5" H 2550 1660 30  0001 C CNN
F 1 "+3V" H 2550 1860 30  0000 C CNN
F 2 "" H 2550 1700 60  0000 C CNN
F 3 "" H 2550 1700 60  0000 C CNN
	1    2550 1700
	1    0    0    -1  
$EndComp
$Comp
L J_JMP-3 J1
U 1 1 54AC4365
P 2950 2050
F 0 "J1" H 2975 2250 60  0000 C CNN
F 1 "J_JMP-3" H 3000 1850 60  0001 C CNN
F 2 "" H 2950 2050 60  0000 C CNN
F 3 "" H 2950 2050 60  0000 C CNN
	1    2950 2050
	1    0    0    -1  
$EndComp
$Comp
L R_RES R1
U 1 1 54AC44C7
P 2850 2600
F 0 "R1" H 2700 2725 60  0000 C CNN
F 1 "500" H 2950 2725 60  0000 C CNN
F 2 "" H 2850 2600 60  0000 C CNN
F 3 "" H 2850 2600 60  0000 C CNN
	1    2850 2600
	0    -1   -1   0   
$EndComp
$Comp
L GB_BAT GB1
U 1 1 54AC4651
P 1850 3750
F 0 "GB1" H 1875 3825 60  0000 L CNN
F 1 "CR2032x3" H 1875 3625 60  0000 L CNN
F 2 "" H 1850 3750 60  0000 C CNN
F 3 "" H 1850 3750 60  0000 C CNN
	1    1850 3750
	0    -1   1    0   
$EndComp
$Comp
L +9V #PWR1
U 1 1 54AC470C
P 1650 3300
F 0 "#PWR1" H 1650 3260 30  0001 C CNN
F 1 "+9V" H 1650 3460 30  0000 C CNN
F 2 "" H 1650 3300 60  0000 C CNN
F 3 "" H 1650 3300 60  0000 C CNN
	1    1650 3300
	1    0    0    -1  
$EndComp
$Comp
L SB_1-2 SB1
U 1 1 54AC4827
P 3800 3050
F 0 "SB1" H 3800 3375 120 0000 C CNN
F 1 "Fire" H 3775 2975 60  0000 C CNN
F 2 "" H 3800 3050 60  0000 C CNN
F 3 "" H 3800 3050 60  0000 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
Text Notes 2400 1450 0    60   ~ 0
RF
Wire Wire Line
	4450 3450 4450 4250
Wire Wire Line
	4450 3450 4600 3450
Wire Wire Line
	4350 2500 4350 3650
Wire Wire Line
	4350 2850 4600 2850
Wire Wire Line
	4350 1700 4350 2000
Wire Wire Line
	2650 3750 6050 3750
Wire Wire Line
	5600 3050 6100 3050
Wire Wire Line
	5600 2850 5950 2850
Wire Wire Line
	5950 2850 5950 3950
Wire Wire Line
	5950 3350 6100 3350
Wire Wire Line
	5600 3250 6100 3250
Wire Wire Line
	5750 3150 6100 3150
Wire Wire Line
	5750 2650 5750 3450
Wire Wire Line
	5750 3450 5600 3450
Connection ~ 5750 3150
Wire Wire Line
	6050 3550 6100 3550
Wire Wire Line
	6050 3750 6050 3550
Connection ~ 4450 3750
Wire Wire Line
	5850 3450 6100 3450
Wire Wire Line
	5850 3450 5850 3650
Wire Wire Line
	5850 3650 4350 3650
Connection ~ 4350 2850
Wire Wire Line
	2350 2350 2450 2350
Wire Wire Line
	2450 2350 2450 2700
Wire Wire Line
	2350 2050 2850 2050
Wire Wire Line
	2550 1700 2550 2150
Wire Wire Line
	2550 2150 2850 2150
Wire Wire Line
	2750 1700 2750 1950
Wire Wire Line
	2750 1950 2850 1950
Wire Wire Line
	2350 2150 2400 2150
Wire Wire Line
	2400 2150 2400 2250
Connection ~ 2400 2250
Wire Wire Line
	2350 2250 2850 2250
Wire Wire Line
	2400 3750 2400 3300
Wire Wire Line
	1650 3750 1800 3750
Wire Wire Line
	2850 2250 2850 2350
Wire Wire Line
	2850 2850 2850 3250
Wire Wire Line
	2850 3250 4600 3250
Wire Wire Line
	1650 3300 1650 3750
Wire Notes Line
	3250 1450 3250 2950
Wire Notes Line
	3250 2950 1650 2950
Wire Notes Line
	1650 2950 1650 1450
Wire Notes Line
	1650 1450 3250 1450
Wire Wire Line
	3550 3050 3200 3050
Wire Wire Line
	4050 3050 4600 3050
Wire Wire Line
	2400 3750 2500 3750
$Comp
L GND #PWR2
U 1 1 54AFB218
P 2100 3950
F 0 "#PWR2" H 2100 3975 30  0001 C CNN
F 1 "GND" H 2100 3925 30  0001 C CNN
F 2 "" H 2100 3950 60  0000 C CNN
F 3 "" H 2100 3950 60  0000 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3750 2100 3750
Wire Wire Line
	2100 3750 2100 3950
Connection ~ 5950 3350
$Comp
L R_RES R3
U 1 1 54AFB3C8
P 5650 3950
F 0 "R3" H 5500 4075 60  0000 C CNN
F 1 "1k" H 5750 4075 60  0000 C CNN
F 2 "" H 5650 3950 60  0000 C CNN
F 3 "" H 5650 3950 60  0000 C CNN
	1    5650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3950 5900 3950
$Comp
L HL_LED HL1
U 1 1 54AFB420
P 4950 3950
F 0 "HL1" H 4950 4100 60  0000 C CNN
F 1 "Status" H 5025 3800 60  0000 C CNN
F 2 "" H 4950 3950 60  0000 C CNN
F 3 "" H 4950 3950 60  0000 C CNN
	1    4950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3950 4750 3950
Wire Wire Line
	5150 3950 5400 3950
Connection ~ 4450 3950
$Comp
L XP_CONN_02_M XP1
U 1 1 54AFB4DE
P 3900 3550
F 0 "XP1" H 4150 3650 60  0000 C CNN
F 1 "Camera" H 4250 3350 60  0000 C CNN
F 2 "" H 3900 3550 60  0000 C CNN
F 3 "" H 3900 3550 60  0000 C CNN
	1    3900 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 3450 4200 3450
Wire Wire Line
	4200 3450 4200 3050
Connection ~ 4200 3050
Wire Wire Line
	3900 3550 4450 3550
Connection ~ 4450 3550
Connection ~ 3200 3750
Wire Wire Line
	3200 3050 3200 3750
$EndSCHEMATC
