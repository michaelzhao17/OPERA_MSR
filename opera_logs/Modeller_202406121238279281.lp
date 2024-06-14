Opera-3d Modeller                       started on 12/Jun/2024 at 12:38:27
Opera 2020 SP3 [Build 2]
(c) Copyright Dassault Systemes Ltd 1984-2019. All Rights Reserved.
Node: TUCAN-MAGPC. Processor: Intel64. System: Windows 10
Command language initialization.
Information: modeller.comi was not found in the local or home directory
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLENOID OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLENOID OPTION=NEW -KEEP XP1=1 YP1=1 XP2=1 YP2=1.01 XP3=1.01 YP3=1.01 XP4=1.01 YP4=1 CU1=0 CU2=0 CU3=0 CU4=0 INCIRCUIT=NO CIRCUITELEMENT= CURD=100 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR CONVTOL=1e-08 DELTAT=0.01 HX=0 HY=0 HZ=0 LINEAR=YES LOGLIST= LOGLIST+=TTime RHS=ADAPTIVE UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Default_Drive'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** COMMAND INPUT *** DRIVE UNPICK
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
**** FILE INPUT ****** SOLENOID OPTION=LOAD
**** FILE INPUT ****** SOLENOID OPTION=NEW -KEEP XP1=1 YP1=1 XP2=1 YP2=1.01 XP3=1.01 YP3=1.01 XP4=1.01 YP4=1 CU1=0 CU2=0 CU3=0 CU4=0 INCIRCUIT=NO CIRCUITELEMENT= CURD=100 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ******
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Default_Drive'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR CONVTOL=1e-08 DELTAT=0.01 HX=0 HY=0 HZ=0 LINEAR=YES LOGLIST= LOGLIST+=TTime RHS=ADAPTIVE UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
There are no component bodies
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 28)
**** COMMAND INPUT ***
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
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
**** FILE INPUT ****** SOLENOID OPTION=LOAD
**** FILE INPUT ****** SOLENOID OPTION=NEW -KEEP XP1=1 YP1=1 XP2=1 YP2=1.01 XP3=1.01 YP3=1.01 XP4=1.01 YP4=1 CU1=0 CU2=0 CU3=0 CU4=0 INCIRCUIT=NO CIRCUITELEMENT= CURD=100 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ******
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Default_Drive'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR CONVTOL=1e-08 DELTAT=0.01 HX=0 HY=0 HZ=0 LINEAR=YES LOGLIST= LOGLIST+=TTime RHS=ADAPTIVE UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 714 surface elements

Triangular facet quality on 12 faces
Triangles: 714, Max: 0.999995, Min: 0.788581, Mean: 0.974494, Power2Mean: 0.972656

**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=0.1 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 69392 surface elements

Triangular facet quality on 12 faces
Triangles: 69392, Max: 1.0, Min: 0.714066, Mean: 0.978165, Power2Mean: 0.977246

**** COMMAND INPUT ***
**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 1927613, Max: 1.316484, Min: 0.392125, RMS: 1.022828, Power2Mean: 0.997506, Worst cell: 2

Total nodes:    332268
Tetrahedra:     1927613
Total volume: 256.0
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='transient_test' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database transient_test.op3, simulation number 0 on 12/Jun/2024 at 12:47:21
   Transient Electromagnetic Analysis (ELEKTRA)

   File: transient_test.op3 simulation:  1
   Created on: 12/Jun/2024 12:47:16
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406121238279281.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Solenoid
       Current Densities: 100.0
   Adaptive RHS integrals
   Drive sets and functions
   DEFAULT_DRIVE    : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Linear solution

   No periodicity conditions have been defined

   1 output times defined: 0.0
   Simple fixed time-steps
   Time-step: 0.01
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\transient_test_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR
ERROR: No total potential regions exist in the model

   There are no circuits in the model

   337956 nodes in the model
   2305870 edges in the model
   Only linear elements exist in the model
   1927613 linear tetrahedral elements

   Symmetry:
   Positive reflection in YZ plane

ERRORS:
1 error when preparing simulation

Database will not solve while errors exist
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
**** FILE INPUT ****** SOLENOID OPTION=LOAD
**** FILE INPUT ****** SOLENOID OPTION=NEW -KEEP XP1=1 YP1=1 XP2=1 YP2=1.01 XP3=1.01 YP3=1.01 XP4=1.01 YP4=1 CU1=0 CU2=0 CU3=0 CU4=0 INCIRCUIT=NO CIRCUITELEMENT= CURD=100 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ******
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Default_Drive'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR CONVTOL=1e-08 DELTAT=0.01 HX=0 HY=0 HZ=0 LINEAR=YES LOGLIST= LOGLIST+=TTime RHS=ADAPTIVE UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 2948 surface elements

Triangular facet quality on 12 faces
Triangles: 2948, Max: 0.999996, Min: 0.702938, Mean: 0.975822, Power2Mean: 0.974206

**** COMMAND INPUT ***
**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 15683, Max: 1.292195, Min: 0.557423, RMS: 1.025359, Power2Mean: 1.002758, Worst cell: 2

Total nodes:    3255
Tetrahedra:     15683
Total volume: 256.0
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='transient_test' UNITS=METRE SURFACE=CURVED
Files already exist:
     transient_test.op3
     transient_test.opc
