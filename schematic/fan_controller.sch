EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Fan controller Cetus3D"
Date "2020-07-24"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 5F1A1AE1
P 5350 4000
F 0 "U1" H 4706 4091 50  0000 R CNN
F 1 "ATmega328P-PU" H 4706 4000 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5350 4000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5350 4000 50  0001 C CNN
F 4 "ATMEGA328-PU-ND" H 4706 3909 50  0000 R CNN "digikey"
	1    5350 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5F1A3170
P 6300 3050
F 0 "Y1" V 6254 3181 50  0000 L CNN
F 1 "16MHz" V 6345 3181 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 6300 3050 50  0001 C CNN
F 3 "~" H 6300 3050 50  0001 C CNN
	1    6300 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F1A3DFA
P 6800 2850
F 0 "C1" V 6548 2850 50  0000 C CNN
F 1 "22pF" V 6639 2850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 6838 2700 50  0001 C CNN
F 3 "~" H 6800 2850 50  0001 C CNN
	1    6800 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F1A48EC
P 6800 3250
F 0 "C2" V 6548 3250 50  0000 C CNN
F 1 "22pF" V 6639 3250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 6838 3100 50  0001 C CNN
F 3 "~" H 6800 3250 50  0001 C CNN
	1    6800 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F1A6E11
P 7200 3250
F 0 "#PWR0101" H 7200 3000 50  0001 C CNN
F 1 "GND" H 7205 3077 50  0000 C CNN
F 2 "" H 7200 3250 50  0001 C CNN
F 3 "" H 7200 3250 50  0001 C CNN
	1    7200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3250 7200 2850
$Comp
L power:GND #PWR0102
U 1 1 5F1B4726
P 5350 5500
F 0 "#PWR0102" H 5350 5250 50  0001 C CNN
F 1 "GND" H 5355 5327 50  0000 C CNN
F 2 "" H 5350 5500 50  0001 C CNN
F 3 "" H 5350 5500 50  0001 C CNN
	1    5350 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F1B53B8
P 5450 2500
F 0 "#PWR0103" H 5450 2350 50  0001 C CNN
F 1 "+5V" H 5465 2673 50  0000 C CNN
F 2 "" H 5450 2500 50  0001 C CNN
F 3 "" H 5450 2500 50  0001 C CNN
	1    5450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5F1B60FF
P 5350 2500
F 0 "#PWR0104" H 5350 2350 50  0001 C CNN
F 1 "+5V" H 5365 2673 50  0000 C CNN
F 2 "" H 5350 2500 50  0001 C CNN
F 3 "" H 5350 2500 50  0001 C CNN
	1    5350 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F1B757D
P 6900 4700
F 0 "SW1" H 6900 4985 50  0000 C CNN
F 1 "SW_Push" H 6900 4894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 6900 4900 50  0001 C CNN
F 3 "~" H 6900 4900 50  0001 C CNN
	1    6900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5F1B9091
P 7200 4300
F 0 "#PWR0105" H 7200 4150 50  0001 C CNN
F 1 "+5V" H 7215 4473 50  0000 C CNN
F 2 "" H 7200 4300 50  0001 C CNN
F 3 "" H 7200 4300 50  0001 C CNN
	1    7200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F1B9644
P 7200 4700
F 0 "#PWR0106" H 7200 4450 50  0001 C CNN
F 1 "GND" H 7205 4527 50  0000 C CNN
F 2 "" H 7200 4700 50  0001 C CNN
F 3 "" H 7200 4700 50  0001 C CNN
	1    7200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4300 7200 4300
Wire Wire Line
	5950 4800 6500 4800
Text Label 6500 4800 2    50   ~ 0
fan_pwm
Wire Wire Line
	5950 4300 6600 4300
Wire Wire Line
	5950 4200 6500 4200
Wire Wire Line
	5950 4100 6500 4100
Text Label 6500 4100 2    50   ~ 0
SDA
Text Label 6500 4200 2    50   ~ 0
SCL
Wire Wire Line
	5950 3700 6500 3700
