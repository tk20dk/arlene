EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Arlene"
Date "2020-11-20"
Rev "v1.0"
Comp "www.2-0.dk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 5B672C47
P 6000 1550
AR Path="/5B48B53E/5B672C47" Ref="R?"  Part="1" 
AR Path="/5B672C47" Ref="R?"  Part="1" 
AR Path="/5B672380/5B672C47" Ref="R?"  Part="1" 
AR Path="/5B673A47/5B672C47" Ref="R?"  Part="1" 
AR Path="/5BFC14B8/5B672C47" Ref="R10"  Part="1" 
F 0 "R10" H 6100 1550 50  0000 C CNN
F 1 "100k" V 6000 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5930 1550 50  0001 C CNN
F 3 "~" H 6000 1550 50  0001 C CNN
	1    6000 1550
	1    0    0    -1  
$EndComp
Text GLabel 6550 5000 2    50   BiDi ~ 0
swdio
Text GLabel 6550 5100 2    50   Input ~ 0
swclk
$Comp
L Device:C C?
U 1 1 5B672C50
P 5150 1550
AR Path="/5B48B53E/5B672C50" Ref="C?"  Part="1" 
AR Path="/5B672C50" Ref="C?"  Part="1" 
AR Path="/5B672380/5B672C50" Ref="C?"  Part="1" 
AR Path="/5B673A47/5B672C50" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5B672C50" Ref="C15"  Part="1" 
F 0 "C15" H 5265 1596 50  0000 L CNN
F 1 "100n" H 5265 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 1400 50  0001 C CNN
F 3 "~" H 5150 1550 50  0001 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B672C57
P 5600 1550
AR Path="/5B48B53E/5B672C57" Ref="C?"  Part="1" 
AR Path="/5B672C57" Ref="C?"  Part="1" 
AR Path="/5B672380/5B672C57" Ref="C?"  Part="1" 
AR Path="/5B673A47/5B672C57" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5B672C57" Ref="C16"  Part="1" 
F 0 "C16" H 5715 1596 50  0000 L CNN
F 1 "100n" H 5715 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5638 1400 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B672C65
P 6350 1550
AR Path="/5B48B53E/5B672C65" Ref="C?"  Part="1" 
AR Path="/5B672C65" Ref="C?"  Part="1" 
AR Path="/5B672380/5B672C65" Ref="C?"  Part="1" 
AR Path="/5B673A47/5B672C65" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5B672C65" Ref="C17"  Part="1" 
F 0 "C17" H 6465 1596 50  0000 L CNN
F 1 "100n" H 6465 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6388 1400 50  0001 C CNN
F 3 "~" H 6350 1550 50  0001 C CNN
	1    6350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B672C6C
P 5150 1700
AR Path="/5B48B53E/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5B672C6C" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5B672C6C" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5150 1450 50  0001 C CNN
F 1 "GND" H 5155 1527 50  0000 C CNN
F 2 "" H 5150 1700 50  0001 C CNN
F 3 "" H 5150 1700 50  0001 C CNN
	1    5150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5B672C72
P 5150 1400
AR Path="/5B48B53E/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5B672C72" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5B672C72" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 5150 1250 50  0001 C CNN
F 1 "+3V3" H 5165 1573 50  0000 C CNN
F 2 "" H 5150 1400 50  0001 C CNN
F 3 "" H 5150 1400 50  0001 C CNN
	1    5150 1400
	1    0    0    -1  
$EndComp
Text GLabel 6550 4700 2    50   Input ~ 0
uart_rx
Text GLabel 6550 4600 2    50   Output ~ 0
uart_tx
$Comp
L power:GND #PWR?
U 1 1 5B672D09
P 6000 1700
AR Path="/5B48B53E/5B672D09" Ref="#PWR?"  Part="1" 
AR Path="/5B672D09" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5B672D09" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5B672D09" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5B672D09" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 6000 1450 50  0001 C CNN
F 1 "GND" H 6000 1550 50  0000 C CNN
F 2 "" H 6000 1700 50  0001 C CNN
F 3 "" H 6000 1700 50  0001 C CNN
	1    6000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B672D0F
