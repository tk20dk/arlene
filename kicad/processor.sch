EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Arlene"
Date "2021-08-05"
Rev "v1.00"
Comp "www.2-0.dk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 5B672C47
P 7050 1300
AR Path="/5B48B53E/5B672C47" Ref="R?"  Part="1" 
AR Path="/5B672C47" Ref="R?"  Part="1" 
AR Path="/5B672380/5B672C47" Ref="R?"  Part="1" 
AR Path="/5B673A47/5B672C47" Ref="R?"  Part="1" 
AR Path="/5BFC14B8/5B672C47" Ref="R3"  Part="1" 
F 0 "R3" H 7150 1300 50  0000 C CNN
F 1 "100k" V 7050 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 1300 50  0001 C CNN
F 3 "~" H 7050 1300 50  0001 C CNN
	1    7050 1300
	1    0    0    -1  
$EndComp
Text GLabel 6550 5000 2    50   BiDi ~ 0
swdio
Text GLabel 6550 5100 2    50   Input ~ 0
swclk
$Comp
L Device:C C?
U 1 1 5B672C50
P 6200 1300
AR Path="/5B48B53E/5B672C50" Ref="C?"  Part="1" 
AR Path="/5B672C50" Ref="C?"  Part="1" 
AR Path="/5B672380/5B672C50" Ref="C?"  Part="1" 
AR Path="/5B673A47/5B672C50" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5B672C50" Ref="C10"  Part="1" 
F 0 "C10" H 6315 1346 50  0000 L CNN
F 1 "100n" H 6315 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6238 1150 50  0001 C CNN
F 3 "~" H 6200 1300 50  0001 C CNN
	1    6200 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B672C65
P 6650 1300
AR Path="/5B48B53E/5B672C65" Ref="C?"  Part="1" 
AR Path="/5B672C65" Ref="C?"  Part="1" 
AR Path="/5B672380/5B672C65" Ref="C?"  Part="1" 
AR Path="/5B673A47/5B672C65" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5B672C65" Ref="C12"  Part="1" 
F 0 "C12" H 6765 1346 50  0000 L CNN
F 1 "100n" H 6765 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6688 1150 50  0001 C CNN
F 3 "~" H 6650 1300 50  0001 C CNN
	1    6650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B672C6C
P 6200 1450
AR Path="/5B48B53E/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5B672C6C" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 6200 1200 50  0001 C CNN
F 1 "GND" H 6205 1277 50  0000 C CNN
F 2 "" H 6200 1450 50  0001 C CNN
F 3 "" H 6200 1450 50  0001 C CNN
	1    6200 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5B672C72
P 6200 1150
AR Path="/5B48B53E/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5B672C72" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 6200 1000 50  0001 C CNN
F 1 "+3V3" H 6215 1323 50  0000 C CNN
F 2 "" H 6200 1150 50  0001 C CNN
F 3 "" H 6200 1150 50  0001 C CNN
	1    6200 1150
	1    0    0    -1  
$EndComp
Text GLabel 5250 4400 0    50   Input ~ 0
uart_rx
Text GLabel 7050 1150 1    50   BiDi ~ 0
boot0
Text GLabel 6650 1150 1    50   BiDi ~ 0
nrst
Text GLabel 5250 2600 0    50   BiDi ~ 0
nrst
Text GLabel 5250 2800 0    50   BiDi ~ 0
boot0
Text GLabel 6550 4000 2    50   Input ~ 0
adc_heater_voltage
Text GLabel 6550 4400 2    50   Input ~ 0
adc_heater_current
Text GLabel 6550 4200 2    50   Input ~ 0
adc_heater_temperature
Text GLabel 6550 4300 2    50   Input ~ 0
adc_handle_temperature
Text GLabel 6550 4100 2    50   Output ~ 0
pwm_heater
Text GLabel 2000 5400 0    50   BiDi ~ 0
swdio
Text GLabel 6550 5200 2    50   Input ~ 0
enc_switch
Text GLabel 5250 3400 0    50   Input ~ 0
enc_a
Text GLabel 5250 3300 0    50   Input ~ 0
enc_b
Text GLabel 5250 3700 0    50   Input ~ 0
handle_switch_in
$Comp
L power:GND #PWR?
U 1 1 5DBC6FBC
P 5900 5450
AR Path="/5B48B53E/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBC6FBC" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 5900 5200 50  0001 C CNN
F 1 "GND" H 5900 5300 50  0000 C CNN
F 2 "" H 5900 5450 50  0001 C CNN
F 3 "" H 5900 5450 50  0001 C CNN
	1    5900 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DBC93CA
