Opera-3d Modeller                       started on 14/Jun/2024 at 14:57:33
Opera 2020 SP3 [Build 2]
(c) Copyright Dassault Systemes Ltd 1984-2019. All Rights Reserved.
Node: TUCAN-MAGPC. Processor: Intel64. System: Windows 10
Command language initialization.
Information: modeller.comi was not found in the local or home directory
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\transient_test.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\transient_test.comi
*** COMMENT ********** / test script to try make time changing B field work
*** COMMENT ********** / Jun 2024
**** FILE INPUT ******
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / create total airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
Updating unique body name to 'Block-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;100;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
18 faces completed, generating 189226 surface elements

Triangular facet quality on 18 faces
Triangles: 189226, Max: 1.0, Min: 0.625243, Mean: 0.973774, Power2Mean: 0.972508

Command file processing aborted
Aborted file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 51)
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\transient_test.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\transient_test.comi
*** COMMENT ********** / test script to try make time changing B field work
*** COMMENT ********** / Jun 2024
**** FILE INPUT ******
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / create total airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
Updating unique body name to 'Block-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;100;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
18 faces completed, generating 57804 surface elements

Triangular facet quality on 18 faces
Triangles: 57804, Max: 0.999995, Min: 0.649478, Mean: 0.974139, Power2Mean: 0.972829

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 3 cells
Tetrahedra: 1788502, Max: 1.34795, Min: 0.368803, RMS: 1.02371, Power2Mean: 0.997956, Worst cell: 2

Total nodes:    303548
Tetrahedra:     1788502
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:59:19
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:59:13
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406141457339401.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Racetrack
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     NORMMAGN
     TANGMAGN
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   101 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0
                             17.0 18.0 19.0 20.0 21.0 22.0 23.0 24.0 25.0 26.0 27.0 28.0 29.0 30.0 31.0
                             32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0
                             47.0 48.0 49.0 50.0 51.0 52.0 53.0 54.0 55.0 56.0 57.0 58.0 59.0 60.0 61.0
                             62.0 63.0 64.0 65.0 66.0 67.0 68.0 69.0 70.0 71.0 72.0 73.0 74.0 75.0 76.0
                             77.0 78.0 79.0 80.0 81.0 82.0 83.0 84.0 85.0 86.0 87.0 88.0 89.0 90.0 91.0
                             92.0 93.0 94.0 95.0 96.0 97.0 98.0 99.0 100.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   315729 nodes in the model
   2145059 edges in the model
   Only linear elements exist in the model
   1788502 linear tetrahedral elements

   Symmetry:
   Positive reflection in XY plane
   Positive reflection in YZ plane
   Negative reflection in ZX plane
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\transient_test.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\transient_test.comi
*** COMMENT ********** / test script to try make time changing B field work
*** COMMENT ********** / Jun 2024
**** FILE INPUT ******
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / create total airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
Updating unique body name to 'Block-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=1 SCALEY=1 SCALEZ=1   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;100;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 48618 surface elements

Triangular facet quality on 12 faces
Triangles: 48618, Max: 1.0, Min: 0.717182, Mean: 0.976089, Power2Mean: 0.975023

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 1620348, Max: 1.320531, Min: 0.34368, RMS: 1.022537, Power2Mean: 0.996804, Worst cell: 2

Total nodes:    278347
Tetrahedra:     1620348
Total volume: 216.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
Files already exist:
     pure_perturbation_AC.op3
     pure_perturbation_AC.opc
Do you want to overwrite?
YES or NO
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
DCOD Message  32:Too many fields found on line. Maximum   1. (FREFMT)
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 57)
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\transient_test.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\transient_test.comi
*** COMMENT ********** / test script to try make time changing B field work
*** COMMENT ********** / Jun 2024
**** FILE INPUT ******
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / create total airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
Updating unique body name to 'Block-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.5 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=1 SCALEY=1 SCALEZ=1   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;100;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 9148 surface elements

Triangular facet quality on 12 faces
Triangles: 9148, Max: 1.0, Min: 0.68931, Mean: 0.972325, Power2Mean: 0.970376

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 92363, Max: 1.330868, Min: 0.481597, RMS: 1.027822, Power2Mean: 1.003131, Worst cell: 1