P 6350 1700
AR Path="/5B48B53E/5B672D0F" Ref="#PWR?"  Part="1" 
AR Path="/5B672D0F" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5B672D0F" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5B672D0F" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5B672D0F" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 6350 1450 50  0001 C CNN
F 1 "GND" H 6350 1550 50  0000 C CNN
F 2 "" H 6350 1700 50  0001 C CNN
F 3 "" H 6350 1700 50  0001 C CNN
	1    6350 1700
	1    0    0    -1  
$EndComp
Text GLabel 6000 1400 1    50   BiDi ~ 0
boot0
Text GLabel 6350 1400 1    50   BiDi ~ 0
nrst
Text GLabel 5250 2600 0    50   BiDi ~ 0
nrst
Text GLabel 5250 2800 0    50   BiDi ~ 0
boot0
Text GLabel 6550 3900 2    50   Input ~ 0
adc_voltage
Text GLabel 6550 3800 2    50   Input ~ 0
adc_current
Text GLabel 6550 3700 2    50   Input ~ 0
adc_heater_temp
Text GLabel 6550 4000 2    50   Input ~ 0
adc_thermistor_temp
Text GLabel 6550 4200 2    50   Output ~ 0
pwm_heater
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J3
U 1 1 5BFD7E71
P 8400 3350
F 0 "J3" H 8450 3667 50  0000 C CNN
F 1 "Debug" H 8450 3576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 8400 3350 50  0001 C CNN
F 3 "~" H 8400 3350 50  0001 C CNN
	1    8400 3350
	1    0    0    -1  
$EndComp
Text GLabel 8700 3350 2    50   Output ~ 0
uart_rx
Text GLabel 8700 3250 2    50   Input ~ 0
uart_tx
Text GLabel 8200 3350 0    50   Input ~ 0
swclk
Text GLabel 8200 3250 0    50   BiDi ~ 0
swdio
$Comp
L power:+3V3 #PWR?
U 1 1 5BFD821F
P 8700 3550
AR Path="/5B48B53E/5BFD821F" Ref="#PWR?"  Part="1" 
AR Path="/5BFD821F" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5BFD821F" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5BFD821F" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5BFD821F" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 8700 3400 50  0001 C CNN
F 1 "+3V3" V 8700 3750 50  0000 C CNN
F 2 "" H 8700 3550 50  0001 C CNN
F 3 "" H 8700 3550 50  0001 C CNN
	1    8700 3550
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BFD82B6
P 8200 3550
AR Path="/5B48B53E/5BFD82B6" Ref="#PWR?"  Part="1" 
AR Path="/5BFD82B6" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5BFD82B6" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5BFD82B6" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5BFD82B6" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 8200 3400 50  0001 C CNN
F 1 "+3V3" V 8200 3750 50  0000 C CNN
F 2 "" H 8200 3550 50  0001 C CNN
F 3 "" H 8200 3550 50  0001 C CNN
	1    8200 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BFD8375
P 8700 3450
AR Path="/5B48B53E/5BFD8375" Ref="#PWR?"  Part="1" 
AR Path="/5BFD8375" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5BFD8375" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5BFD8375" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5BFD8375" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 8700 3200 50  0001 C CNN
F 1 "GND" V 8700 3250 50  0000 C CNN
F 2 "" H 8700 3450 50  0001 C CNN
F 3 "" H 8700 3450 50  0001 C CNN
	1    8700 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BFD845C
P 8200 3450
AR Path="/5B48B53E/5BFD845C" Ref="#PWR?"  Part="1" 
AR Path="/5BFD845C" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5BFD845C" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5BFD845C" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5BFD845C" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 8200 3200 50  0001 C CNN
F 1 "GND" V 8200 3250 50  0000 C CNN
F 2 "" H 8200 3450 50  0001 C CNN
F 3 "" H 8200 3450 50  0001 C CNN
	1    8200 3450
	0    1    1    0   
