Opera-3d Post-Processor                 started on 14/Jun/2024 at 11:56:32
Opera 2020 SP3 [Build 2]
(c) Copyright Dassault Systemes Ltd 1984-2019. All Rights Reserved.
Node: TUCAN-MAGPC. Processor: Intel64. System: Windows 10
Number of threads = 8. Available processors (CPU cores) = 8.
Command language initialization.
Unit of Length           : cm                | Unit of Magn Flux Density: gauss
Unit of Magnetic Field   : oersted           | Unit of Magn Scalar Pot  : oersted cm
Unit of Magn Vector Pot  : gauss cm          | Unit of Conductivity     : S/cm
Unit of Current Density  : A/cm^2            | Unit of Power            : W
Unit of Force            : N                 | Unit of Energy           : J
Unit of Electric Field   : V/cm              | Unit of Elec Flux Density: C/cm^2
Unit of Mass             : g                 | Unit of Pressure         : Pa
Unit of Charge Density   : C/cm^3            | Unit of Electric Pot     : volt
Information: opera.comi was not found in the local or home directory
**** COMMAND INPUT *** ACTIVATE FILE='C:\Users\mzhao\OPERA_MSR\pure_perturbation.op3'
Opening file for checking: C:\Users\mzhao\OPERA_MSR\pure_perturbation.op3
**** COMMAND INPUT *** LOAD
Attaching file as resident: C:\Users\mzhao\OPERA_MSR\pure_perturbation.op3
Opening database ...zhao\OPERA_MSR\pure_perturbation.op3, simulation number 1 on 14/Jun/2024 at 11:56:33
TITLE=Perturbation in vacuum, to test field created at center
Unit of Length           : m                 | Unit of Magn Flux Density: T
Unit of Magnetic Field   : A/m               | Unit of Magn Scalar Pot  : A
Unit of Magn Vector Pot  : Wb/m              | Unit of Conductivity     : S/m
Unit of Current Density  : A/m^2             | Unit of Power            : W
Unit of Force            : N                 | Unit of Energy           : J
Unit of Electric Field   : V/m               | Unit of Elec Flux Density: C/m^2
Unit of Mass             : kg                | Unit of Pressure         : Pa
Unit of Charge Density   : C/m^3             | Unit of Electric Pot     : volt
**** COMMAND INPUT *** SELECT ACTION=DEFAULT
**** COMMAND INPUT *** SELECT ACTION=SELECT OPTION=SURFACES
**** COMMAND INPUT *** THREED OPTION=REFRESH
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** LINE  BUFFERNAME='Line' X1=0 X2=X1 Y1=0 Z1=0 Z2=Z1 Y2=3 NP=100
**** COMMAND INPUT *** DATALINE OPTION=CREATE BUFFERNAME='Line' MINX=* MAXX=* NAME='NewLine' XCOMPONENT=y YCOMPONENT=Bx INTERPOLATION=LINEAR GRAPH='Default'
Integral: -0.391175
Maximum: 5.53938 (X at maximum: 0)
Minimum: -1.51848 (X at minimum: 0.09)
**** COMMAND INPUT ***
**** COMMAND INPUT *** BUFFER NAME='Line' OPTION=SWITCH
**** COMMAND INPUT ***
**** COMMAND INPUT *** LINE  BUFFERNAME='Line' X1=0 X2=X1 Y1=0 Z1=0 Z2=Z1 Y2=3 NP=200
**** COMMAND INPUT *** DATALINE OPTION=CREATE BUFFERNAME='Line' MINX=* MAXX=* NAME='NewLine_1' XCOMPONENT=y YCOMPONENT=Bx INTERPOLATION=LINEAR GRAPH='Default'
Integral: -0.387518
Maximum: 5.53938 (X at maximum: 0)
Minimum: -1.51848 (X at minimum: 0.09)
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT ACTION=SELECT  OPTION=SURFACES ACCURACY=0 SYMMETRY=None
**** COMMAND INPUT *** THREED OPTION=REFRESH
**** COMMAND INPUT ***
**** COMMAND INPUT *** CONDUCTOR ACTION=LIST
1 conductor:
Dimensions in [m]

Conductor 1: STRAIGHT
Local coordinate system 1 origin: 0.0 0.0 0.0
Local coordinate system 1 angles: 0.0 0.0 0.0
Local coordinate system 2 origin: 0.0 0.0 -2.75
Local coordinate system 2 angles: 0.0 0.0 0.0
Cross section: 0.01 0.01
Length: 5.5
Biot-Savart conductor
Current Density: 88.0, at time=0.0, 8.8E+09 [A/m^2], Drive label: 'PERTURBATION'
Total current: 8.8E-03, at time=0.0, 880000.0 [A]
Rotational Symmetry 1
Reflection codes: 0 0 0
Overall symmetry: 1
Flux density tolerance: 0.0 [T]
(Using default tolerance of 1.0E-04 [T])
Approximate volume: 5.5E-04

Total volume of 1 conductors: 5.5E-04
**** COMMAND INPUT ***
Opera-3d Post-Processor                complete on 14/Jun/2024 at 12:04:48
                                                00:08:16.16 (00:00:16.04 cp)
