EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM358DG:LM358DG AMP_OP1
U 1 1 5EAA9A79
P 4750 2200
F 0 "AMP_OP1" H 5500 2465 50  0000 C CNN
F 1 "LM358DG" H 5500 2374 50  0000 C CNN
F 2 "LM358DG:SOIC127P600X175-8N" H 6100 2300 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/0463543" H 6100 2200 50  0001 L CNN
F 4 "LM358DG, Operational Amplifier 5 to 28V, 8-Pin SOIC" H 6100 2100 50  0001 L CNN "Description"
F 5 "1.75" H 6100 2000 50  0001 L CNN "Height"
F 6 "0463543" H 6100 1900 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/0463543" H 6100 1800 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 6100 1700 50  0001 L CNN "Manufacturer_Name"
F 9 "LM358DG" H 6100 1600 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70099597" H 6100 1500 50  0001 L CNN "Allied_Number"
	1    4750 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0137
U 1 1 5EAB66DA
P 6300 2050
F 0 "#PWR0137" H 6300 1900 50  0001 C CNN
F 1 "+5V" H 6315 2223 50  0000 C CNN
F 2 "" H 6300 2050 50  0001 C CNN
F 3 "" H 6300 2050 50  0001 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2050 6300 2200
Wire Wire Line
	6300 2200 6250 2200
$Comp
L power:+5V #PWR0138
U 1 1 5EAC4375
P 3150 2800
F 0 "#PWR0138" H 3150 2650 50  0001 C CNN
F 1 "+5V" H 3165 2973 50  0000 C CNN
F 2 "" H 3150 2800 50  0001 C CNN
F 3 "" H 3150 2800 50  0001 C CNN
	1    3150 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5EAC6665
P 3150 3050
F 0 "C16" H 3265 3096 50  0000 L CNN
F 1 "100nF" H 3265 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3188 2900 50  0001 C CNN
F 3 "~" H 3150 3050 50  0001 C CNN
	1    3150 3050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0139
U 1 1 5EAD426B
P 3150 3300
F 0 "#PWR0139" H 3150 3050 50  0001 C CNN
F 1 "Earth" H 3150 3150 50  0001 C CNN
F 2 "" H 3150 3300 50  0001 C CNN
F 3 "~" H 3150 3300 50  0001 C CNN
	1    3150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3300 3150 3200
Wire Wire Line
	3150 2900 3150 2800
Text GLabel 6350 2400 2    50   Input ~ 0
OUTPUT_B
Wire Wire Line
	6350 2400 6250 2400
Text GLabel 4650 2400 0    50   Input ~ 0
IN_A
Wire Wire Line
	4650 2400 4750 2400
Text GLabel 6350 2500 2    50   Input ~ 0
IN_B
Wire Wire Line
	6350 2500 6250 2500
Text GLabel 4650 2300 0    50   Input ~ 0
OUTPUT_A
Wire Wire Line
	4650 2300 4750 2300
Text GLabel 6400 2300 2    50   Output ~ 0
AN4
Wire Wire Line
	6400 2300 6250 2300
Text GLabel 4600 2200 0    50   Output ~ 0
AN11
Wire Wire Line
	4600 2200 4750 2200
$Comp
L power:Earth #PWR0140
U 1 1 5EB391CD
P 4650 2600
F 0 "#PWR0140" H 4650 2350 50  0001 C CNN
F 1 "Earth" H 4650 2450 50  0001 C CNN
F 2 "" H 4650 2600 50  0001 C CNN
F 3 "~" H 4650 2600 50  0001 C CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2600 4650 2500
Wire Wire Line
	4650 2500 4750 2500
$Comp
L Device:R R7
U 1 1 5EB469F5
P 2300 2450
F 0 "R7" H 2370 2496 50  0000 L CNN
F 1 "4k3" H 2370 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2230 2450 50  0001 C CNN
F 3 "~" H 2300 2450 50  0001 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5EB47B88
P 2300 3000
F 0 "R10" H 2370 3046 50  0000 L CNN
F 1 "8k2" H 2370 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2230 3000 50  0001 C CNN
F 3 "~" H 2300 3000 50  0001 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5EB4892A
P 2700 2450
F 0 "R11" H 2770 2496 50  0000 L CNN
F 1 "4k3" H 2770 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 2450 50  0001 C CNN
F 3 "~" H 2700 2450 50  0001 C CNN
	1    2700 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5EB49761