$EndComp
Text GLabel 5250 4300 0    50   BiDi ~ 0
i2c_scl
Text GLabel 5250 4400 0    50   BiDi ~ 0
i2c_sda
Text GLabel 6550 4400 2    50   Input ~ 0
enc_switch
Text GLabel 5250 5000 0    50   Input ~ 0
enc_a
Text GLabel 5250 4900 0    50   Input ~ 0
enc_b
Text GLabel 6550 4100 2    50   Input ~ 0
handle_switch
$Comp
L power:GND #PWR?
U 1 1 5DBC6FBC
P 5900 5450
AR Path="/5B48B53E/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBC6FBC" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBC6FBC" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 5900 5200 50  0001 C CNN
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
AR Path="/5BFC14B8/5DBC93CA" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 5950 2200 50  0001 C CNN
F 1 "+3V3" H 5965 2523 50  0000 C CNN
F 2 "" H 5950 2350 50  0001 C CNN
F 3 "" H 5950 2350 50  0001 C CNN
	1    5950 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBE03FE
P 8350 4650
AR Path="/5B48B53E/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE03FE" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE03FE" Ref="#PWR023"  Part="1" 
AR Path="/5BFC150C/5DBE03FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 8350 4400 50  0001 C CNN
F 1 "GND" H 8355 4477 50  0000 C CNN
F 2 "" H 8350 4650 50  0001 C CNN
F 3 "" H 8350 4650 50  0001 C CNN
	1    8350 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 5DBE0404
P 8450 4350
AR Path="/5BFC150C/5DBE0404" Ref="SW?"  Part="1" 
AR Path="/5BFC14B8/5DBE0404" Ref="SW1"  Part="1" 
F 0 "SW1" V 8404 4580 50  0000 L CNN
F 1 "Encoder" V 8495 4580 50  0000 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 8300 4510 50  0001 C CNN
F 3 "~" H 8450 4610 50  0001 C CNN
	1    8450 4350
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5DBE040A
P 8450 2750
AR Path="/5BFC150C/5DBE040A" Ref="J?"  Part="1" 
AR Path="/5BFC14B8/5DBE040A" Ref="J2"  Part="1" 
F 0 "J2" H 8450 2300 50  0000 C CNN
F 1 "Display" H 8450 2400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8450 2750 50  0001 C CNN
F 3 "~" H 8450 2750 50  0001 C CNN
	1    8450 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DBE0410
P 8450 4050
AR Path="/5B48B53E/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE0410" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE0410" Ref="#PWR024"  Part="1" 
AR Path="/5BFC150C/5DBE0410" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 8450 3800 50  0001 C CNN
F 1 "GND" V 8455 3877 50  0000 C CNN
F 2 "" H 8450 4050 50  0001 C CNN
F 3 "" H 8450 4050 50  0001 C CNN
	1    8450 4050
	-1   0    0    1   
$EndComp
Text GLabel 8550 4650 3    50   Output ~ 0
enc_switch
Text GLabel 8550 4050 1    50   Output ~ 0
enc_a
Text GLabel 8350 4050 1    50   Output ~ 0
enc_b
$Comp
L power:GND #PWR?
U 1 1 5DBE0419
P 8650 2750
AR Path="/5B48B53E/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE0419" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE0419" Ref="#PWR027"  Part="1" 
AR Path="/5BFC150C/5DBE0419" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 8650 2500 50  0001 C CNN
F 1 "GND" V 8655 2577 50  0000 C CNN
F 2 "" H 8650 2750 50  0001 C CNN
F 3 "" H 8650 2750 50  0001 C CNN
	1    8650 2750
	0    -1   -1   0   
$EndComp
Text GLabel 8650 2550 2    50   BiDi ~ 0
i2c_sda
Text GLabel 8650 2650 2    50   Input ~ 0
i2c_scl
$Comp
L Device:R R?
U 1 1 5DBE0427
P 3500 1550
AR Path="/5BFC150C/5DBE0427" Ref="R?"  Part="1" 
AR Path="/5BFC14B8/5DBE0427" Ref="R6"  Part="1" 
F 0 "R6" H 3570 1596 50  0000 L CNN
F 1 "4k7" H 3570 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 1550 50  0001 C CNN
F 3 "~" H 3500 1550 50  0001 C CNN
	1    3500 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DBE042D
