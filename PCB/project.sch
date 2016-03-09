EESchema Schematic File Version 2  date Sun 03 Mar 2013 01:58:58 AM CET
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:micha_custom
LIBS:stm32 f103c8t6
LIBS:project-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "2 mar 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_1 P10
U 1 1 5132167A
P 6600 7200
F 0 "P10" H 6680 7200 40  0000 L CNN
F 1 "CONN_1" H 6600 7255 30  0001 C CNN
	1    6600 7200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P9
U 1 1 51321677
P 6600 7000
F 0 "P9" H 6680 7000 40  0000 L CNN
F 1 "CONN_1" H 6600 7055 30  0001 C CNN
	1    6600 7000
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P8
U 1 1 51321674
P 6600 6800
F 0 "P8" H 6680 6800 40  0000 L CNN
F 1 "CONN_1" H 6600 6855 30  0001 C CNN
	1    6600 6800
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P7
U 1 1 5132166F
P 6600 6600
F 0 "P7" H 6680 6600 40  0000 L CNN
F 1 "CONN_1" H 6600 6655 30  0001 C CNN
	1    6600 6600
	1    0    0    -1  
$EndComp
Connection ~ 10150 1600
Wire Wire Line
	10400 1600 9250 1600
Wire Wire Line
	10150 2200 10150 2000
Connection ~ 7150 1600
Wire Wire Line
	6950 1600 8050 1600
Wire Wire Line
	7150 2200 7150 2000
Wire Wire Line
	2000 3850 2000 3750
Wire Wire Line
	2000 3750 1400 3750
Wire Wire Line
	1400 3750 1400 3850
Connection ~ 1400 4500
Wire Wire Line
	1400 4250 1400 5050
Wire Wire Line
	1400 5050 2950 5050
Connection ~ 2200 5150
Wire Wire Line
	2950 5150 2050 5150
Connection ~ 7450 1600
Connection ~ 9800 1600
Connection ~ 9800 2200
Wire Wire Line
	9800 2000 9800 2200
Connection ~ 7750 1800
Wire Wire Line
	7750 2200 7750 1700
Wire Wire Line
	7750 1700 8050 1700
Wire Wire Line
	7750 1800 8050 1800
Wire Wire Line
	9550 1800 9250 1800
Wire Wire Line
	9250 1700 9550 1700
Wire Wire Line
	9550 1700 9550 2200
Connection ~ 9550 1800
Wire Wire Line
	10400 1800 10400 2200
Connection ~ 9550 2200
Wire Wire Line
	7450 2200 7450 2000
Connection ~ 7750 2200
Connection ~ 7450 2200
Wire Wire Line
	2950 4950 2000 4950
Wire Wire Line
	2000 4950 2000 4250
Connection ~ 2000 4500
Wire Wire Line
	2950 5450 2600 5450
Wire Wire Line
	2600 5450 2600 5950
Connection ~ 7150 2200
Wire Wire Line
	10400 2200 6950 2200
Connection ~ 10150 2200
$Comp
L C C7
U 1 1 51320B12
P 10150 1800
F 0 "C7" H 10200 1900 50  0000 L CNN
F 1 "100n" H 10200 1700 50  0000 L CNN
	1    10150 1800
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5131328E
P 7150 1800
F 0 "C4" H 7200 1900 50  0000 L CNN
F 1 "100n" H 7200 1700 50  0000 L CNN
	1    7150 1800
	1    0    0    -1  
$EndComp
Text Label 6950 1600 2    60   ~ 0
3.3V
Text Label 9450 6900 2    60   ~ 0
3.3V
Text Label 9450 6800 2    60   ~ 0
3.3V
Text Label 9450 6700 2    60   ~ 0
3.3V
Text Label 10250 6900 0    60   ~ 0
gnd
Text Label 10250 6800 0    60   ~ 0
gnd
Text Label 10250 6700 0    60   ~ 0
gnd
$Comp
L CONN_3X2 P5
U 1 1 513130A3
P 9850 6850
F 0 "P5" H 9850 7100 50  0000 C CNN
F 1 "CONN_3X2" V 9850 6900 40  0000 C CNN
	1    9850 6850
	1    0    0    -1  
$EndComp
Text Label 2600 6850 3    60   ~ 0
gnd
$Comp
L R R2
U 1 1 51312DEF
P 2600 6600
F 0 "R2" V 2680 6600 50  0000 C CNN
F 1 "220" V 2600 6600 50  0000 C CNN
	1    2600 6600
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 51312DD9
P 2600 6150
F 0 "D1" H 2600 6250 50  0000 C CNN
F 1 "LED" H 2600 6050 50  0000 C CNN
	1    2600 6150
	0    1    1    0   
$EndComp
Text Label 9500 6350 2    60   ~ 0
gnd
Text Label 9500 6250 2    60   ~ 0
gpio_c
Text Label 9500 6150 2    60   ~ 0
gpio_b
Text Label 9500 6050 2    60   ~ 0
gpio_a
$Comp
L CONN_4 P4
U 1 1 51312C90
P 9850 6200
F 0 "P4" V 9800 6200 50  0000 C CNN
F 1 "CONN_4" V 9900 6200 50  0000 C CNN
	1    9850 6200
	1    0    0    -1  