$Comp
L power:GND #PWR0107
U 1 1 5F1C25D6
P 6650 3850
F 0 "#PWR0107" H 6650 3600 50  0001 C CNN
F 1 "GND" H 6655 3677 50  0000 C CNN
F 2 "" H 6650 3850 50  0001 C CNN
F 3 "" H 6650 3850 50  0001 C CNN
	1    6650 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5F1C2DD9
P 6650 3550
F 0 "#PWR0108" H 6650 3400 50  0001 C CNN
F 1 "+5V" H 6665 3723 50  0000 C CNN
F 2 "" H 6650 3550 50  0001 C CNN
F 3 "" H 6650 3550 50  0001 C CNN
	1    6650 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5F1C4654
P 9750 3550
F 0 "J1" H 9830 3542 50  0000 L CNN
F 1 "SH1106_OLED" H 9830 3451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 9750 3550 50  0001 C CNN
F 3 "~" H 9750 3550 50  0001 C CNN
	1    9750 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5F1CE05D
P 8950 3450
F 0 "#PWR0109" H 8950 3300 50  0001 C CNN
F 1 "+5V" H 8965 3623 50  0000 C CNN
F 2 "" H 8950 3450 50  0001 C CNN
F 3 "" H 8950 3450 50  0001 C CNN
	1    8950 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F1CE935
P 8950 3550
F 0 "#PWR0110" H 8950 3300 50  0001 C CNN
F 1 "GND" H 8955 3377 50  0000 C CNN
F 2 "" H 8950 3550 50  0001 C CNN
F 3 "" H 8950 3550 50  0001 C CNN
	1    8950 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5F1D1FA5
P 1650 3800
F 0 "J3" H 1730 3887 50  0000 L CNN
F 1 "B3B-EH-A(LF)(SN) " H 1730 3796 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 1650 3800 50  0001 C CNN
F 3 "~" H 1650 3800 50  0001 C CNN
F 4 "455-1612-ND" H 1730 3700 50  0000 L CNN "digikey"
	1    1650 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 4400 9100 4400
Text Label 9100 4400 0    50   ~ 0
fan_pwm
$Comp
L power:GND #PWR0111
U 1 1 5F1FD332
P 2800 4000
F 0 "#PWR0111" H 2800 3750 50  0001 C CNN
F 1 "GND" H 2805 3827 50  0000 C CNN
F 2 "" H 2800 4000 50  0001 C CNN
F 3 "" H 2800 4000 50  0001 C CNN
	1    2800 4000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5F1FE544
P 8800 4350
F 0 "#PWR0113" H 8800 4200 50  0001 C CNN
F 1 "+5V" H 8815 4523 50  0000 C CNN
F 2 "" H 8800 4350 50  0001 C CNN
F 3 "" H 8800 4350 50  0001 C CNN
	1    8800 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F1FEAAA
P 8800 3950
F 0 "#PWR0114" H 8800 3700 50  0001 C CNN
F 1 "GND" H 8805 3777 50  0000 C CNN
F 2 "" H 8800 3950 50  0001 C CNN
F 3 "" H 8800 3950 50  0001 C CNN
	1    8800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3700 2450 3700
Wire Wire Line
	2450 3700 2450 3600
Wire Wire Line
	2450 3600 2500 3600
Wire Wire Line
	1850 3900 2450 3900
Wire Wire Line
	2450 3900 2450 4000
Wire Wire Line
	2450 4000 2500 4000
Wire Wire Line
	9550 4100 8950 4100
Wire Wire Line
	8950 4100 8950 3950
Wire Wire Line
	8950 3950 8800 3950
Wire Wire Line
	9550 4200 8950 4200
Wire Wire Line
	8950 4200 8950 4350
Wire Wire Line
	8950 4350 8800 4350
Wire Wire Line
	5950 3400 6100 3400
Wire Wire Line
	6100 3400 6100 2850
Wire Wire Line
	6100 2850 6300 2850