P 3200 1550
AR Path="/5BFC150C/5DBE042D" Ref="R?"  Part="1" 
AR Path="/5BFC14B8/5DBE042D" Ref="R7"  Part="1" 
F 0 "R7" H 3270 1596 50  0000 L CNN
F 1 "4k7" H 3270 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 1550 50  0001 C CNN
F 3 "~" H 3200 1550 50  0001 C CNN
	1    3200 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5DBE0433
P 4700 1550
AR Path="/5BFC150C/5DBE0433" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5DBE0433" Ref="C14"  Part="1" 
F 0 "C14" H 4815 1596 50  0000 L CNN
F 1 "100n" H 4815 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4738 1400 50  0001 C CNN
F 3 "~" H 4700 1550 50  0001 C CNN
	1    4700 1550
	1    0    0    -1  
$EndComp
Text GLabel 3500 1700 3    50   Input ~ 0
i2c_scl
Text GLabel 3200 1700 3    50   BiDi ~ 0
i2c_sda
$Comp
L power:GND #PWR?
U 1 1 5DBE0474
P 4700 1700
AR Path="/5B48B53E/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DBE0474" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DBE0474" Ref="#PWR031"  Part="1" 
AR Path="/5BFC150C/5DBE0474" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 4700 1450 50  0001 C CNN
F 1 "GND" H 4705 1527 50  0000 C CNN
F 2 "" H 4700 1700 50  0001 C CNN
F 3 "" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC49880
P 9450 3250
AR Path="/5BFC148C/5DC49880" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DC49880" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 9450 3000 50  0001 C CNN
F 1 "GND" H 9455 3077 50  0000 C CNN
F 2 "" H 9450 3250 50  0001 C CNN
F 3 "" H 9450 3250 50  0001 C CNN
	1    9450 3250
	0    1    1    0   
$EndComp
Text GLabel 10150 3050 2    50   Input ~ 0
led1_red
Text GLabel 10150 3250 2    50   Input ~ 0
led1_green
$Comp
L Mechanical:MountingHole H1
U 1 1 5DB6640A
P 9850 1200
F 0 "H1" H 9950 1246 50  0000 L CNN
F 1 "MountingHole" H 9950 1155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 9850 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DB66B46
P 9850 1400
F 0 "H2" H 9950 1446 50  0000 L CNN
F 1 "MountingHole" H 9950 1355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 9850 1400 50  0001 C CNN
F 3 "~" H 9850 1400 50  0001 C CNN
	1    9850 1400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DB66DEC
P 9850 1600
F 0 "H3" H 9950 1646 50  0000 L CNN
F 1 "MountingHole" H 9950 1555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 9850 1600 50  0001 C CNN
F 3 "~" H 9850 1600 50  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5DB67062
P 9850 1800
F 0 "H4" H 9950 1846 50  0000 L CNN
F 1 "MountingHole" H 9950 1755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 9850 1800 50  0001 C CNN
F 3 "~" H 9850 1800 50  0001 C CNN
	1    9850 1800
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
NoConn ~ 5250 4600
NoConn ~ 5250 4500
NoConn ~ 5250 4800
NoConn ~ 5250 3900
NoConn ~ 5250 3800
NoConn ~ 5250 4200
NoConn ~ 5250 3700
NoConn ~ 5250 3500
NoConn ~ 5250 3400
NoConn ~ 5250 3300
NoConn ~ 5250 3100
NoConn ~ 5250 3000
$Comp
L power:+3V3 #PWR?
U 1 1 5DFF4CA1
P 5600 1400
AR Path="/5B48B53E/5DFF4CA1" Ref="#PWR?"  Part="1" 
AR Path="/5DFF4CA1" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF4CA1" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF4CA1" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF4CA1" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 5600 1250 50  0001 C CNN
F 1 "+3V3" H 5615 1573 50  0000 C CNN
F 2 "" H 5600 1400 50  0001 C CNN
F 3 "" H 5600 1400 50  0001 C CNN
	1    5600 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF4CD8