$EndComp
Text Label 2950 4850 2    60   ~ 0
gpio_c
Text Label 2950 4750 2    60   ~ 0
gpio_b
Text Label 2950 4650 2    60   ~ 0
gpio_a
Text Label 5650 5350 0    60   ~ 0
key10
Text Label 4750 3750 1    60   ~ 0
u3
$Comp
L CONN_3 K3
U 1 1 5131298E
P 9850 5600
F 0 "K3" V 9800 5600 50  0000 C CNN
F 1 "CONN_3" V 9900 5600 40  0000 C CNN
	1    9850 5600
	1    0    0    -1  
$EndComp
Text Label 9500 5500 2    60   ~ 0
swclk
Text Label 9500 5700 2    60   ~ 0
gnd
Text Label 9500 5600 2    60   ~ 0
swdio
Text Label 5650 4750 0    60   ~ 0
swdio
Text Label 4850 3750 1    60   ~ 0
swclk
Text Label 9500 4850 2    60   ~ 0
nrst
Text Label 9500 5050 2    60   ~ 0
gnd
$Comp
L CONN_2 P3
U 1 1 51311944
P 9850 4950
F 0 "P3" V 9800 4950 40  0000 C CNN
F 1 "CONN_2" V 9900 4950 40  0000 C CNN
	1    9850 4950
	1    0    0    -1  
$EndComp
Text Label 2400 5150 0    60   ~ 0
nrst
Text Label 9500 4500 2    60   ~ 0
gnd
Text Label 9500 4200 2    60   ~ 0
3.3V
Text Label 9500 4400 2    60   ~ 0
usart1_rx
Text Label 9500 4300 2    60   ~ 0
usart1_tx
$Comp
L CONN_4 P2
U 1 1 51311337
P 9850 4350
F 0 "P2" V 9800 4350 50  0000 C CNN
F 1 "CONN_4" V 9900 4350 50  0000 C CNN
	1    9850 4350
	1    0    0    -1  
$EndComp
Text Label 5650 5150 0    60   ~ 0
usart1_tx
Text Label 5650 5050 0    60   ~ 0
usart1_rx
Text Label 2000 3750 1    60   ~ 0
gnd
$Comp
L C C2
U 1 1 5131094B
P 2000 4050
F 0 "C2" H 2050 4150 50  0000 L CNN
F 1 "22p" H 2050 3950 50  0000 L CNN
	1    2000 4050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 51310939
P 1400 4050
F 0 "C1" H 1450 4150 50  0000 L CNN
F 1 "22p" H 1450 3950 50  0000 L CNN
	1    1400 4050
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 51310900
P 1700 4500
F 0 "X1" H 1700 4650 60  0000 C CNN
F 1 "8MHz" H 1700 4350 60  0000 C CNN
	1    1700 4500
	1    0    0    -1  
$EndComp
Text Label 9500 3600 2    60   ~ 0
boot1
Text Label 9500 3100 2    60   ~ 0
boot0
$Comp
L CONN_3 K2
U 1 1 51310544
P 9850 3600
F 0 "K2" V 9800 3600 50  0000 C CNN
F 1 "CONN_3" V 9900 3600 40  0000 C CNN
	1    9850 3600
	1    0    0    -1  
$EndComp
Text Label 9500 3500 2    60   ~ 0
3.3V
Text Label 9500 3700 2    60   ~ 0
gnd
Text Label 9500 3200 2    60   ~ 0
gnd
Text Label 9500 3000 2    60   ~ 0
3.3V
Text Label 4450 6450 3    60   ~ 0
boot1
Text Label 4150 3750 1    60   ~ 0
boot0
$Comp
L CONN_3 K1
U 1 1 513101F8
P 9850 3100
F 0 "K1" V 9800 3100 50  0000 C CNN
F 1 "CONN_3" V 9900 3100 40  0000 C CNN
	1    9850 3100
	1    0    0    -1  
$EndComp
Text Label 2200 5550 3    60   ~ 0
gnd
Text Label 1550 5150 2    60   ~ 0
3.3V
$Comp
L C C3
U 1 1 5130FDEB
P 2200 5350
F 0 "C3" H 2250 5450 50  0000 L CNN
F 1 "100n" H 2250 5250 50  0000 L CNN
	1    2200 5350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5130FDD2
P 1800 5150
F 0 "R1" V 1880 5150 50  0000 C CNN
F 1 "100k" V 1800 5150 50  0000 C CNN
	1    1800 5150
	0    1    1    0   
