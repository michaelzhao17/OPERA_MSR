Opera-3d Post-Processor                 started on 14/Jun/2024 at 14:30:47
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
**** COMMAND INPUT *** ACTIVATE FILE='C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC.op3'
Opening file for checking: C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC.op3
This simulation has not been analysed yet.
**** COMMAND INPUT *** LOAD
Attaching file as resident: C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC.op3
Opening database ...o\OPERA_MSR\pure_perturbation_AC.op3, simulation number 1 on 14/Jun/2024 at 14:30:49
Program maximum time-step = 1.25 (1/8 of a cycle).
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
**** COMMAND INPUT *** SET FIELD=INTEGRATION
RHX Variable name not recognized
RBX Variable name not recognized
RJX Variable name not recognized
Failed to load fields/current densities from database.
Integral fields are disabled.
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
Current Density: 88.0, at time=0.0, 880000.0 [A/m^2], Drive label: 'PERTURBATION'
Total current: 8.8E-03, at time=0.0, 88.0 [A]
Rotational Symmetry 1
Reflection codes: 0 0 0
Overall symmetry: 1
Flux density tolerance: 0.0 [T]
(Using default tolerance of 1.0E-04 [T])
Approximate volume: 5.5E-04

Total volume of 1 conductors: 5.5E-04
**** COMMAND INPUT ***
**** COMMAND INPUT *** POINT XP=0 YP=1 ZP=0 COMPONENT=Bx
At (0.0,1.0,0.0), BX = 0.0
DCOD Message  73:Expression 'Bx' cannot be evaluated. (DECODE)
**** COMMAND INPUT ***
**** COMMAND INPUT *** SET JCOIL=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** SET DISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** THREED OPTION=GETVIEW
**** COMMAND INPUT ***
**** COMMAND INPUT *** THREED TYPE=SURFACE VECTOR=YES VX=Jx VY=Jy VZ=Jz VMIN=* VMAX=* VECSBYSIZE=YES VSCALEOPTION=AUTOMATIC VAUTOSCALE=1 XORIGIN=0.0447789864896242 YORIGIN=2.69850178545581E-03 ZORIGIN=0.0600443913626941 ROTX=1.58213152324971 ROTY=42.4330258521102 ROTZ=29.0691127892327 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0.229180562798241 FACETANGLE=10 PERSPECTIVE=YES LINECOLOUR=YES USEOUTERELEM=NO OPTION=SETVIEW
Undefined variable: JX
DCOD Message  74:Unknown variable in expression 'Jx' (DECODE)
Undefined variable: JY
DCOD Message  74:Unknown variable in expression 'Jy' (DECODE)
Undefined variable: JZ
DCOD Message  74:Unknown variable in expression 'Jz' (DECODE)
**** COMMAND INPUT ***
**** COMMAND INPUT *** THREED OPTION=GETVIEW
**** COMMAND INPUT ***
**** COMMAND INPUT *** THREED TYPE=COMPONENT COMPONENT=Bx MIN=* MAX=* VECTOR=YES VMIN=* VMAX=* VECSBYSIZE=YES VSCALEOPTION=AUTOMATIC VAUTOSCALE=1 XORIGIN=0.0447789864896242 YORIGIN=2.69850178545581E-03 ZORIGIN=0.0600443913626941 ROTX=2.50646316632282 ROTY=24.6052884293203 ROTZ=30.4840338932099 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0.229180562798241 FACETANGLE=10 PERSPECTIVE=YES LINECOLOUR=YES USEOUTERELEM=NO OPTION=SETVIEW
DCOD Message  73:Expression 'Bx' cannot be evaluated. (DECODE)
**** COMMAND INPUT ***
**** COMMAND INPUT *** SET FIELD=NODAL COIL=NODAL
**** COMMAND INPUT ***
Opera-3d Post-Processor                complete on 14/Jun/2024 at 14:33:56
                                                00:03:08.86 (00:00:19.00 cp)