P 5600 1700
AR Path="/5B48B53E/5DFF4CD8" Ref="#PWR?"  Part="1" 
AR Path="/5DFF4CD8" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF4CD8" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF4CD8" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF4CD8" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 5600 1450 50  0001 C CNN
F 1 "GND" H 5605 1527 50  0000 C CNN
F 2 "" H 5600 1700 50  0001 C CNN
F 3 "" H 5600 1700 50  0001 C CNN
	1    5600 1700
	1    0    0    -1  
$EndComp
Text GLabel 6550 4900 2    50   BiDi ~ 0
usb_dp
Text GLabel 6550 4800 2    50   BiDi ~ 0
usb_dm
Text GLabel 6550 5200 2    50   Output ~ 0
led1_red
Text GLabel 5250 4000 0    50   Output ~ 0
led1_green
Text GLabel 5250 4100 0    50   Output ~ 0
led1_blue
Text GLabel 6550 4300 2    50   Output ~ 0
hmi_buzzer
$Comp
L Device:LED_CRGB D3
U 1 1 5DFEF43C
P 9650 3250
F 0 "D3" H 9650 3747 50  0000 C CNN
F 1 "LED_CRGB" H 9650 3656 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9650 3200 50  0001 C CNN
F 3 "~" H 9650 3200 50  0001 C CNN
	1    9650 3250
	1    0    0    -1  
$EndComp
Text GLabel 10150 3450 2    50   Input ~ 0
led1_blue
Text GLabel 3350 2800 2    50   Output ~ 0
usb_vbus
Text GLabel 3450 3400 2    50   BiDi ~ 0
usb_dm
Text GLabel 3450 3500 2    50   BiDi ~ 0
usb_dp
$Comp
L power:GND #PWR?
U 1 1 5DFF0B64
P 2450 4300
AR Path="/5B48B53E/5DFF0B64" Ref="#PWR?"  Part="1" 
AR Path="/5DFF0B64" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF0B64" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF0B64" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF0B64" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2450 4050 50  0001 C CNN
F 1 "GND" V 2450 4100 50  0000 C CNN
F 2 "" H 2450 4300 50  0001 C CNN
F 3 "" H 2450 4300 50  0001 C CNN
	1    2450 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DFF161A
P 3500 3100
F 0 "R1" V 3400 3100 50  0000 C CNN
F 1 "5k1" V 3500 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 3100 50  0001 C CNN
F 3 "~" H 3500 3100 50  0001 C CNN
	1    3500 3100
	0    1    -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DFF1671
P 3500 3000
F 0 "R2" V 3600 3000 50  0000 C CNN
F 1 "5k1" V 3500 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 3000 50  0001 C CNN
F 3 "~" H 3500 3000 50  0001 C CNN
	1    3500 3000
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF16AB
P 3650 3100
AR Path="/5B48B53E/5DFF16AB" Ref="#PWR?"  Part="1" 
AR Path="/5DFF16AB" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF16AB" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF16AB" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF16AB" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 3650 2850 50  0001 C CNN
F 1 "GND" V 3650 2900 50  0000 C CNN
F 2 "" H 3650 3100 50  0001 C CNN
F 3 "" H 3650 3100 50  0001 C CNN
	1    3650 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF16DC
P 3650 3000
AR Path="/5B48B53E/5DFF16DC" Ref="#PWR?"  Part="1" 
AR Path="/5DFF16DC" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF16DC" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF16DC" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF16DC" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 3650 2750 50  0001 C CNN
F 1 "GND" V 3650 2800 50  0000 C CNN
F 2 "" H 3650 3000 50  0001 C CNN
F 3 "" H 3650 3000 50  0001 C CNN
	1    3650 3000
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 4000
NoConn ~ 3350 3900
$Comp
L Power_Protection:SRV05-4 U6
U 1 1 5DFF32A7
P 2750 5900
F 0 "U6" H 2950 6450 50  0000 C CNN
F 1 "SRV05-4" H 3050 6350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3450 5450 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/SRV05-4-D.PDF" H 2750 5900 50  0001 C CNN
	1    2750 5900
	1    0    0    -1  