P 5950 2350
AR Path="/5B48B53E/5DBC93CA" Ref="#PWR?"  Part="1" 
AR Path="/5DBC93CA" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBC93CA" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBC93CA" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBC93CA" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 5950 2200 50  0001 C CNN
F 1 "+3V3" H 5965 2523 50  0000 C CNN
F 2 "" H 5950 2350 50  0001 C CNN
F 3 "" H 5950 2350 50  0001 C CNN
	1    5950 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBE03FE
P 9000 3200
AR Path="/5B48B53E/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE03FE" Ref="#PWR031"  Part="1" 
AR Path="/5BFC150C/5DBE03FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 9000 2950 50  0001 C CNN
F 1 "GND" H 9005 3027 50  0000 C CNN
F 2 "" H 9000 3200 50  0001 C CNN
F 3 "" H 9000 3200 50  0001 C CNN
	1    9000 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5DBE0404
P 9100 2900
AR Path="/5BFC150C/5DBE0404" Ref="SW?"  Part="1" 
AR Path="/5BFC14B8/5DBE0404" Ref="SW1"  Part="1" 
F 0 "SW1" V 9054 3130 50  0000 L CNN
F 1 "Encoder" V 9145 3130 50  0000 L CNN
F 2 "arlene:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 8950 3060 50  0001 C CNN
F 3 "~" H 9100 3160 50  0001 C CNN
	1    9100 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBE0410
P 9100 2600
AR Path="/5B48B53E/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE0410" Ref="#PWR032"  Part="1" 
AR Path="/5BFC150C/5DBE0410" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 9100 2350 50  0001 C CNN
F 1 "GND" V 9100 2400 50  0000 C CNN
F 2 "" H 9100 2600 50  0001 C CNN
F 3 "" H 9100 2600 50  0001 C CNN
	1    9100 2600
	-1   0    0    1   
$EndComp
Text GLabel 9200 3250 3    50   Output ~ 0
enc_switch
Text GLabel 9200 2550 1    50   Output ~ 0
enc_a
Text GLabel 9000 2550 1    50   Output ~ 0
enc_b
$Comp
L power:GND #PWR?
U 1 1 5DBE0419
P 2500 5600
AR Path="/5B48B53E/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE0419" Ref="#PWR029"  Part="1" 
AR Path="/5BFC150C/5DBE0419" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 2500 5350 50  0001 C CNN
F 1 "GND" V 2500 5400 50  0000 C CNN
F 2 "" H 2500 5600 50  0001 C CNN
F 3 "" H 2500 5600 50  0001 C CNN
	1    2500 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DBE0433
P 5750 1300
AR Path="/5BFC150C/5DBE0433" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5DBE0433" Ref="C9"  Part="1" 
F 0 "C9" H 5865 1346 50  0000 L CNN
F 1 "100n" H 5865 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5788 1150 50  0001 C CNN
F 3 "~" H 5750 1300 50  0001 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBE0474
P 5750 1450
AR Path="/5B48B53E/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE0474" Ref="#PWR018"  Part="1" 
AR Path="/5BFC150C/5DBE0474" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 5750 1200 50  0001 C CNN
F 1 "GND" H 5755 1277 50  0000 C CNN
F 2 "" H 5750 1450 50  0001 C CNN
F 3 "" H 5750 1450 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F0:STM32F072C8Tx U3
U 1 1 5DFF0CF2
P 5950 3900
F 0 "U3" H 5900 4000 50  0000 C CNN
F 1 "STM32F072C8Tx" H 5950 3900 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 5350 2500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00090510.pdf" H 5950 3900 50  0001 C CNN
	1    5950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5400 6050 5450
