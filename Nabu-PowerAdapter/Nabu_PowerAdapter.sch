EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Nabu Power Adapter"
Date "2023-08-08"
Rev "1"
Comp "Atkelar"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 648A4F7C
P 3625 3350
F 0 "J1" H 3733 3731 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3733 3640 50  0001 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_6-G-3.81_1x06_P3.81mm_Vertical" H 3625 3350 50  0001 C CNN
F 3 "~" H 3625 3350 50  0001 C CNN
	1    3625 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 648ABD29
P 5550 3125
F 0 "J4" H 5630 3117 50  0000 L CNN
F 1 "MB" H 5630 3026 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 5550 3125 50  0001 C CNN
F 3 "~" H 5550 3125 50  0001 C CNN
	1    5550 3125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 648ABFDD
P 5550 3650
F 0 "J3" H 5630 3642 50  0000 L CNN
F 1 "MB" H 5630 3551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 5550 3650 50  0001 C CNN
F 3 "~" H 5550 3650 50  0001 C CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 648AC4BD
P 5550 4150
F 0 "J2" H 5630 4142 50  0000 L CNN
F 1 "MB" H 5630 4051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 5550 4150 50  0001 C CNN
F 3 "~" H 5550 4150 50  0001 C CNN
	1    5550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 3150 3950 3150
Wire Wire Line
	3950 3150 3950 3250
Wire Wire Line
	3950 3250 3825 3250
Wire Wire Line
	3950 3150 4950 3150
Wire Wire Line
	4950 3150 4950 3325
Wire Wire Line
	4950 3325 5175 3325
Connection ~ 3950 3150
Wire Wire Line
	3825 3350 3950 3350
Wire Wire Line
	3950 3350 3950 3450
Wire Wire Line
	3950 3450 3825 3450
Wire Wire Line
	3950 3350 4650 3350
Wire Wire Line
	4650 3350 4650 3550
Wire Wire Line
	4650 3550 5225 3550
Connection ~ 3950 3350
Wire Wire Line
	5225 3550 5225 3225
Wire Wire Line
	5225 3225 5350 3225
Wire Wire Line
	5225 3550 5225 3750
Wire Wire Line
	5225 3750 5350 3750
Connection ~ 5225 3550
Wire Wire Line
	5225 3750 5225 4250
Wire Wire Line
	5225 4250 5350 4250
Connection ~ 5225 3750
Wire Wire Line
	5175 3325 5175 3850
Wire Wire Line
	5175 4350 5350 4350
Connection ~ 5175 3325
Wire Wire Line
	5175 3325 5350 3325
Wire Wire Line
	5350 3850 5175 3850
Connection ~ 5175 3850
Wire Wire Line
	5175 3850 5175 4350
Wire Wire Line
	3825 3650 5125 3650
Wire Wire Line
	5125 3650 5125 4150
Wire Wire Line
	5125 4150 5350 4150
Wire Wire Line
	5125 3650 5350 3650
Connection ~ 5125 3650
Wire Wire Line
	5125 3650 5125 3125
Wire Wire Line
	5125 3125 5350 3125
Wire Wire Line
	3825 3550 4475 3550
Wire Wire Line
	4475 3550 4475 3450
Wire Wire Line
	4475 3450 5050 3450
Wire Wire Line
	5050 3450 5050 3025
Wire Wire Line
	5050 3025 5350 3025
Wire Wire Line
	5050 3450 5350 3450
Wire Wire Line
	5350 3450 5350 3550
Connection ~ 5050 3450
Wire Wire Line
	5050 3450 5050 4050
Wire Wire Line
	5050 4050 5350 4050
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 648B0583
P 5550 2625
F 0 "J5" H 5630 2617 50  0000 L CNN
F 1 "Fan" H 5630 2526 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 2625 50  0001 C CNN
F 3 "~" H 5550 2625 50  0001 C CNN
	1    5550 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 2725 5225 3225
Wire Wire Line
	5225 2725 5350 2725
Connection ~ 5225 3225
Wire Wire Line
	5350 2625 5125 2625
Wire Wire Line
	5125 2625 5125 3125
Connection ~ 5125 3125
Text Notes 3450 4700 0    50   ~ 0
The Adapter is routed for a model "TOP 60522" open frame PSU.
$EndSCHEMATC