P 2700 3000
F 0 "R12" H 2770 3046 50  0000 L CNN
F 1 "8k2" H 2770 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 3000 50  0001 C CNN
F 3 "~" H 2700 3000 50  0001 C CNN
	1    2700 3000
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0141
U 1 1 5EB4A408
P 2300 3300
F 0 "#PWR0141" H 2300 3050 50  0001 C CNN
F 1 "Earth" H 2300 3150 50  0001 C CNN
F 2 "" H 2300 3300 50  0001 C CNN
F 3 "~" H 2300 3300 50  0001 C CNN
	1    2300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3300 2300 3150
Wire Wire Line
	2300 2850 2300 2700
Wire Wire Line
	2700 3300 2700 3150
Text GLabel 2350 2700 2    50   Output ~ 0
IN_A
Wire Wire Line
	2350 2700 2300 2700
Connection ~ 2300 2700
Wire Wire Line
	2300 2700 2300 2600
Text GLabel 2750 2700 2    50   Output ~ 0
IN_B
Wire Wire Line
	2700 2850 2700 2700
Wire Wire Line
	2750 2700 2700 2700
Connection ~ 2700 2700
Wire Wire Line
	2700 2700 2700 2600
Wire Wire Line
	3750 2850 3750 2700
Wire Wire Line
	3750 3300 3750 3150
$Comp
L power:Earth #PWR0143
U 1 1 5EC4039C
P 3750 3300
F 0 "#PWR0143" H 3750 3050 50  0001 C CNN
F 1 "Earth" H 3750 3150 50  0001 C CNN
F 2 "" H 3750 3300 50  0001 C CNN
F 3 "~" H 3750 3300 50  0001 C CNN
	1    3750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0144
U 1 1 5EC3F583
P 3750 2700
F 0 "#PWR0144" H 3750 2550 50  0001 C CNN
F 1 "+3.3V" H 3765 2873 50  0000 C CNN
F 2 "" H 3750 2700 50  0001 C CNN
F 3 "" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5EC3E802
P 3750 3000
F 0 "RV1" H 3681 3046 50  0000 R CNN
F 1 "POT" H 3681 2955 50  0000 R CNN
F 2 "P160KN-0QD15B10K:P160KN0QD15B10K" H 3750 3000 50  0001 C CNN
F 3 "~" H 3750 3000 50  0001 C CNN
	1    3750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0142
U 1 1 5EB4B024
P 2700 3300
F 0 "#PWR0142" H 2700 3050 50  0001 C CNN
F 1 "Earth" H 2700 3150 50  0001 C CNN
F 2 "" H 2700 3300 50  0001 C CNN
F 3 "~" H 2700 3300 50  0001 C CNN
	1    2700 3300
	1    0    0    -1  
$EndComp
Text GLabel 4050 3000 2    50   Input ~ 0
POT
Wire Wire Line
	4050 3000 3900 3000
$Comp
L Connector_Generic:Conn_01x08 J7
U 1 1 5ED1079C
P 7800 2200
F 0 "J7" H 7880 2192 50  0000 L CNN
F 1 "ALIM" H 7880 2101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7800 2200 50  0001 C CNN
F 3 "~" H 7800 2200 50  0001 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0145
U 1 1 5ED13113
P 7450 2300
F 0 "#PWR0145" H 7450 2150 50  0001 C CNN
F 1 "+3.3V" V 7465 2428 50  0000 L CNN
F 2 "" H 7450 2300 50  0001 C CNN
F 3 "" H 7450 2300 50  0001 C CNN
	1    7450 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0146
U 1 1 5ED15E12
P 7450 2500
F 0 "#PWR0146" H 7450 2350 50  0001 C CNN
F 1 "+3.3V" V 7465 2628 50  0000 L CNN
F 2 "" H 7450 2500 50  0001 C CNN
F 3 "" H 7450 2500 50  0001 C CNN
	1    7450 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0147
U 1 1 5ED16BDD
P 7450 1900
F 0 "#PWR0147" H 7450 1750 50  0001 C CNN
F 1 "+5V" V 7465 2028 50  0000 L CNN
F 2 "" H 7450 1900 50  0001 C CNN
F 3 "" H 7450 1900 50  0001 C CNN
	1    7450 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0148
U 1 1 5ED1854B
P 7450 2100
F 0 "#PWR0148" H 7450 1950 50  0001 C CNN
F 1 "+5V" V 7465 2228 50  0000 L CNN
F 2 "" H 7450 2100 50  0001 C CNN
F 3 "" H 7450 2100 50  0001 C CNN
	1    7450 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 1900 7600 1900
Wire Wire Line
	7450 2100 7600 2100
Wire Wire Line
	7450 2300 7600 2300
Wire Wire Line
	7450 2500 7600 2500