Wire Wire Line
	6050 5450 5950 5450
Wire Wire Line
	5750 5400 5750 5450
Wire Wire Line
	5750 5450 5850 5450
Connection ~ 5900 5450
Wire Wire Line
	5850 5400 5850 5450
Connection ~ 5850 5450
Wire Wire Line
	5850 5450 5900 5450
Wire Wire Line
	5950 5400 5950 5450
Connection ~ 5950 5450
Wire Wire Line
	5950 5450 5900 5450
Wire Wire Line
	6150 2400 6150 2350
Wire Wire Line
	6150 2350 6050 2350
Wire Wire Line
	5750 2400 5750 2350
Wire Wire Line
	5750 2350 5850 2350
Connection ~ 5950 2350
Wire Wire Line
	5950 2400 5950 2350
Wire Wire Line
	5850 2400 5850 2350
Connection ~ 5850 2350
Wire Wire Line
	5850 2350 5950 2350
Wire Wire Line
	6050 2400 6050 2350
Connection ~ 6050 2350
Wire Wire Line
	6050 2350 5950 2350
NoConn ~ 5250 4700
NoConn ~ 5250 4800
NoConn ~ 5250 4600
NoConn ~ 5250 3900
NoConn ~ 5250 3800
NoConn ~ 5250 4200
NoConn ~ 5250 4900
Text GLabel 6550 3900 2    50   Output ~ 0
hmi_buzzer
$Comp
L Device:Buzzer BZ1
U 1 1 5DFF7AB3
P 9150 4050
F 0 "BZ1" H 9303 4079 50  0000 L CNN
F 1 "Buzzer" H 9303 3988 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 9125 4150 50  0001 C CNN
F 3 "~" V 9125 4150 50  0001 C CNN
	1    9150 4050
	-1   0    0    -1  
$EndComp
Text GLabel 9550 4150 2    50   Input ~ 0
hmi_buzzer
$Comp
L Device:C C?
U 1 1 5DFF94B5
P 5300 1300
AR Path="/5BFC150C/5DFF94B5" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5DFF94B5" Ref="C8"  Part="1" 
F 0 "C8" H 5415 1346 50  0000 L CNN
F 1 "100n" H 5415 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5338 1150 50  0001 C CNN
F 3 "~" H 5300 1300 50  0001 C CNN
	1    5300 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF94C2
P 5300 1450
AR Path="/5B48B53E/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF94C2" Ref="#PWR016"  Part="1" 
AR Path="/5BFC150C/5DFF94C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 5300 1200 50  0001 C CNN
F 1 "GND" H 5305 1277 50  0000 C CNN
F 2 "" H 5300 1450 50  0001 C CNN
F 3 "" H 5300 1450 50  0001 C CNN
	1    5300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFF9AA4
P 5750 1150
AR Path="/5B48B53E/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF9AA4" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5750 1000 50  0001 C CNN
F 1 "+3V3" H 5765 1323 50  0000 C CNN
F 2 "" H 5750 1150 50  0001 C CNN
F 3 "" H 5750 1150 50  0001 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFF9ADB
P 5300 1150
AR Path="/5B48B53E/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF9ADB" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5300 1000 50  0001 C CNN
F 1 "+3V3" H 5315 1323 50  0000 C CNN
F 2 "" H 5300 1150 50  0001 C CNN
F 3 "" H 5300 1150 50  0001 C CNN
	1    5300 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DFF0830
P 4850 1300
AR Path="/5BFC150C/5DFF0830" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5DFF0830" Ref="C7"  Part="1" 
F 0 "C7" H 4965 1346 50  0000 L CNN
F 1 "100n" H 4965 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 1150 50  0001 C CNN
F 3 "~" H 4850 1300 50  0001 C CNN
	1    4850 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF0837
