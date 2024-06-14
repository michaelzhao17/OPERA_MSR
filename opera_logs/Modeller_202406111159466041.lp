Opera-3d Modeller                       started on 11/Jun/2024 at 11:59:46
Opera 2020 SP3 [Build 2]
(c) Copyright Dassault Systemes Ltd 1984-2019. All Rights Reserved.
Node: TUCAN-MAGPC. Processor: Intel64. System: Windows 10
Command language initialization.
Information: modeller.comi was not found in the local or home directory
*** CONTROL COMMAND ** $COMI FILE='C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' MODE=CONT
Opening file for input: C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** FILE INPUT ****** CLEAR REVERT=NO
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
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable     Value            Expression
#mu_bent_MES 0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable     Value            Expression
#air_tot_MES 0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.01, DESCRIPTION='maximum element size for reduced potential air'
Variable     Value            Expression
#air_red_MES 0.01             0.01
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#layer3_Cut_Extrude3
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.01, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.01             0.01
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#layer3_Cut_Extrude3
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.01, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.01             0.01
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#layer3_Cut_Extrude3
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.01, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.01             0.01
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.01 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=PICK  DRIVELABEL=drive1
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'drive1'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00168
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00167
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00164
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00166
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00169
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00165
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
Very small internal faces exist
Removing 30 very small faces
Unable to delete some very small external faces
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
1142 faces completed, generating 72675 surface elements

Triangular facet quality on 1142 faces
Triangles: 72675, Max: 0.999999, Min: 0.0510276, Mean: 0.548525, Power2Mean: 0.110192

**** COMMAND INPUT ***
**** COMMAND INPUT *** WINDOW MESH=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** WINDOW MESH=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 124 cells
Tetrahedra: 106696, Max: 1.880974, Min: 0.00987798, RMS: 0.803801, Power2Mean: 0.0819142, Worst cell: 73

Total nodes:    31592
Tetrahedra:     106696
Total volume: 0.0584992
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL DELETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** BACKGROUND OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=3 SCALEY=3 SCALEZ=3   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
Very small internal faces exist
Removing 4 very small faces
Unable to delete some very small external faces
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
683 faces completed, generating 40850 surface elements

Triangular facet quality on 683 faces
Triangles: 40850, Max: 0.999997, Min: 0.0266671, Mean: 0.579567, Power2Mean: 0.112499

Face 1 is marked 'Surface mesh warning'
Face 39 is marked 'Surface mesh warning'
Face 57 is marked 'Surface mesh warning'
Face 65 is marked 'Surface mesh warning'
Face 70 is marked 'Surface mesh warning'
Face 74 is marked 'Surface mesh warning'
Face 77 is marked 'Surface mesh warning'
Face 340 is marked 'Surface mesh warning'
Face 350 is marked 'Surface mesh warning'
Face 355 is marked 'Surface mesh warning'
Face 358 is marked 'Surface mesh warning'
Face 362 is marked 'Surface mesh warning'
Face 366 is marked 'Surface mesh warning'
Face 480 is marked 'Surface mesh warning'
Face 481 is marked 'Surface mesh warning'
Face 482 is marked 'Surface mesh warning'
Face 483 is marked 'Surface mesh warning'
Face 484 is marked 'Surface mesh warning'
Face 486 is marked 'Surface mesh warning'
Face 489 is marked 'Surface mesh warning'
Face 490 is marked 'Surface mesh warning'
Face 491 is marked 'Surface mesh warning'
Face 492 is marked 'Surface mesh warning'
Face 493 is marked 'Surface mesh warning'
Face 494 is marked 'Surface mesh warning'
Checking triangular mesh on 683 faces issued warning for 25 faces
Checking triangular mesh on faces issued warning
You can go forward, while you are advised to check flagged faces.
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL DELETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT ***
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.01, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.01             0.01
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** // create airblock between layers for fine meshing
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockIn' X0=1.2 Y0=1.2 Z0=1.2 X1=-1.2 Y1=-1.2 Z1=-1.2 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockOut
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockIn
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=CURSORHIDE
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=CURSORHIDE PROPERTY=UniqueName LABEL='AirBlockOut'
**** COMMAND INPUT ***
*** COMMENT ********** / inner airblock
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='AirBlockIn' X0=1.2 Y0=1.2 Z0=1.2 X1=-1.2 Y1=-1.2 Z1=-1.2 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** / mesh parameters
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.01, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.01             0.01
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** // create airblock between layers for fine meshing
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockOut
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockIn
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL DELETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** BACKGROUND OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
227 faces completed, generating 1697634 surface elements