Total nodes:    16830
Tetrahedra:     92363
Total volume: 216.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 15:00:33
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 15:00:33
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406141457339401.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Racetrack
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     NORMMAGN
     TANGMAGN
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   101 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0
                             17.0 18.0 19.0 20.0 21.0 22.0 23.0 24.0 25.0 26.0 27.0 28.0 29.0 30.0 31.0
                             32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0
                             47.0 48.0 49.0 50.0 51.0 52.0 53.0 54.0 55.0 56.0 57.0 58.0 59.0 60.0 61.0
                             62.0 63.0 64.0 65.0 66.0 67.0 68.0 69.0 70.0 71.0 72.0 73.0 74.0 75.0 76.0
                             77.0 78.0 79.0 80.0 81.0 82.0 83.0 84.0 85.0 86.0 87.0 88.0 89.0 90.0 91.0
                             92.0 93.0 94.0 95.0 96.0 97.0 98.0 99.0 100.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   18534 nodes in the model
   117102 edges in the model
   Only linear elements exist in the model
   92363 linear tetrahedral elements

   Symmetry:
   Positive reflection in XY plane
   Positive reflection in YZ plane
   Negative reflection in ZX plane
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\transient_test.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\transient_test.comi
*** COMMENT ********** / test script to try make time changing B field work
*** COMMENT ********** / Jun 2024
**** FILE INPUT ******
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / create total airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
Updating unique body name to 'Block-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.5 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=1 SCALEY=1 SCALEZ=1   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 9148 surface elements

Triangular facet quality on 12 faces
Triangles: 9148, Max: 1.0, Min: 0.68931, Mean: 0.972325, Power2Mean: 0.970376

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 92363, Max: 1.330868, Min: 0.481597, RMS: 1.027822, Power2Mean: 1.003131, Worst cell: 1