P 4850 1450
AR Path="/5B48B53E/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF0837" Ref="#PWR014"  Part="1" 
AR Path="/5BFC150C/5DFF0837" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 4850 1200 50  0001 C CNN
F 1 "GND" H 4855 1277 50  0000 C CNN
F 2 "" H 4850 1450 50  0001 C CNN
F 3 "" H 4850 1450 50  0001 C CNN
	1    4850 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFF083D
P 4850 1150
AR Path="/5B48B53E/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF083D" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 4850 1000 50  0001 C CNN
F 1 "+3V3" H 4865 1323 50  0000 C CNN
F 2 "" H 4850 1150 50  0001 C CNN
F 3 "" H 4850 1150 50  0001 C CNN
	1    4850 1150
	1    0    0    -1  
$EndComp
NoConn ~ 5250 4100
NoConn ~ 5250 4500
Text GLabel 6550 4700 2    50   Output ~ 0
oled_cs
Text GLabel 5250 5200 0    50   Output ~ 0
oled_sda
Text GLabel 5250 5000 0    50   Output ~ 0
oled_sck
Text GLabel 6550 4500 2    50   Output ~ 0
oled_reset
Text GLabel 6550 4600 2    50   Output ~ 0
oled_dc
$Comp
L Connector_Generic:Conn_01x07 J1
U 1 1 6131296B
P 2250 6400
F 0 "J1" H 2168 6917 50  0000 C CNN
F 1 "Display" H 2168 6826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 2250 6400 50  0001 C CNN
F 3 "~" H 2250 6400 50  0001 C CNN
	1    2250 6400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6132B03F
P 2450 6100
AR Path="/5B48B53E/6132B03F" Ref="#PWR?"  Part="1" 
AR Path="/6132B03F" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/6132B03F" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/6132B03F" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/6132B03F" Ref="#PWR027"  Part="1" 
AR Path="/5BFC150C/6132B03F" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 2450 5850 50  0001 C CNN
F 1 "GND" V 2450 5900 50  0000 C CNN
F 2 "" H 2450 6100 50  0001 C CNN
F 3 "" H 2450 6100 50  0001 C CNN
	1    2450 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 61333F57
P 2450 6200
F 0 "#PWR028" H 2450 6050 50  0001 C CNN
F 1 "+5V" V 2450 6300 50  0000 L CNN
F 2 "" H 2450 6200 50  0001 C CNN
F 3 "" H 2450 6200 50  0001 C CNN
	1    2450 6200
	0    1    1    0   
$EndComp
Text GLabel 2450 6300 2    50   Input ~ 0
oled_sck
Text GLabel 2450 6400 2    50   Input ~ 0
oled_sda
Text GLabel 2450 6500 2    50   Input ~ 0
oled_reset
Text GLabel 2450 6600 2    50   Input ~ 0
oled_dc
Text GLabel 2450 6700 2    50   Input ~ 0
oled_cs
$Comp
L Connector:USB_C_Receptacle_USB2.0 J5
U 1 1 61083AF8
P 2300 3550
F 0 "J5" H 2407 4417 50  0000 C CNN
F 1 "USB-C" H 2407 4326 50  0000 C CNN
F 2 "arlene:usb-c_14pin_tht_vertical" H 2450 3550 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2450 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
NoConn ~ 2900 3150
NoConn ~ 2900 3250
NoConn ~ 2900 4050
NoConn ~ 2900 4150
NoConn ~ 2000 4450
$Comp
L power:GND #PWR?
U 1 1 61087103
P 2300 4450
AR Path="/5B48B53E/61087103" Ref="#PWR?"  Part="1" 
AR Path="/61087103" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/61087103" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/61087103" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/61087103" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2300 4200 50  0001 C CNN
F 1 "GND" H 2300 4300 50  0000 C CNN
F 2 "" H 2300 4450 50  0001 C CNN
F 3 "" H 2300 4450 50  0001 C CNN
	1    2300 4450
	1    0    0    -1  