Wire Wire Line
	5950 3500 6200 3500
Wire Wire Line
	6200 3500 6200 3250
Wire Wire Line
	6200 3250 6300 3250
NoConn ~ 5950 5200
NoConn ~ 5950 5100
NoConn ~ 5950 5000
NoConn ~ 5950 4900
NoConn ~ 5950 4700
NoConn ~ 5950 4600
NoConn ~ 5950 4500
NoConn ~ 5950 4000
NoConn ~ 5950 3900
NoConn ~ 5950 3800
NoConn ~ 5950 3300
NoConn ~ 5950 3200
NoConn ~ 5950 3100
NoConn ~ 5950 3000
NoConn ~ 5950 2900
NoConn ~ 5950 2800
NoConn ~ 4750 2800
NoConn ~ 1850 3800
NoConn ~ 9550 4300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F244936
P 2500 3600
F 0 "#FLG0101" H 2500 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 3773 50  0000 C CNN
F 2 "" H 2500 3600 50  0001 C CNN
F 3 "~" H 2500 3600 50  0001 C CNN
	1    2500 3600
	-1   0    0    1   
$EndComp
Connection ~ 2500 3600
Wire Wire Line
	2500 3600 2800 3600
$Comp
L power:+5V #PWR0112
U 1 1 5F1FDC94
P 2800 3600
F 0 "#PWR0112" H 2800 3450 50  0001 C CNN
F 1 "+5V" H 2815 3773 50  0000 C CNN
F 2 "" H 2800 3600 50  0001 C CNN
F 3 "" H 2800 3600 50  0001 C CNN
	1    2800 3600
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F248C9E
P 2500 4000
F 0 "#FLG0102" H 2500 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 4173 50  0000 C CNN
F 2 "" H 2500 4000 50  0001 C CNN
F 3 "~" H 2500 4000 50  0001 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
Connection ~ 2500 4000
Wire Wire Line
	2500 4000 2800 4000
$Comp
L Device:R_POT RV1
U 1 1 5F1C1CB1
P 6650 3700
F 0 "RV1" H 6580 3746 50  0000 R CNN
F 1 "1K" H 6580 3655 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_T-16H_Single_Horizontal" H 6650 3700 50  0001 C CNN
F 3 "~" H 6650 3700 50  0001 C CNN
	1    6650 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F1B6B89
P 6900 4300
F 0 "R1" V 6693 4300 50  0000 C CNN
F 1 "10K" V 6784 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6830 4300 50  0001 C CNN
F 3 "~" H 6900 4300 50  0001 C CNN
	1    6900 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3750 9050 3750
Wire Wire Line
	9550 3650 9050 3650
Wire Wire Line
	9550 3550 8950 3550
Wire Wire Line
	9550 3450 8950 3450
Text Label 9050 3750 0    50   ~ 0
SDA
Text Label 9050 3650 0    50   ~ 0
SCL
Wire Wire Line
	6950 3250 7200 3250
Connection ~ 7200 3250
Wire Wire Line
	7200 2850 6950 2850
Wire Wire Line
	6300 3200 6300 3250
Connection ~ 6300 3250
Wire Wire Line
	6300 3250 6650 3250
Wire Wire Line
	6300 2900 6300 2850
Connection ~ 6300 2850
Wire Wire Line
	6300 2850 6650 2850
Wire Wire Line
	7200 4700 7100 4700
Wire Wire Line
	6700 4700 6600 4700
Wire Wire Line
	6600 4700 6600 4300
Connection ~ 6600 4300
Wire Wire Line
	6600 4300 6750 4300
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5F1D0BD8
P 9750 4200
F 0 "J2" H 9830 4237 50  0000 L CNN
F 1 "470531000" H 9830 4146 50  0000 L CNN
F 2 "maartens_library:470531000" H 9750 4200 50  0001 C CNN
F 3 "~" H 9750 4200 50  0001 C CNN
F 4 "WM4330-ND" H 9830 4055 50  0000 L CNN "digikey"
	1    9750 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