Total nodes:    16830
Tetrahedra:     92363
Total volume: 216.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 15:10:44
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 15:10:44
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406141457339401.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Racetrack
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     NORMMAGN
     TANGMAGN
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   31 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0
                            17.0 18.0 19.0 20.0 21.0 22.0 23.0 24.0 25.0 26.0 27.0 28.0 29.0 30.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   18534 nodes in the model
   117102 edges in the model
   Only linear elements exist in the model
   92363 linear tetrahedral elements

   Symmetry:
   Positive reflection in XY plane
   Positive reflection in YZ plane
   Negative reflection in ZX plane
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable Value            Expression
#mu_DSL  500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable     Value            Expression
#air_tot_DSL 200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable     Value            Expression
#air_red_DSL 100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable     Value            Expression
#mu_flat_MES 0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable     Value            Expression
#air_tot_MES 0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable      Value            Expression
#air_grad_MES 0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=22 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
*** COMMENT ********** /++ LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
*** COMMENT ********** /++
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Layer 3
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load body step file
*** COMMENT ********** /++ LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
*** COMMENT ********** /++
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer3_body' UNIQUENAME='layer3_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00082
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** /++ / back
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00084
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00085
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00083
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00086
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00087
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
*** COMMENT ********** /++ LOAD OPTION=INSERT FILE='stpfiles//layer3_door.STEP'
*** COMMENT ********** /++
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAD-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer3_door' UNIQUENAME='layer3_door'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_door'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer3_door' IDENTIFIER=A.00010
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=CURSORHIDE
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=CURSORHIDE PROPERTY=UniqueName LABEL='l1_door'
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=CURSORHIDE PROPERTY=UniqueName LABEL='l2_door'
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=CURSORHIDE PROPERTY=UniqueName LABEL='l3_door'
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=CURSORHIDE PROPERTY=UniqueName LABEL='l5_door'
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=PICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00056
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=2.8 Z0=2.8 X1=-2.8 Y1=-2.8 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=2.6 Z0=2.6 X1=-2.6 Y1=-2.6 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
At least two bodies must be picked
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' (Line 224)
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT *** PICK OPTION=ADD
**** COMMAND INPUT *** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** COMMAND INPUT *** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** COMMAND INPUT *** COMBINE OPERATION=SUBTRACT +REGULAR
At least two bodies must be picked
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=coil_air_in
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=coil_air_out
**** COMMAND INPUT ***
**** COMMAND INPUT *** COMBINE OPERATION=SUBTRACT +REGULAR
Removing body with no topology
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=2.8 Z0=2.8 X1=-2.8 Y1=-2.8 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=2.6 Z0=2.6 X1=-2.6 Y1=-2.6 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
At least two bodies must be picked
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' (Line 224)
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
At least two bodies must be picked
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' (Line 224)
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
Removing body with no topology
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
Removing body with no topology
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** COMBINE OPERATION=SUBTRACT +REGULAR
Removing body with no topology
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** COMBINE OPERATION=CUTAWAY +REGULAR
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=coil_air_in
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=coil_air_in
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=coil_air_out
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=coil_air_out
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.01 Z0=2.6 X1=-2.6 Y1=--0.01 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** COMBINE OPERATION=SUBTRACT +REGULAR
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $ COMI 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi'
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
The default value has been used from the YESORNO string variable (YES)
Command language initialization.
**** FILE INPUT ****** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Floor
**** FILE INPUT ******
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_floor' UNIQUENAME='l5_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_floor' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_floor' UNIQUENAME='l3_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_floor' UNIQUENAME='l2_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_floor' UNIQUENAME='l1_floor'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_floor'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_floor' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Door
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//door_assem.STEP'
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO2#layer1_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO3#layer2_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO4#layer3_door_Boss_Extrude1
Imported material name from label: door_assem_NAUO1#MSR_door_NAUO5#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** // layer 5
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_door' UNIQUENAME='l5_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_door' IDENTIFIER=A.00112
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 3
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l3_door' UNIQUENAME='l3_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer3' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l3_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 2
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l2_door' UNIQUENAME='l2_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l2_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer2' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l2_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** // layer 1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l1_door' UNIQUENAME='l1_door'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l1_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer1' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** / set layering for meshing
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00032
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.002
At least one face must be picked
**** FILE INPUT ******
*** COMMENT ********** //// Body
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='l5_body' UNIQUENAME='l5_body'
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front edge
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00248
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00250
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00249
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00251
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00247
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l5_body' IDENTIFIER=A.00056
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=MESH BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** //// Perturbation Coil
*** COMMENT ********** // Build coil geometry
**** FILE INPUT ****** RACETRACK OPTION=LOAD
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
*** COMMENT ********** /// reduced air block to surround coil
*** COMMENT ********** // flat rectangle
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_out' X0=2.8 Y0=0.01 Z0=2.8 X1=-2.8 Y1=-0.01 Z1=-2.8 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_out' UNIQUENAME='coil_air_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** // inner rectangle to be cut away
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='coil_air_in' X0=2.6 Y0=0.015 Z0=2.6 X1=-2.6 Y1=--0.015 Z1=-2.6 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='coil_air_in' UNIQUENAME='coil_air_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='coil_air_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** /// Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=coil_air_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// BH
*** COMMENT ********** // Import files
**** FILE INPUT ******
*** COMMENT ********** / create labels
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l5_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l3_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l2_BH'
**** FILE INPUT ****** BHDATA OPTION=NEW  LABEL='l1_BH'
**** FILE INPUT ******
*** COMMENT ********** / assign bh file to label
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l5_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l5_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l3_BH FILE='bhdata//MSR_L3.bh'
BHDATA label l3_BH loaded with data from the file bhdata//MSR_L3.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l2_BH FILE='bhdata//MSR_L2.bh'
BHDATA label l2_BH loaded with data from the file bhdata//MSR_L2.bh
**** FILE INPUT ****** BHDATA OPTION=LOAD LABEL=l1_BH FILE='bhdata//MSR_L1z.bh'
BHDATA label l1_BH loaded with data from the file bhdata//MSR_L1z.bh
**** FILE INPUT ******
*** COMMENT ********** / match material label to bh label
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer5'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l5_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer3'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l3_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer2'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l2_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ****** MATERIALS GUIINIT
**** FILE INPUT ****** MATERIALS PICK 'layer1'
**** FILE INPUT ****** MATERIALS OPTION=MODIFY MULINEARITY=NONLINEAR MUANISOTROPY=ISOTROPIC BH='l1_BH'
**** FILE INPUT ****** MATERIALS UNPICK
**** FILE INPUT ******
*** COMMENT ********** /++ /// Create air block gradient
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_out
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AB_l5_in
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;30;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++ /++
*** COMMENT ********** /++ /++ //// Create Model Body
*** COMMENT ********** /++ /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** COMBINE OPERATION=SUBTRACT +REGULAR
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='ModelBody'
**** COMMAND INPUT ***