$EndComp
Text GLabel 3000 3550 2    50   BiDi ~ 0
usb_dm
Text GLabel 3000 3650 2    50   BiDi ~ 0
usb_dp
Wire Wire Line
	2900 3550 2950 3550
Wire Wire Line
	2900 3650 2950 3650
Wire Wire Line
	2900 3450 2950 3450
Wire Wire Line
	2950 3450 2950 3550
Connection ~ 2950 3550
Wire Wire Line
	2950 3550 3000 3550
Wire Wire Line
	2900 3750 2950 3750
Wire Wire Line
	2950 3750 2950 3650
Connection ~ 2950 3650
Wire Wire Line
	2950 3650 3000 3650
Text GLabel 6550 4800 2    50   BiDi ~ 0
usb_dm
Text GLabel 6550 4900 2    50   BiDi ~ 0
usb_dp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFFEBCB
P 2500 5700
AR Path="/5B48B53E/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFFEBCB" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 2500 5550 50  0001 C CNN
F 1 "+3V3" V 2500 5900 50  0000 C CNN
F 2 "" H 2500 5700 50  0001 C CNN
F 3 "" H 2500 5700 50  0001 C CNN
	1    2500 5700
	0    1    1    0   
$EndComp
Text GLabel 2500 5500 2    50   Output ~ 0
uart_rx
$Comp
L power:GND #PWR?
U 1 1 61138EE9
P 2000 5600
AR Path="/5B48B53E/61138EE9" Ref="#PWR?"  Part="1" 
AR Path="/61138EE9" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/61138EE9" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/61138EE9" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/61138EE9" Ref="#PWR021"  Part="1" 
AR Path="/5BFC150C/61138EE9" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 2000 5350 50  0001 C CNN
F 1 "GND" V 2000 5400 50  0000 C CNN
F 2 "" H 2000 5600 50  0001 C CNN
F 3 "" H 2000 5600 50  0001 C CNN
	1    2000 5600
	0    1    1    0   
$EndComp
Text GLabel 2000 5700 0    50   BiDi ~ 0
boot0
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 6113E52C
P 2200 5500
F 0 "J2" H 2250 5817 50  0000 C CNN
F 1 "Debug" H 2250 5726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 2200 5500 50  0001 C CNN
F 3 "~" H 2200 5500 50  0001 C CNN
	1    2200 5500
	1    0    0    -1  
$EndComp
Text GLabel 5250 4300 0    50   Output ~ 0
uart_tx
Text GLabel 2000 5500 0    50   Output ~ 0
swclk
Text GLabel 2500 5400 2    50   Input ~ 0
uart_tx
$Comp
L Device:R R19
U 1 1 61193220
P 9450 4800
F 0 "R19" V 9550 4800 50  0000 C CNN
F 1 "1k" V 9450 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9380 4800 50  0001 C CNN
F 3 "~" H 9450 4800 50  0001 C CNN
	1    9450 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 61193FB0
P 9450 5000
F 0 "R20" V 9550 5000 50  0000 C CNN
F 1 "1k" V 9450 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9380 5000 50  0001 C CNN
F 3 "~" H 9450 5000 50  0001 C CNN
	1    9450 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 6119431A
P 9450 5200
F 0 "R21" V 9550 5200 50  0000 C CNN
F 1 "1k" V 9450 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9380 5200 50  0001 C CNN
F 3 "~" H 9450 5200 50  0001 C CNN
	1    9450 5200
	0    -1   -1   0   
$EndComp
Text GLabel 9600 5000 2    50   Input ~ 0
led_green
Text GLabel 5250 3500 0    50   Output ~ 0
led_red
Text GLabel 5250 3100 0    50   Output ~ 0
led_blue
Text GLabel 5250 3000 0    50   Output ~ 0
led_green
$Comp
L Device:LED_RCGB D3
U 1 1 6119FCA6
P 9100 5000
F 0 "D3" H 9100 5497 50  0000 C CNN
F 1 "LED_RCGB" H 9100 5406 50  0000 C CNN
F 2 "arlene:LED_D5.0mm-4_RGB" H 9100 4950 50  0001 C CNN
F 3 "~" H 9100 4950 50  0001 C CNN
	1    9100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611BAFCC
