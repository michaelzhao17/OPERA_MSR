Opera-3d Post-Processor                 started on 14/Jun/2024 at 10:58:23
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
Opening database ...zhao\OPERA_MSR\pure_perturbation.op3, simulation number 1 on 14/Jun/2024 at 10:58:24
Program maximum time-step = 1.25 (1/8 of a cycle).
TITLE=Perturbation in vacuum, to test field created at center
Simulation loaded: Transient Electromagnetic (ELEKTRA)
Time = 0.0
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
**** COMMAND INPUT *** SIMULATION CASE=7
Opening database ...zhao\OPERA_MSR\pure_perturbation.op3, simulation number 7 on 14/Jun/2024 at 10:58:37
TITLE=Perturbation in vacuum, to test field created at center
Simulation loaded: Transient Electromagnetic (ELEKTRA)
Time = 3.0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\post.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\post.comi
*** CONTROL COMMAND ** $CONSTANT #Help_C CURD
#Help_C=100
*** CONTROL COMMAND ** $CONSTANT #Help_A AREA
#Help_A=1
*** CONTROL COMMAND ** $CONSTANT #TotalCurrent #Help_C*#Help_A
#TotalCurrent=100
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** SIMULATION CASE=5
Opening database ...zhao\OPERA_MSR\pure_perturbation.op3, simulation number 5 on 14/Jun/2024 at 10:59:36
TITLE=Perturbation in vacuum, to test field created at center
Simulation loaded: Transient Electromagnetic (ELEKTRA)
Time = 2.0
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\post.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\post.comi
*** CONTROL COMMAND ** $CONSTANT #Help_C CURD
#Help_C=100
*** CONTROL COMMAND ** $CONSTANT #Help_A AREA
#Help_A=1
*** CONTROL COMMAND ** $CONSTANT #TotalCurrent #Help_C*#Help_A
#TotalCurrent=100
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\post.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\post.comi
**** FILE INPUT ****** SELECT ACTION=DEFAULT
**** FILE INPUT ****** SELECT ACTION=SELECT OPTION=SURFACES
**** FILE INPUT ****** THREED OPTION=REFRESH LINECOLOUR=NO
**** FILE INPUT ****** CONDUCTOR ACTION=RESET
**** FILE INPUT ****** CONDUCTOR ACTION=ADD LABEL=ONE
Label 'ONE' not recognized.
*** COMMENT ********** / Set values in preparation for modification
**** FILE INPUT ****** CONDUCTOR ACTION=DEFAULT
*** COMMENT ********** / Fake Modify - do not change anything
**** FILE INPUT ****** CONDUCTOR ACTION=MODIFY CURD=CURD
*** COMMENT ********** / Unpick the conductor
**** FILE INPUT ****** CONDUCTOR ACTION=REMOVE LABEL='ONE'
Label 'ONE' not recognized.
**** FILE INPUT ******
*** CONTROL COMMAND ** $CONSTANT #Help_C CURD
#Help_C=100
*** CONTROL COMMAND ** $CONSTANT #Help_A AREA
#Help_A=1
*** CONTROL COMMAND ** $CONSTANT #TotalCurrent #Help_C*#Help_A
#TotalCurrent=100
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT ACTION=ADD,
**** COMMAND INPUT *** SELECT LABEL='PERTURBATION'
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\post.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\post.comi
**** FILE INPUT ****** SELECT ACTION=DEFAULT
**** FILE INPUT ****** SELECT ACTION=SELECT OPTION=SURFACES
**** FILE INPUT ****** THREED OPTION=REFRESH LINECOLOUR=NO
**** FILE INPUT ****** CONDUCTOR ACTION=RESET
**** FILE INPUT ****** CONDUCTOR ACTION=ADD LABEL='PERTURBATION'
*** COMMENT ********** / Set values in preparation for modification
**** FILE INPUT ****** CONDUCTOR ACTION=DEFAULT
*** COMMENT ********** / Fake Modify - do not change anything
**** FILE INPUT ****** CONDUCTOR ACTION=MODIFY CURD=CURD
*** COMMENT ********** / Unpick the conductor
**** FILE INPUT ****** CONDUCTOR ACTION=REMOVE LABEL='PERTURBATION'
**** FILE INPUT ******
*** CONTROL COMMAND ** $CONSTANT #Help_C CURD
#Help_C=880000
*** CONTROL COMMAND ** $CONSTANT #Help_A AREA
#Help_A=1.0E-04
*** CONTROL COMMAND ** $CONSTANT #TotalCurrent #Help_C*#Help_A
#TotalCurrent=88
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** CONDUCTOR ACTION=LIST
1 conductor:
Dimensions in [m]