$EndComp
Text GLabel 3250 5800 2    50   Input ~ 0
usb_dm
Text GLabel 3250 6000 2    50   Input ~ 0
usb_dp
Text GLabel 2250 5800 0    50   Input ~ 0
usb_dp
Text GLabel 2250 6000 0    50   Input ~ 0
usb_dm
Text GLabel 2750 5400 1    50   Input ~ 0
usb_vbus
$Comp
L power:GND #PWR?
U 1 1 5DFF353A
P 2750 6400
AR Path="/5B48B53E/5DFF353A" Ref="#PWR?"  Part="1" 
AR Path="/5DFF353A" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF353A" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF353A" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF353A" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 2750 6150 50  0001 C CNN
F 1 "GND" H 2750 6250 50  0000 C CNN
F 2 "" H 2750 6400 50  0001 C CNN
F 3 "" H 2750 6400 50  0001 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5DFF7AB3
P 9750 4800
F 0 "BZ1" H 9903 4829 50  0000 L CNN
F 1 "Buzzer" H 9903 4738 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 9725 4900 50  0001 C CNN
F 3 "~" V 9725 4900 50  0001 C CNN
	1    9750 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF7C26
P 9850 4900
AR Path="/5B48B53E/5DFF7C26" Ref="#PWR?"  Part="1" 
AR Path="/5DFF7C26" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF7C26" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF7C26" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF7C26" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 9850 4650 50  0001 C CNN
F 1 "GND" V 9850 4700 50  0000 C CNN
F 2 "" H 9850 4900 50  0001 C CNN
F 3 "" H 9850 4900 50  0001 C CNN
	1    9850 4900
	0    -1   1    0   
$EndComp
Text GLabel 9850 4700 2    50   Input ~ 0
hmi_buzzer
$Comp
L Device:C C?
U 1 1 5DFF94B5
P 4250 1550
AR Path="/5BFC150C/5DFF94B5" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5DFF94B5" Ref="C11"  Part="1" 
F 0 "C11" H 4365 1596 50  0000 L CNN
F 1 "100n" H 4365 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4288 1400 50  0001 C CNN
F 3 "~" H 4250 1550 50  0001 C CNN
	1    4250 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF94C2
P 4250 1700
AR Path="/5B48B53E/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF94C2" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF94C2" Ref="#PWR020"  Part="1" 
AR Path="/5BFC150C/5DFF94C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 4250 1450 50  0001 C CNN
F 1 "GND" H 4255 1527 50  0000 C CNN
F 2 "" H 4250 1700 50  0001 C CNN
F 3 "" H 4250 1700 50  0001 C CNN
	1    4250 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFF9AA4
P 4700 1400
AR Path="/5B48B53E/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF9AA4" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF9AA4" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4700 1250 50  0001 C CNN
F 1 "+3V3" H 4715 1573 50  0000 C CNN
F 2 "" H 4700 1400 50  0001 C CNN
F 3 "" H 4700 1400 50  0001 C CNN
	1    4700 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFF9ADB
P 4250 1400
AR Path="/5B48B53E/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF9ADB" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF9ADB" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4250 1250 50  0001 C CNN
F 1 "+3V3" H 4265 1573 50  0000 C CNN
F 2 "" H 4250 1400 50  0001 C CNN
F 3 "" H 4250 1400 50  0001 C CNN
	1    4250 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DFF0830
P 3800 1550
AR Path="/5BFC150C/5DFF0830" Ref="C?"  Part="1" 
AR Path="/5BFC14B8/5DFF0830" Ref="C12"  Part="1" 
F 0 "C12" H 3915 1596 50  0000 L CNN
F 1 "100n" H 3915 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3838 1400 50  0001 C CNN
F 3 "~" H 3800 1550 50  0001 C CNN
	1    3800 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFF0837