P 8900 5000
AR Path="/5B48B53E/611BAFCC" Ref="#PWR?"  Part="1" 
AR Path="/611BAFCC" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/611BAFCC" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/611BAFCC" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/611BAFCC" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 8900 4750 50  0001 C CNN
F 1 "GND" V 8900 4800 50  0000 C CNN
F 2 "" H 8900 5000 50  0001 C CNN
F 3 "" H 8900 5000 50  0001 C CNN
	1    8900 5000
	0    1    -1   0   
$EndComp
NoConn ~ 2900 2950
Text GLabel 6550 3800 2    50   Output ~ 0
hmi_buzzer
Text GLabel 6550 3700 2    50   Output ~ 0
hmi_buzzer
Text GLabel 5250 5100 0    50   Output ~ 0
oled_sda
NoConn ~ 5250 4000
$Comp
L power:+3V3 #PWR?
U 1 1 610B5B35
P 9250 3950
AR Path="/5B48B53E/610B5B35" Ref="#PWR?"  Part="1" 
AR Path="/610B5B35" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610B5B35" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610B5B35" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610B5B35" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 9250 3800 50  0001 C CNN
F 1 "+3V3" V 9250 4200 50  0000 C CNN
F 2 "" H 9250 3950 50  0001 C CNN
F 3 "" H 9250 3950 50  0001 C CNN
	1    9250 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 610B2C1C
P 8850 2450
F 0 "R7" H 8780 2404 50  0000 R CNN
F 1 "4k7" H 8780 2495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8780 2450 50  0001 C CNN
F 3 "~" H 8850 2450 50  0001 C CNN
	1    8850 2450
	1    0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 610B32F9
P 8550 2450
F 0 "C11" H 8436 2404 50  0000 R CNN
F 1 "1n" H 8436 2495 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8588 2300 50  0001 C CNN
F 3 "~" H 8550 2450 50  0001 C CNN
	1    8550 2450
	1    0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 610B8822
P 9350 2450
F 0 "R23" H 9420 2496 50  0000 L CNN
F 1 "4k7" H 9420 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9280 2450 50  0001 C CNN
F 3 "~" H 9350 2450 50  0001 C CNN
	1    9350 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 610B8CBD
P 9650 2450
F 0 "C15" H 9765 2496 50  0000 L CNN
F 1 "1n" H 9765 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9688 2300 50  0001 C CNN
F 3 "~" H 9650 2450 50  0001 C CNN
	1    9650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 610B9F63
P 9350 3350
F 0 "R24" H 9420 3396 50  0000 L CNN
F 1 "4k7" H 9420 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9280 3350 50  0001 C CNN
F 3 "~" H 9350 3350 50  0001 C CNN
	1    9350 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 610BA2EF
P 9650 3350
F 0 "C16" H 9765 3396 50  0000 L CNN
F 1 "1n" H 9765 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9688 3200 50  0001 C CNN
F 3 "~" H 9650 3350 50  0001 C CNN
	1    9650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2550 9200 2600
Wire Wire Line
	9000 2550 9000 2600
Wire Wire Line
	9200 2600 9350 2600
Connection ~ 9200 2600
Connection ~ 9350 2600
Wire Wire Line
	9350 2600 9650 2600
Wire Wire Line
	8550 2600 8850 2600
Connection ~ 9000 2600
Connection ~ 8850 2600
Wire Wire Line
	8850 2600 9000 2600
Wire Wire Line
	9200 3200 9200 3250
Wire Wire Line
	9200 3200 9350 3200
Connection ~ 9200 3200
Connection ~ 9350 3200
Wire Wire Line
	9350 3200 9650 3200