Conductor 1: RACETRACK
Local coordinate system 1 origin: 0.0 0.0 0.0
Local coordinate system 1 angles: 0.0 0.0 0.0
Local coordinate system 2 origin: 0.0 0.0 0.0
Local coordinate system 2 angles: 0.0 0.0 0.0
Cross section: 0.01 0.01
Inside corner of straight: 2.75 -5.0E-03
Length and end radius: 2.75 0.01
Biot-Savart conductor
Current Density: 880000.0, at time=2.0, 836929.734339735 [A/m^2], Drive label: 'PERTURBATION'
Total current: 88.0, at time=2.0, 83.6929734339735 [A]
Rotational Symmetry 1
Reflection codes: 0 0 0
Overall symmetry: 1
Flux density tolerance: 0.0 [T]
(Using default tolerance of 1.0E-04 [T])
Approximate volume: 2.21E-03

Total volume of 1 conductors: 2.21E-03
**** COMMAND INPUT ***
**** COMMAND INPUT *** SIMULATION CASE=2
Opening database ...zhao\OPERA_MSR\pure_perturbation.op3, simulation number 2 on 14/Jun/2024 at 11:03:14
TITLE=Perturbation in vacuum, to test field created at center
Simulation loaded: Transient Electromagnetic (ELEKTRA)
Time = 0.5
**** COMMAND INPUT ***
**** COMMAND INPUT *** CONDUCTOR ACTION=LIST
1 conductor:
Dimensions in [m]

Conductor 1: RACETRACK
Local coordinate system 1 origin: 0.0 0.0 0.0
Local coordinate system 1 angles: 0.0 0.0 0.0
Local coordinate system 2 origin: 0.0 0.0 0.0
Local coordinate system 2 angles: 0.0 0.0 0.0
Cross section: 0.01 0.01
Inside corner of straight: 2.75 -5.0E-03
Length and end radius: 2.75 0.01
Biot-Savart conductor
Current Density: 880000.0, at time=0.5, 271934.955049954 [A/m^2], Drive label: 'PERTURBATION'
Total current: 88.0, at time=0.5, 27.1934955049954 [A]
Rotational Symmetry 1
Reflection codes: 0 0 0
Overall symmetry: 1
Flux density tolerance: 0.0 [T]
(Using default tolerance of 1.0E-04 [T])
Approximate volume: 2.21E-03

Total volume of 1 conductors: 2.21E-03
**** COMMAND INPUT ***
**** COMMAND INPUT *** POINT XP=0 YP=0 ZP=0 COMPONENT=By
At (0.0,0.0,0.0), BY = 3.12300700217248E-08
**** COMMAND INPUT ***
**** COMMAND INPUT *** CARTESIAN  X1=1 X4=X1 Y1=1 Y2=Y1 X3=-1 X2=X3 Y3=-1 Y4=Y3 Z1=0 Z2=Z1 Z3=Z1 Z4=Z1 CORNERS=4 N1=10 N2=10 BUFFERNAME=Cartesian
**** COMMAND INPUT *** MAP FILE=TEMP COMPONENT=By
Component: BY
Minimum: 3.11648093878508E-08, Maximum: 3.13596071174606E-08
Integral = 1.25012093417023E-07
**** COMMAND INPUT ***
**** COMMAND INPUT *** CARTESIAN  Z1=2 Z4=Z1 X1=2 X2=X1 Z3=-2 Z2=Z3 X3=-2 X4=X3 Y1=0 Y2=Y1 Y3=Y1 Y4=Y1 CORNERS=4 N1=100 N2=100 BUFFERNAME=Cartesian
**** COMMAND INPUT *** MAP FILE=TEMP COMPONENT=By
Component: BY
Minimum: 3.0709070975285E-08, Maximum: 3.12353383111296E-08
Integral = 4.96924849942956E-07
**** COMMAND INPUT ***
Opera-3d Post-Processor                complete on 14/Jun/2024 at 11:07:33
                                                00:09:09.40 (00:00:48.06 cp)