$EndComp
Text Label 2950 5250 2    60   ~ 0
gnd
Text Label 2950 5350 2    60   ~ 0
3.3V
Text Label 4750 6450 3    60   ~ 0
gnd
Text Label 3850 3750 1    60   ~ 0
gnd
Text Label 5650 4650 0    60   ~ 0
gnd
Text Label 2950 4550 2    60   ~ 0
3.3V
Text Label 4850 6450 3    60   ~ 0
3.3V
Text Label 5650 4550 0    60   ~ 0
3.3V
Text Label 3750 3750 1    60   ~ 0
3.3V
Text Label 6950 2200 2    60   ~ 0
gnd
$Comp
L CP1 C5
U 1 1 5130FB83
P 7450 1800
F 0 "C5" H 7500 1900 50  0000 L CNN
F 1 "100u" H 7500 1700 50  0000 L CNN
	1    7450 1800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 5130FB66
P 9800 1800
F 0 "C6" H 9850 1900 50  0000 L CNN
F 1 "100u" H 9850 1700 50  0000 L CNN
	1    9800 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 5130FAF5
P 10750 1700
F 0 "P6" V 10700 1700 40  0000 C CNN
F 1 "CONN_2" V 10800 1700 40  0000 C CNN
	1    10750 1700
	1    0    0    -1  
$EndComp
$Comp
L 78L33_SO8 U2
U 1 1 5130FABB
P 8650 1750
F 0 "U2" H 8400 2150 60  0000 C CNN
F 1 "78L33_SO8" H 8500 2050 60  0000 C CNN
	1    8650 1750
	1    0    0    -1  
$EndComp
Text Label 5650 5550 0    60   ~ 0
d7
Text Label 5650 5650 0    60   ~ 0
d6
Text Label 4650 6450 3    60   ~ 0
d5
Text Label 4550 6450 3    60   ~ 0
d4
Text Label 3950 3750 1    60   ~ 0
d3
Text Label 4050 3750 1    60   ~ 0
d2
Text Label 4250 3750 1    60   ~ 0
d1
Text Label 4350 3750 1    60   ~ 0
u7
Text Label 4450 3750 1    60   ~ 0
u6
Text Label 4550 3750 1    60   ~ 0
u5
Text Label 4650 3750 1    60   ~ 0
u4
Text Label 4350 6450 3    60   ~ 0
u2
Text Label 4250 6450 3    60   ~ 0
u1
Text Label 2950 5650 2    60   ~ 0
key02
Text Label 3850 6450 3    60   ~ 0
key04
Text Label 4050 6450 3    60   ~ 0
key06
Text Label 5650 5250 0    60   ~ 0
key08
Text Label 5650 4850 0    60   ~ 0
key12
Text Label 2950 5550 2    60   ~ 0
key01
Text Label 3750 6450 3    60   ~ 0
key03
Text Label 3950 6450 3    60   ~ 0
key05
Text Label 4150 6450 3    60   ~ 0
key07
Text Label 5650 5450 0    60   ~ 0
key09
Text Label 5650 4950 0    60   ~ 0
key11
$Comp
L STM32_F103C8T6 U1
U 1 1 511569E8
P 4300 5100
F 0 "U1" H 4300 5000 50  0000 C CNN
F 1 "STM32_F103C8T6" H 4300 5200 50  0000 C CNN
F 2 "MODULE" H 4300 5100 50  0001 C CNN
F 3 "DOCUMENTATION" H 4300 5100 50  0001 C CNN
	1    4300 5100
	1    0    0    -1  
$EndComp
Text Label 1100 1650 2    60   ~ 0
d1
Text Label 1100 1750 2    60   ~ 0
d2
Text Label 1100 1850 2    60   ~ 0
d3
Text Label 1100 1950 2    60   ~ 0
d4
Text Label 1100 2050 2    60   ~ 0
d5
Text Label 1100 2150 2    60   ~ 0
d6
Text Label 1100 2250 2    60   ~ 0
d7
Text Label 1900 1650 0    60   ~ 0
u1
Text Label 1900 1750 0    60   ~ 0
u2
Text Label 1900 1850 0    60   ~ 0
u3
Text Label 1900 1950 0    60   ~ 0
u4
Text Label 1900 2050 0    60   ~ 0
u5
Text Label 1900 2150 0    60   ~ 0
u6
Text Label 1900 2250 0    60   ~ 0
u7
Text Label 1900 1450 0    60   ~ 0
key12
Text Label 1900 1350 0    60   ~ 0
key10
Text Label 1900 1250 0    60   ~ 0
key08
Text Label 1900 1150 0    60   ~ 0
key06
Text Label 1900 1050 0    60   ~ 0
key04
Text Label 1900 950  0    60   ~ 0
key02
Text Label 1100 1450 2    60   ~ 0
key11
Text Label 1100 1350 2    60   ~ 0
key09
Text Label 1100 1250 2    60   ~ 0
key07
Text Label 1100 1150 2    60   ~ 0
key05
Text Label 1100 1050 2    60   ~ 0
key03
Text Label 1100 950  2    60   ~ 0
key01
$Comp
L CONN_15X2 P1
U 1 1 51152DC7
P 1500 1650
F 0 "P1" H 1500 2450 60  0000 C CNN
F 1 "CONN_15X2" V 1500 1650 50  0000 C CNN
	1    1500 1650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