P 3800 1700
AR Path="/5B48B53E/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF0837" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF0837" Ref="#PWR072"  Part="1" 
AR Path="/5BFC150C/5DFF0837" Ref="#PWR?"  Part="1" 
F 0 "#PWR072" H 3800 1450 50  0001 C CNN
F 1 "GND" H 3805 1527 50  0000 C CNN
F 2 "" H 3800 1700 50  0001 C CNN
F 3 "" H 3800 1700 50  0001 C CNN
	1    3800 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFF083D
P 3800 1400
AR Path="/5B48B53E/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFF083D" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF083D" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 3800 1250 50  0001 C CNN
F 1 "+3V3" H 3815 1573 50  0000 C CNN
F 2 "" H 3800 1400 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
Text GLabel 5250 5100 0    50   Output ~ 0
led2_red
Text GLabel 5250 5200 0    50   Output ~ 0
led2_green
Text GLabel 6550 4500 2    50   Output ~ 0
led2_blue
$Comp
L power:GND #PWR?
U 1 1 5DFF3DFF
P 9450 4150
AR Path="/5BFC148C/5DFF3DFF" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFF3DFF" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 9450 3900 50  0001 C CNN
F 1 "GND" H 9455 3977 50  0000 C CNN
F 2 "" H 9450 4150 50  0001 C CNN
F 3 "" H 9450 4150 50  0001 C CNN
	1    9450 4150
	0    1    1    0   
$EndComp
Text GLabel 10150 3950 2    50   Input ~ 0
led2_red
Text GLabel 10150 4150 2    50   Input ~ 0
led2_green
$Comp
L Device:LED_CRGB D6
U 1 1 5DFF3E07
P 9650 4150
F 0 "D6" H 9650 4647 50  0000 C CNN
F 1 "LED_CRGB" H 9650 4556 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9650 4100 50  0001 C CNN
F 3 "~" H 9650 4100 50  0001 C CNN
	1    9650 4150
	1    0    0    -1  
$EndComp
Text GLabel 10150 4350 2    50   Input ~ 0
led2_blue
$Comp
L Device:R R3
U 1 1 5DFF4FB9
P 10000 3050
F 0 "R3" V 9900 3050 50  0000 C CNN
F 1 "R" V 10000 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 3050 50  0001 C CNN
F 3 "~" H 10000 3050 50  0001 C CNN
	1    10000 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DFF5091
P 10000 3250
F 0 "R8" V 9900 3250 50  0000 C CNN
F 1 "R" V 10000 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 3250 50  0001 C CNN
F 3 "~" H 10000 3250 50  0001 C CNN
	1    10000 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5DFF50D9
P 10000 3450
F 0 "R9" V 9900 3450 50  0000 C CNN
F 1 "R" V 10000 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 3450 50  0001 C CNN
F 3 "~" H 10000 3450 50  0001 C CNN
	1    10000 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 5DFF515D
P 10000 3950
F 0 "R32" V 9900 3950 50  0000 C CNN
F 1 "R" V 10000 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 3950 50  0001 C CNN
F 3 "~" H 10000 3950 50  0001 C CNN
	1    10000 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 5DFF51BB
P 10000 4150
F 0 "R33" V 9900 4150 50  0000 C CNN
F 1 "R" V 10000 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 4150 50  0001 C CNN
F 3 "~" H 10000 4150 50  0001 C CNN
	1    10000 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 5DFF5209
