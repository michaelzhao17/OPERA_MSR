Opera-3d Modeller                       started on 13/Jun/2024 at 14:43:15
Opera 2020 SP3 [Build 2]
(c) Copyright Dassault Systemes Ltd 1984-2019. All Rights Reserved.
Node: TUCAN-MAGPC. Processor: Intel64. System: Windows 10
Command language initialization.
Information: modeller.comi was not found in the local or home directory
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
*** COMMENT ********** //// Layer 5
**** FILE INPUT ******
*** COMMENT ********** /// load body step file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
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
Imported material name from label: layer3_body_NAUO1#layer3_body_Stock_layer3_1
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
*** COMMENT ********** /// Create air block gradient
*** COMMENT ********** / outer airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='AB_l5_out' X0=1.245 Y0=1.245 Z0=1.245 X1=-1.245 Y1=-1.245 Z1=-1.245 MATERIALLABEL='Air' LEVEL=#air_red_DSL
Updating unique body name to 'AB_l5_out-001'
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
*** COMMENT ********** // this script creates model of MSR in OPERA with layered meshing
*** COMMENT ********** // author: M. Zhao
*** COMMENT ********** // June 2024
*** CONTROL COMMAND ** $string yesorno YES
 yesorno='YES'
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
**** COMMAND INPUT *** THREED XORIGIN=0 YORIGIN=0 ZORIGIN=0 ROTX=0 ROTY=0 ROTZ=0 XASPECT=1 YASPECT=1 ZASPECT=1 SIZE=0 FACETANGLE=5 PERSPECTIVE=YES LINECOLOUR=YES OPTION=SETVIEW
**** COMMAND INPUT ***
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Constants
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** //Data Storage Levels
*** COMMENT ********** / mumetal
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#mu_DSL, Value=500, DESCRIPTION='data storage level for mumetal'
Variable       Value            Expression
#mu_DSL        500.0            500
Description: data storage level for mumetal
*** COMMENT ********** / air (total potential)
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#air_tot_DSL, Value=200, DESCRIPTION='data storage level for total potential air'
Variable       Value            Expression
#air_tot_DSL   200.0            200
Description: data storage level for total potential air
*** COMMENT ********** / air (reduced potential)
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#air_red_DSL, Value=100, DESCRIPTION='data storage level for reduced potential air'
Variable       Value            Expression
#air_red_DSL   100.0            100
Description: data storage level for reduced potential air
**** COMMAND INPUT ***
*** COMMENT ********** /// meshing parameters
*** COMMENT ********** // max element size (MES)
*** COMMENT ********** / flat mumetal
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MES, Value=0.03, DESCRIPTION='maximum element size for flat mumetal'
Variable       Value            Expression
#mu_flat_MES   0.03             0.03
Description: maximum element size for flat mumetal
*** COMMENT ********** / air (total potential)
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#air_tot_MES, Value=0.05, DESCRIPTION='maximum element size for total potential air'
Variable       Value            Expression
#air_tot_MES   0.05             0.05
Description: maximum element size for total potential air
*** COMMENT ********** / air (reduced potential)
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MES, Value=0.05, DESCRIPTION='maximum element size for air gradient blocks'
Variable       Value            Expression
#air_grad_MES  0.05             0.05
Description: maximum element size for air gradient blocks
**** COMMAND INPUT ***
*** COMMENT ********** // maximum angle between elements (MAbE)
*** COMMENT ********** / flat mumetal
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#mu_flat_MAbE, Value=30, DESCRIPTION='maximum angle between elements for flat mumetal'
Variable       Value            Expression
#mu_flat_MAbE  30.0             30
Description: maximum angle between elements for flat mumetal
*** COMMENT ********** / air
**** COMMAND INPUT *** VARIABLE OPTION=PARAMETER, NAME=#air_grad_MAbE, Value=30, DESCRIPTION='maximum angle between elements for air'
Variable       Value            Expression
#air_grad_MAbE 30.0             30
Description: maximum angle between elements for air
**** COMMAND INPUT ***
*** COMMENT ********** ////////////////////////////////////////////////////////////
*** COMMENT ********** / Modelling
*** COMMENT ********** ////////////////////////////////////////////////////////////
**** COMMAND INPUT ***
*** COMMENT ********** //// Layer 5
**** COMMAND INPUT ***
*** COMMENT ********** /// load body step file
**** COMMAND INPUT *** LOAD OPTION=INSERT FILE='stpfiles//layer5_body.STEP'
Imported material name from label: layer5_body_NAUO1#layer5_body_Stock_layer5_1
**** COMMAND INPUT ***
*** COMMENT ********** / rename
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
There are no picked bodies or LCS to rename
**** COMMAND INPUT ***
*** COMMENT ********** / set material to mumetal
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
**** COMMAND INPUT ***
*** COMMENT ********** // set layering for meshing
*** COMMENT ********** / front boundary