Triangular facet quality on 227 faces
Triangles: 1697634, Max: 1.0, Min: 0.337327, Mean: 0.975735, Power2Mean: 0.969323

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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** // create airblock between layers for fine meshing
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockOut
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockIn
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** // create airblock between layers for fine meshing
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockOut
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockIn
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=5 SCALEY=5 SCALEZ=5   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** // create airblock between layers for fine meshing
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockOut
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AirBlockIn
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
227 faces completed, generating 77596 surface elements

Triangular facet quality on 227 faces
Triangles: 77596, Max: 1.0, Min: 0.0936812, Mean: 0.936978, Power2Mean: 0.729923

**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL DELETE
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MES, Value=0.03, DESCRIPTION='maximum element size for bent mumetal'
Variable      Value            Expression
#mu_bent_MES  0.03             0.03
Description: maximum element size for bent mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / bent mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_bent_MAbE, Value=30, DESCRIPTION='maximum angle between elements for bent mumetal'
Variable      Value            Expression
#mu_bent_MAbE 30.0             30
Description: maximum angle between elements for bent mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Inner Layer
**** FILE INPUT ******
*** COMMENT ********** / load structural step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00167
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00164
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00168
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00166
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00164
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00165
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00168
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00169
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** / load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** / load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** / load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** / load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT ***
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** YES
Information: modeller.comi was not found in the local or home directory
Command language initialization.
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** / load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** / load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** yues
Options are:
NO , YES
YES or NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** yes
Information: modeller.comi was not found in the local or home directory
Command language initialization.
**** COMMAND INPUT ***
**** COMMAND INPUT *** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** / load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** / load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** THREED OPTION=SETVIEW SIZE=0
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** / load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** / load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** yes
Information: modeller.comi was not found in the local or home directory
Command language initialization.
**** COMMAND INPUT ***
**** COMMAND INPUT *** LOAD OPTION=INSERT FILE='stpfiles//laye35_body.STEP'
The file could not be opened for reading
**** COMMAND INPUT ***
**** COMMAND INPUT *** LOAD OPTION=INSERT FILE='stpfiles//laye3_body.STEP'
The file could not be opened for reading
**** COMMAND INPUT ***
**** COMMAND INPUT *** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#layer3_Cut_Extrude3
**** COMMAND INPUT ***
**** COMMAND INPUT *** LOAD OPTION=INSERT FILE='stpfiles//layer3_door.STEP'
Imported material name from label: layer3_door_NAUO1#MSR_door_NAUO2#layer3_door_Boss_Extrude1
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=CURSORHIDE
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=CURSORHIDE TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00084
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=CURSORHIDE TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00093
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** / load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** / load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** COMMAND INPUT ***
**** COMMAND INPUT *** TRANSFORM OPTION=APPLY KEEP=YES TYPE=DISPLACE DU=1 DV=0 DW=0
**** COMMAND INPUT ***
**** COMMAND INPUT *** TRANSFORM OPTION=APPLY KEEP=YES TYPE=DISPLACE DU=0 DV=0 DW=0
**** COMMAND INPUT ***
**** COMMAND INPUT *** TRANSFORM OPTION=APPLY KEEP=YES TYPE=DISPLACE DU=0 DV=0 DW=0
**** COMMAND INPUT ***
**** COMMAND INPUT *** TRANSFORM OPTION=APPLY KEEP=YES TYPE=DISPLACE DU=-1 DV=0 DW=0
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** TRANSFORM OPTION=APPLY TYPE=DISPLACE DU=0 DV=1 DW=0
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** TRANSFORM OPTION=APPLY KEEP=NO TYPE=DISPLACE DU=0 DV=0 DW=0
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=PICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAB-001' IDENTIFIER=A.00012
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** BACKGROUND OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
Very small internal faces exist
Removing 3 very small faces
Unable to delete some very small external faces
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
630 faces completed, generating 167345 surface elements