P 10000 4350
F 0 "R34" V 9900 4350 50  0000 C CNN
F 1 "R" V 10000 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 4350 50  0001 C CNN
F 3 "~" H 10000 4350 50  0001 C CNN
	1    10000 4350
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFFEBCB
P 8650 2850
AR Path="/5B48B53E/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFFEBCB" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFFEBCB" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 8650 2700 50  0001 C CNN
F 1 "+3V3" V 8650 3050 50  0000 C CNN
F 2 "" H 8650 2850 50  0001 C CNN
F 3 "" H 8650 2850 50  0001 C CNN
	1    8650 2850
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E000577
P 3500 1400
AR Path="/5B48B53E/5E000577" Ref="#PWR?"  Part="1" 
AR Path="/5E000577" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5E000577" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5E000577" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5E000577" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3500 1250 50  0001 C CNN
F 1 "+3V3" H 3515 1573 50  0000 C CNN
F 2 "" H 3500 1400 50  0001 C CNN
F 3 "" H 3500 1400 50  0001 C CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E0005BE
P 3200 1400
AR Path="/5B48B53E/5E0005BE" Ref="#PWR?"  Part="1" 
AR Path="/5E0005BE" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5E0005BE" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5E0005BE" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5E0005BE" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3200 1250 50  0001 C CNN
F 1 "+3V3" H 3215 1573 50  0000 C CNN
F 2 "" H 3200 1400 50  0001 C CNN
F 3 "" H 3200 1400 50  0001 C CNN
	1    3200 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFFDBC0
P 8750 5750
AR Path="/5B48B53E/5DFFDBC0" Ref="#PWR?"  Part="1" 
AR Path="/5DFFDBC0" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFFDBC0" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFFDBC0" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFFDBC0" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 8750 5500 50  0001 C CNN
F 1 "GND" V 8750 5550 50  0000 C CNN
F 2 "" H 8750 5750 50  0001 C CNN
F 3 "" H 8750 5750 50  0001 C CNN
	1    8750 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFFDC09
P 8250 5750
AR Path="/5B48B53E/5DFFDC09" Ref="#PWR?"  Part="1" 
AR Path="/5DFFDC09" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5DFFDC09" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5DFFDC09" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5DFFDC09" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 8250 5600 50  0001 C CNN
F 1 "+3V3" V 8250 5950 50  0000 C CNN
F 2 "" H 8250 5750 50  0001 C CNN
F 3 "" H 8250 5750 50  0001 C CNN
	1    8250 5750
	0    -1   -1   0   
$EndComp
Text GLabel 8750 5450 2    50   Output ~ 0
pwm_heater
Text GLabel 8250 5450 0    50   Input ~ 0
handle_switch
Text GLabel 8250 5550 0    50   Input ~ 0
adc_heater_temp
Text GLabel 8750 5550 2    50   Input ~ 0
adc_thermistor_temp
Text GLabel 8750 5650 2    50   Input ~ 0
adc_current
Text GLabel 8250 5650 0    50   Input ~ 0
adc_voltage
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J6
U 1 1 5DFFE882
P 8450 5550
F 0 "J6" H 8500 5867 50  0000 C CNN
F 1 "Remote" H 8500 5776 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 8450 5550 50  0001 C CNN
F 3 "~" H 8450 5550 50  0001 C CNN
	1    8450 5550
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J5
U 1 1 5FB82E7E
P 2750 3400
F 0 "J5" H 2857 4267 50  0000 C CNN
F 1 "USB-C" H 2857 4176 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_XKB_U262-16XN-4BVC11" H 2900 3400 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2900 3400 50  0001 C CNN
	1    2750 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB93748
P 2750 4300
AR Path="/5B48B53E/5FB93748" Ref="#PWR?"  Part="1" 
AR Path="/5FB93748" Ref="#PWR?"  Part="1" 
AR Path="/5B672380/5FB93748" Ref="#PWR?"  Part="1" 
AR Path="/5B673A47/5FB93748" Ref="#PWR?"  Part="1" 
AR Path="/5BFC14B8/5FB93748" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 2750 4050 50  0001 C CNN
F 1 "GND" V 2750 4100 50  0000 C CNN
F 2 "" H 2750 4300 50  0001 C CNN
F 3 "" H 2750 4300 50  0001 C CNN
	1    2750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3400 3400 3400
Wire Wire Line
	3350 3300 3400 3300
Wire Wire Line
	3400 3300 3400 3400
Connection ~ 3400 3400
Wire Wire Line
	3400 3400 3450 3400
Wire Wire Line
	3350 3500 3400 3500
Wire Wire Line
	3350 3600 3400 3600
Wire Wire Line
	3400 3600 3400 3500
Connection ~ 3400 3500
Wire Wire Line
	3400 3500 3450 3500
$EndSCHEMATC