$Comp
L power:Earth #PWR0149
U 1 1 5ED55B8A
P 7500 2000
F 0 "#PWR0149" H 7500 1750 50  0001 C CNN
F 1 "Earth" H 7500 1850 50  0001 C CNN
F 2 "" H 7500 2000 50  0001 C CNN
F 3 "~" H 7500 2000 50  0001 C CNN
	1    7500 2000
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0150
U 1 1 5ED569F7
P 7500 2200
F 0 "#PWR0150" H 7500 1950 50  0001 C CNN
F 1 "Earth" H 7500 2050 50  0001 C CNN
F 2 "" H 7500 2200 50  0001 C CNN
F 3 "~" H 7500 2200 50  0001 C CNN
	1    7500 2200
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0151
U 1 1 5ED57398
P 7500 2400
F 0 "#PWR0151" H 7500 2150 50  0001 C CNN
F 1 "Earth" H 7500 2250 50  0001 C CNN
F 2 "" H 7500 2400 50  0001 C CNN
F 3 "~" H 7500 2400 50  0001 C CNN
	1    7500 2400
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0152
U 1 1 5ED57D2F
P 7500 2600
F 0 "#PWR0152" H 7500 2350 50  0001 C CNN
F 1 "Earth" H 7500 2450 50  0001 C CNN
F 2 "" H 7500 2600 50  0001 C CNN
F 3 "~" H 7500 2600 50  0001 C CNN
	1    7500 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2600 7600 2600
Wire Wire Line
	7500 2400 7600 2400
Wire Wire Line
	7500 2200 7600 2200
Wire Wire Line
	7500 2000 7600 2000
$Comp
L Device:R R13
U 1 1 5ED98968
P 3800 4000
F 0 "R13" V 4007 4000 50  0000 C CNN
F 1 "1k" V 3916 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3730 4000 50  0001 C CNN
F 3 "~" H 3800 4000 50  0001 C CNN
	1    3800 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5ED99B76
P 4750 4000
F 0 "R14" V 4543 4000 50  0000 C CNN
F 1 "3k3" V 4634 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4680 4000 50  0001 C CNN
F 3 "~" H 4750 4000 50  0001 C CNN
	1    4750 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C18
U 1 1 5ED9ABC3
P 4250 4300
F 0 "C18" H 4365 4346 50  0000 L CNN
F 1 "220nF" H 4365 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 4150 50  0001 C CNN
F 3 "~" H 4250 4300 50  0001 C CNN
	1    4250 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5ED9BC40
P 5200 4300
F 0 "C19" H 5315 4346 50  0000 L CNN
F 1 "220nF" H 5315 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5238 4150 50  0001 C CNN
F 3 "~" H 5200 4300 50  0001 C CNN
	1    5200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4000 4250 4000
Wire Wire Line
	4250 4150 4250 4000
Connection ~ 4250 4000
Wire Wire Line
	4250 4000 4600 4000
Wire Wire Line
	4900 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4150
$Comp
L power:Earth #PWR0153
U 1 1 5EDCD52C
P 4250 4600
F 0 "#PWR0153" H 4250 4350 50  0001 C CNN
F 1 "Earth" H 4250 4450 50  0001 C CNN
F 2 "" H 4250 4600 50  0001 C CNN
F 3 "~" H 4250 4600 50  0001 C CNN
	1    4250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0154
U 1 1 5EDCE28C
P 5200 4600
F 0 "#PWR0154" H 5200 4350 50  0001 C CNN
F 1 "Earth" H 5200 4450 50  0001 C CNN
F 2 "" H 5200 4600 50  0001 C CNN
F 3 "~" H 5200 4600 50  0001 C CNN
	1    5200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4600 5200 4450
Wire Wire Line
	4250 4600 4250 4450
Text GLabel 3450 4000 0    50   Input ~ 0
PWM
Wire Wire Line
	3450 4000 3650 4000
$Comp
L LM358DG:LM358DG IC2
U 1 1 5EE02152
P 5850 3800
F 0 "IC2" H 6600 4065 50  0000 C CNN
F 1 "LM358DG" H 6600 3974 50  0000 C CNN
F 2 "LM358DG:SOIC127P600X175-8N" H 7200 3900 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/0463543" H 7200 3800 50  0001 L CNN
F 4 "LM358DG, Operational Amplifier 5 to 28V, 8-Pin SOIC" H 7200 3700 50  0001 L CNN "Description"
F 5 "1.75" H 7200 3600 50  0001 L CNN "Height"
F 6 "0463543" H 7200 3500 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/0463543" H 7200 3400 50  0001 L CNN "RS Price/Stock"
F 8 "ON Semiconductor" H 7200 3300 50  0001 L CNN "Manufacturer_Name"
F 9 "LM358DG" H 7200 3200 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70099597" H 7200 3100 50  0001 L CNN "Allied_Number"
	1    5850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0155