Triangular facet quality on 630 faces
Triangles: 167345, Max: 1.0, Min: 0.0566907, Mean: 0.847111, Power2Mean: 0.351567

**** COMMAND INPUT ***
**** COMMAND INPUT *** FILL TOL=1.0E-06

Tetrahedral element quality on 48 cells
Tetrahedra: 692802, Max: 1.847126, Min: 0.0315644, RMS: 0.919677, Power2Mean: 0.344521, Worst cell: 42

Total nodes:    120144
Tetrahedra:     692802
Total volume: 54.67443
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL DELETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#MSR_body_NAUO2#layer3_Cut_Extrude3
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
*** COMMENT ********** /++ LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_MES, Value=0.05, DESCRIPTION='maximum element size for reduced potential air'
Variable      Value            Expression
#air_red_MES  0.05             0.05
Description: maximum element size for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable      Value            Expression
#mu_flat_MAbE 30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable      Value            Expression
#air_MAbE     30.0             30
Description: maximum angle between elements for air
**** FILE INPUT ******
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** FILE INPUT ******
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
*** COMMENT ********** /++ LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ // create airblock between layers for fine meshing
*** COMMENT ********** /++ / outer airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockOut' X0=1.3 Y0=1.3 Z0=1.3 X1=-1.3 Y1=-1.3 Z1=-1.3 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockOut' UNIQUENAME='AirBlockOut'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockOut'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / inner airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ PREVIEW OPTION=END REDISPLAY=NO
*** COMMENT ********** / BLOCK Name='AirBlockIn' X0=1.1 Y0=1.1 Z0=1.1 X1=-1.1 Y1=-1.1 Z1=-1.1 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='AirBlockIn' UNIQUENAME='AirBlockIn'
*** COMMENT ********** /++ / mesh parameters
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / Subtract their union
*** COMMENT ********** /++ PICK OPTION=RESET
*** COMMENT ********** /++ PICK OPTION=GUIUPDATE
*** COMMENT ********** /++ PICK OPTION=ADD,
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockOut
*** COMMENT ********** / PICK PROPERTY=UniqueName LABEL=AirBlockIn
*** COMMENT ********** /++ COMBINE OPERATION=SUBTRACT +REGULAR
*** COMMENT ********** /++
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
Very small internal faces exist
Removing 6 very small faces
Unable to delete some very small external faces
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
805 faces completed, generating 182893 surface elements

Triangular facet quality on 805 faces
Triangles: 182893, Max: 1.0, Min: 0.0538599, Mean: 0.830395, Power2Mean: 0.327871

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
Variable      Value            Expression
#mu_DSL       500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable      Value            Expression
#air_tot_DSL  200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable      Value            Expression
#air_red_DSL  100.0            100
Description: data storage level for reduced potential air
**** FILE INPUT ******
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable      Value            Expression
#mu_flat_MES  0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** FILE INPUT ****** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable      Value            Expression
#air_tot_MES  0.05             0.05
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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AirBlockIn'
Options available for parameter LABEL are:
AB_l5_in, AB_l5_out, layer5_body, layer5_door
Invalid label specified
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' (Line 107)
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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_red_MES NORMALTOL=#air_MAbE ELEMSHAPEPREF=NONE
Undefined variable: #AIR_RED_MES
DCOD Message  74:Unknown variable in expression '#air_red_MES' (DECODE)
Undefined variable: #AIR_MABE
DCOD Message  74:Unknown variable in expression '#air_MAbE' (DECODE)
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' (Line 111)
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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_in
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
*** COMMENT ********** /++ LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL CREATE
Very small internal faces exist
Removing 6 very small faces
Unable to delete some very small external faces
**** COMMAND INPUT ***
**** COMMAND INPUT *** MESH GENERATOR=AUTOMATIC SIZE=1.0 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
817 faces completed, generating 219703 surface elements