Do you want to overwrite?
YES or NO
*** LOOP COMMAND ***** yes
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database transient_test.op3, simulation number 0 on 12/Jun/2024 at 12:48:05
   Transient Electromagnetic Analysis (ELEKTRA)

   File: transient_test.op3 simulation:  1
   Created on: 12/Jun/2024 12:48:05
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406121238279281.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Solenoid
       Current Densities: 100.0
   Adaptive RHS integrals
   Drive sets and functions
   DEFAULT_DRIVE    : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Linear solution

   No periodicity conditions have been defined

   1 output times defined: 0.0
   Simple fixed time-steps
   Time-step: 0.01
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\transient_test_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   3500 nodes in the model
   20883 edges in the model
   Only linear elements exist in the model
   15683 linear tetrahedral elements

   Symmetry:
   Positive reflection in YZ plane
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=CLEAR
1 cases have been deleted.
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;20;1 INDEX=1
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR CONVTOL=1e-08 DELTAT=0.01 HX=0 HY=0 HZ=0 LINEAR=YES LOGLIST= LOGLIST+=TTime RHS=ADAPTIVE UPDATE=SIMPLE USEDEFORMEDMESH=NO
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
**** FILE INPUT ****** SOLENOID OPTION=LOAD
**** FILE INPUT ****** SOLENOID OPTION=NEW -KEEP XP1=1 YP1=1 XP2=1 YP2=1.01 XP3=1.01 YP3=1.01 XP4=1.01 YP4=1 CU1=0 CU2=0 CU3=0 CU4=0 INCIRCUIT=NO CIRCUITELEMENT= CURD=100 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ******
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Default_Drive'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=CLEAR
1 cases have been deleted.
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;20;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR CONVTOL=1e-08 DELTAT=0.01 HX=0 HY=0 HZ=0 LINEAR=YES LOGLIST= LOGLIST+=TTime RHS=ADAPTIVE UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=0.1 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 69392 surface elements

Triangular facet quality on 12 faces
Triangles: 69392, Max: 1.0, Min: 0.714066, Mean: 0.978165, Power2Mean: 0.977246

**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 2948 surface elements

Triangular facet quality on 12 faces
Triangles: 2948, Max: 0.999996, Min: 0.702938, Mean: 0.975822, Power2Mean: 0.974206

**** COMMAND INPUT ***
**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 15683, Max: 1.292195, Min: 0.557423, RMS: 1.025359, Power2Mean: 1.002758, Worst cell: 2

Total nodes:    3255
Tetrahedra:     15683
Total volume: 256.0
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=YES SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='transient_test' UNITS=METRE SURFACE=CURVED
Files already exist:
     transient_test.op3
     transient_test.opc
Do you want to overwrite?
YES or NO
*** LOOP COMMAND ***** yes
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database transient_test.op3, simulation number 0 on 12/Jun/2024 at 13:24:38
   Transient Electromagnetic Analysis (ELEKTRA)

   File: transient_test.op3 simulation:  1
   Created on: 12/Jun/2024 13:24:38
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406121238279281.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Solenoid
       Current Densities: 100.0
   Adaptive RHS integrals
   Drive sets and functions
   DEFAULT_DRIVE    : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Linear solution

   No periodicity conditions have been defined

   21 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0
                            17.0 18.0 19.0 20.0
   Simple fixed time-steps
   Time-step: 0.01
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\transient_test_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   3500 nodes in the model
   20883 edges in the model
   Only linear elements exist in the model
   15683 linear tetrahedral elements

   Symmetry:
   Positive reflection in YZ plane
*** CONTROL COMMAND ** $OS OPERAANL WRD2=ElektraTR WRD3='transient_test.op3' WRD4=BACK
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
**** FILE INPUT ****** SOLENOID OPTION=LOAD
**** FILE INPUT ****** SOLENOID OPTION=NEW -KEEP XP1=1 YP1=1 XP2=1 YP2=1.01 XP3=1.01 YP3=1.01 XP4=1.01 YP4=1 CU1=0 CU2=0 CU3=0 CU4=0 INCIRCUIT=NO CIRCUITELEMENT= CURD=100 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ******
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Default_Drive'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=1000
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=1000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=2 Y0=2 Z0=2 X1=-2 Y1=-2 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=CLEAR
1 cases have been deleted.
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;20;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR CONVTOL=1e-08 DELTAT=0.1 HX=0 HY=0 HZ=0 LINEAR=YES LOGLIST= LOGLIST+=TTime RHS=ADAPTIVE UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 2948 surface elements

Triangular facet quality on 12 faces
Triangles: 2948, Max: 0.999996, Min: 0.702938, Mean: 0.975822, Power2Mean: 0.974206

**** COMMAND INPUT ***
**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 15683, Max: 1.292195, Min: 0.557423, RMS: 1.025359, Power2Mean: 1.002758, Worst cell: 2

Total nodes:    3255
Tetrahedra:     15683
Total volume: 256.0
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='transient_test' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database transient_test.op3, simulation number 0 on 12/Jun/2024 at 13:39:45
   Transient Electromagnetic Analysis (ELEKTRA)

   File: transient_test.op3 simulation:  1
   Created on: 12/Jun/2024 13:39:45
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406121238279281.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Solenoid
       Current Densities: 100.0
   Adaptive RHS integrals
   Drive sets and functions
   DEFAULT_DRIVE    : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 1000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Linear solution

   No periodicity conditions have been defined

   21 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0
                            17.0 18.0 19.0 20.0
   Simple fixed time-steps
   Time-step: 0.1
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\transient_test_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   3500 nodes in the model
   20883 edges in the model
   Only linear elements exist in the model
   15683 linear tetrahedral elements

   Symmetry:
   Positive reflection in YZ plane
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** BRICK8 OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** BEDSTEAD OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=LOAD
**** COMMAND INPUT ***
Opera-3d Modeller                      complete on 12/Jun/2024 at 14:08:56
                                                01:30:29.88 (00:04:06.40 cp)