U 1 1 5EE03C4D
P 5750 4200
F 0 "#PWR0155" H 5750 3950 50  0001 C CNN
F 1 "Earth" H 5750 4050 50  0001 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "~" H 5750 4200 50  0001 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4200 5750 4100
Wire Wire Line
	5750 4100 5850 4100
Wire Wire Line
	5850 4000 5200 4000
Connection ~ 5200 4000
NoConn ~ 7350 4100
NoConn ~ 7350 4000
NoConn ~ 7350 3900
$Comp
L power:+5V #PWR0156
U 1 1 5EE59A73
P 7450 3650
F 0 "#PWR0156" H 7450 3500 50  0001 C CNN
F 1 "+5V" H 7465 3823 50  0000 C CNN
F 2 "" H 7450 3650 50  0001 C CNN
F 3 "" H 7450 3650 50  0001 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3650 7450 3800
Wire Wire Line
	7450 3800 7350 3800
$Comp
L power:+5V #PWR0157
U 1 1 5EE6C575
P 7750 3650
F 0 "#PWR0157" H 7750 3500 50  0001 C CNN
F 1 "+5V" H 7765 3823 50  0000 C CNN
F 2 "" H 7750 3650 50  0001 C CNN
F 3 "" H 7750 3650 50  0001 C CNN
	1    7750 3650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0158
U 1 1 5EE6D4A5
P 7750 4150
F 0 "#PWR0158" H 7750 3900 50  0001 C CNN
F 1 "Earth" H 7750 4000 50  0001 C CNN
F 2 "" H 7750 4150 50  0001 C CNN
F 3 "~" H 7750 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5EE6E269
P 7750 3900
F 0 "C20" H 7865 3946 50  0000 L CNN
F 1 "100nF" H 7865 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7788 3750 50  0001 C CNN
F 3 "~" H 7750 3900 50  0001 C CNN
	1    7750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3750 7750 3650
Wire Wire Line
	7750 4050 7750 4150
$Comp
L Device:R R15
U 1 1 5EE922FE
P 4950 3300
F 0 "R15" V 4743 3300 50  0000 C CNN
F 1 "10k" V 4834 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4880 3300 50  0001 C CNN
F 3 "~" H 4950 3300 50  0001 C CNN
	1    4950 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5EE934DA
P 5500 3300
F 0 "R16" V 5293 3300 50  0000 C CNN
F 1 "5k1" V 5384 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5430 3300 50  0001 C CNN
F 3 "~" H 5500 3300 50  0001 C CNN
	1    5500 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3900 5250 3900
Wire Wire Line
	5250 3300 5100 3300
Wire Wire Line
	5350 3300 5250 3300
Connection ~ 5250 3300
$Comp
L power:Earth #PWR0159
U 1 1 5EF14559
P 4750 3400
F 0 "#PWR0159" H 4750 3150 50  0001 C CNN
F 1 "Earth" H 4750 3250 50  0001 C CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "~" H 4750 3400 50  0001 C CNN
	1    4750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3400 4750 3300
Wire Wire Line
	4750 3300 4800 3300
Wire Wire Line
	5250 3300 5250 3900
Wire Wire Line
	5850 3800 5700 3800
Wire Wire Line
	5700 3800 5700 3300
Wire Wire Line
	5650 3300 5700 3300
Connection ~ 5700 3300
Wire Wire Line
	5700 3300 5850 3300
$Comp
L power:Earth #PWR0160
U 1 1 5EF776BE
P 5800 3500
F 0 "#PWR0160" H 5800 3250 50  0001 C CNN
F 1 "Earth" H 5800 3350 50  0001 C CNN
F 2 "" H 5800 3500 50  0001 C CNN
F 3 "~" H 5800 3500 50  0001 C CNN
	1    5800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3500 5800 3400
Wire Wire Line
	5800 3400 5850 3400
$Comp
L Connector_Generic:Conn_01x15 J10
U 1 1 5F8B4BB7
P 7150 5600
F 0 "J10" H 7230 5642 50  0000 L CNN
F 1 "EXTENSÃO" H 7230 5551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 7150 5600 50  0001 C CNN
F 3 "~" H 7150 5600 50  0001 C CNN
	1    7150 5600
	1    0    0    -1  