Triangular facet quality on 817 faces
Triangles: 219703, Max: 1.0, Min: 0.0598889, Mean: 0.854709, Power2Mean: 0.355382

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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_in
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#MSR_body_NAUO2#layer3_Cut_Extrude3
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAC-001' IDENTIFIER=A.00082
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAC-001' IDENTIFIER=A.00084
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAC-001' IDENTIFIER=A.00085
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAC-001' IDENTIFIER=A.00083
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAC-001' IDENTIFIER=A.00086
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAC-001' IDENTIFIER=A.00087
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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_in
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#MSR_body_NAUO2#layer3_Cut_Extrude3
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer3_body' UNIQUENAME='layer3_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00082
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00084
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00085
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00083
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00086
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00087
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_in
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#MSR_body_NAUO2#layer3_Cut_Extrude3
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer3_body' UNIQUENAME='layer3_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00082
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00084
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00085
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00083
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00086
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00087
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_door.STEP'
Imported material name from label: layer3_door_NAUO1#MSR_door_NAUO2#layer3_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAD-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer3_door' UNIQUENAME='layer3_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer3_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_door'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer3_door' IDENTIFIER=A.00010
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer3_door' IDENTIFIER=A.00010
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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#MSR_body_NAUO2#layer5_Cut_Extrude5
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /back
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / left
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / right
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / top
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** / bottom
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_door.STEP'
Imported material name from label: layer5_door_NAUO1#MSR_door_NAUO2#layer5_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_door' UNIQUENAME='layer5_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_door' IDENTIFIER=A.00012
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
**** FILE INPUT ******
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AB_l5_out' UNIQUENAME='AB_l5_out'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_out'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / inner airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_in' X0=1.145 Y0=1.145 Z0=1.145 X1=-1.145 Y1=-1.145 Z1=-1.145 MATERIALLABEL='Air' LEVEL=#air_red_DSL
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='AirBlockIn' UNIQUENAME='AB_l5_in'
*** COMMENT ********** / mesh parameters
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='AB_l5_in'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=#air_red_DSL SIZE=#air_grad_MES NORMALTOL=#air_grad_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / Subtract their union
**** FILE INPUT ****** PICK OPTION=RESET
**** FILE INPUT ****** PICK OPTION=GUIUPDATE
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_out
**** FILE INPUT ****** PICK PROPERTY=UniqueName LABEL=AB_l5_in
**** FILE INPUT ****** COMBINE OPERATION=SUBTRACT +REGULAR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Layer 3
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_body.STEP'
Imported material name from label: layer3_body_NAUO1#MSR_body_NAUO2#layer3_Cut_Extrude3
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer3_body' UNIQUENAME='layer3_body'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_body'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00082
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / back
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00084
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / left
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00085
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / right
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00083
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / top
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00086
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
*** COMMENT ********** / bottom
**** FILE INPUT ****** FILTER TYPE=FACE
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00087
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /// load door step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer3_door.STEP'
Imported material name from label: layer3_door_NAUO1#MSR_door_NAUO2#layer3_door_Boss_Extrude1
**** FILE INPUT ******
*** COMMENT ********** / rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAD-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer3_door' UNIQUENAME='layer3_door'
**** FILE INPUT ******
*** COMMENT ********** / set material to mumetal
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_door'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** // set layering for meshing
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer3_door' IDENTIFIER=A.00010
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_door'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer3_door'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer3_door' IDENTIFIER=A.00010
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.0015
**** COMMAND INPUT ***
Opera-3d Modeller                      complete on 12/Jun/2024 at 12:04:32
                                              1-00:04:45.92 (00:59:09.79 cp)