$Comp
L power:+3V3 #PWR?
U 1 1 610CA875
P 8850 2300
AR Path="/5B48B53E/610CA875" Ref="#PWR?"  Part="1" 
AR Path="/610CA875" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610CA875" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610CA875" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610CA875" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 8850 2150 50  0001 C CNN
F 1 "+3V3" H 8865 2473 50  0000 C CNN
F 2 "" H 8850 2300 50  0001 C CNN
F 3 "" H 8850 2300 50  0001 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 610CC2CF
P 9350 2300
AR Path="/5B48B53E/610CC2CF" Ref="#PWR?"  Part="1" 
AR Path="/610CC2CF" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610CC2CF" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610CC2CF" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610CC2CF" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 9350 2150 50  0001 C CNN
F 1 "+3V3" H 9365 2473 50  0000 C CNN
F 2 "" H 9350 2300 50  0001 C CNN
F 3 "" H 9350 2300 50  0001 C CNN
	1    9350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 610CC63F
P 9350 3500
AR Path="/5B48B53E/610CC63F" Ref="#PWR?"  Part="1" 
AR Path="/610CC63F" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610CC63F" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610CC63F" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610CC63F" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 9350 3350 50  0001 C CNN
F 1 "+3V3" H 9365 3673 50  0000 C CNN
F 2 "" H 9350 3500 50  0001 C CNN
F 3 "" H 9350 3500 50  0001 C CNN
	1    9350 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610CF44D
P 9650 3500
AR Path="/5B48B53E/610CF44D" Ref="#PWR?"  Part="1" 
AR Path="/610CF44D" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610CF44D" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610CF44D" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610CF44D" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 9650 3250 50  0001 C CNN
F 1 "GND" H 9650 3350 50  0000 C CNN
F 2 "" H 9650 3500 50  0001 C CNN
F 3 "" H 9650 3500 50  0001 C CNN
	1    9650 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610D1853
P 9650 2300
AR Path="/5B48B53E/610D1853" Ref="#PWR?"  Part="1" 
AR Path="/610D1853" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610D1853" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610D1853" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610D1853" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 9650 2050 50  0001 C CNN
F 1 "GND" H 9650 2150 50  0000 C CNN
F 2 "" H 9650 2300 50  0001 C CNN
F 3 "" H 9650 2300 50  0001 C CNN
	1    9650 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610D24BC
P 8550 2300
AR Path="/5B48B53E/610D24BC" Ref="#PWR?"  Part="1" 
AR Path="/610D24BC" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610D24BC" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610D24BC" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610D24BC" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 8550 2050 50  0001 C CNN
F 1 "GND" H 8550 2150 50  0000 C CNN
F 2 "" H 8550 2300 50  0001 C CNN
F 3 "" H 8550 2300 50  0001 C CNN
	1    8550 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610E6079
P 6650 1450
AR Path="/5B48B53E/610E6079" Ref="#PWR?"  Part="1" 
AR Path="/610E6079" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610E6079" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610E6079" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610E6079" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6650 1200 50  0001 C CNN
F 1 "GND" H 6655 1277 50  0000 C CNN
F 2 "" H 6650 1450 50  0001 C CNN
F 3 "" H 6650 1450 50  0001 C CNN
	1    6650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610E66FD
P 7050 1450
AR Path="/5B48B53E/610E66FD" Ref="#PWR?"  Part="1" 
AR Path="/610E66FD" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/610E66FD" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/610E66FD" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/610E66FD" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 7050 1200 50  0001 C CNN
F 1 "GND" H 7055 1277 50  0000 C CNN
F 2 "" H 7050 1450 50  0001 C CNN
F 3 "" H 7050 1450 50  0001 C CNN
	1    7050 1450
	1    0    0    -1  
$EndComp
Text GLabel 9600 5200 2    50   Input ~ 0
led_blue
Text GLabel 9600 4800 2    50   Input ~ 0
led_red
$Comp
L Device:R R25
U 1 1 610C057B
P 9400 4150
F 0 "R25" V 9500 4150 50  0000 C CNN
F 1 "100" V 9400 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 4150 50  0001 C CNN
F 3 "~" H 9400 4150 50  0001 C CNN
	1    9400 4150
	0    1    1    0   
$EndComp
$EndSCHEMATC