$EndComp
Text GLabel 6850 4900 0    50   Input ~ 0
PIN_2
Text GLabel 6850 5000 0    50   Input ~ 0
PIN_3
Text GLabel 6850 5100 0    50   Input ~ 0
PIN_8
Text GLabel 6850 5200 0    50   Input ~ 0
PIN_13
Text GLabel 6850 5300 0    50   Input ~ 0
PIN_14
Text GLabel 6850 5400 0    50   Input ~ 0
PIN_15
Text GLabel 6850 5500 0    50   Input ~ 0
PIN_16
Text GLabel 6850 5600 0    50   Input ~ 0
PIN_21
Text GLabel 6850 5700 0    50   Input ~ 0
PIN_22
Text GLabel 6850 5800 0    50   Input ~ 0
PIN_36
Text GLabel 6850 5900 0    50   Input ~ 0
PIN_39
Text GLabel 6850 6000 0    50   Input ~ 0
PIN_40
Text GLabel 6850 6100 0    50   Input ~ 0
PIN_41
Text GLabel 6850 6200 0    50   Input ~ 0
PIN_45
Text GLabel 6850 6300 0    50   Input ~ 0
PIN_48
Wire Wire Line
	6850 6300 6950 6300
Wire Wire Line
	6850 6200 6950 6200
Wire Wire Line
	6850 6100 6950 6100
Wire Wire Line
	6850 6000 6950 6000
Wire Wire Line
	6850 5900 6950 5900
Wire Wire Line
	6850 5800 6950 5800
Wire Wire Line
	6850 5700 6950 5700
Wire Wire Line
	6850 5600 6950 5600
Wire Wire Line
	6850 5500 6950 5500
Wire Wire Line
	6850 5400 6950 5400
Wire Wire Line
	6850 5300 6950 5300
Wire Wire Line
	6850 5200 6950 5200
Wire Wire Line
	6850 5100 6950 5100
Wire Wire Line
	6850 5000 6950 5000
Wire Wire Line
	6850 4900 6950 4900
$Comp
L OSTTA024163:OSTTA024163 J8
U 1 1 5EC4A8FB
P 5850 3300
F 0 "J8" H 6478 3296 50  0000 L CNN
F 1 "OSTTA024163" H 6478 3205 50  0000 L CNN
F 2 "OSTTA024163:SHDR2W100P0X508_1X2_1086X900X1300P" H 6500 3400 50  0001 L CNN
F 3 "http://www.on-shore.com/wp-content/uploads/2015/09/OSTTAXX4163.pdf" H 6500 3300 50  0001 L CNN
F 4 "2 Position Wire to Board Terminal Block Horizontal with Board 0.200\" (5.08mm) Through Hole" H 6500 3200 50  0001 L CNN "Description"
F 5 "13" H 6500 3100 50  0001 L CNN "Height"
F 6 "On Shore Technology Inc." H 6500 3000 50  0001 L CNN "Manufacturer_Name"
F 7 "OSTTA024163" H 6500 2900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 6500 2800 50  0001 L CNN "Mouser Part Number"
F 9 "" H 6500 2700 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 6500 2600 50  0001 L CNN "RS Part Number"
F 11 "" H 6500 2500 50  0001 L CNN "RS Price/Stock"
	1    5850 3300
	1    0    0    -1  
$EndComp
$Comp
L OSTTA024163:OSTTA024163 J6
U 1 1 5EC4BF56
P 2800 1950
F 0 "J6" H 3428 1946 50  0000 L CNN
F 1 "OSTTA024163" H 3428 1855 50  0000 L CNN
F 2 "OSTTA024163:SHDR2W100P0X508_1X2_1086X900X1300P" H 3450 2050 50  0001 L CNN
F 3 "http://www.on-shore.com/wp-content/uploads/2015/09/OSTTAXX4163.pdf" H 3450 1950 50  0001 L CNN
F 4 "2 Position Wire to Board Terminal Block Horizontal with Board 0.200\" (5.08mm) Through Hole" H 3450 1850 50  0001 L CNN "Description"
F 5 "13" H 3450 1750 50  0001 L CNN "Height"
F 6 "On Shore Technology Inc." H 3450 1650 50  0001 L CNN "Manufacturer_Name"
F 7 "OSTTA024163" H 3450 1550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3450 1450 50  0001 L CNN "Mouser Part Number"
F 9 "" H 3450 1350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3450 1250 50  0001 L CNN "RS Part Number"
F 11 "" H 3450 1150 50  0001 L CNN "RS Price/Stock"
	1    2800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2300 2300 1950
Wire Wire Line
	2300 1950 2800 1950
Wire Wire Line
	2700 2300 2700 2050
Wire Wire Line
	2700 2050 2800 2050
$EndSCHEMATC
