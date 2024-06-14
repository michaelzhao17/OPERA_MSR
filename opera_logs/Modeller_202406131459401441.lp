Opera-3d Modeller                       started on 13/Jun/2024 at 14:59:40
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
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//floor_assem.STEP'
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO3#layer3_floor_Stock_layer3_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO4#layer2_floor_Stock_layer2_1
Imported material name from label: floor_assem_NAUO1#MSR_floor_NAUO5#layer1_floor_Stock_layer1_1
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=UniqueName LABEL=Unnamed:AAA-001
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=REMOVE,
**** COMMAND INPUT *** PICK PROPERTY=UniqueName LABEL=Unnamed:AAA-001
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=Unnamed
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=Unnamed
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=REMOVE,
**** COMMAND INPUT *** PICK PROPERTY=Name LABEL=Unnamed
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='Unnamed' UNIQUENAME='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
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
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** UNDO
**** COMMAND INPUT ***
**** COMMAND INPUT *** UNDO
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ****** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='laery5_floor' UNIQUENAME='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='laery5_floor' UNIQUENAME='Unnamed:AAA-001'
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ****** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** REPLAY OPTION=REBUILDPREPARE STATE=' '
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
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
There is nothing to be picked
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PICK OPTION=TOGGLE,
**** FILE INPUT ****** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=LIST
**** COMMAND INPUT ***
**** COMMAND INPUT *** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD,
**** FILE INPUT ****** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='test' UNIQUENAME='Unnamed:AAA-001'
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
*** COMMENT ********** //// Have the option to comment out specific layers
**** FILE INPUT ******
*** COMMENT ********** /// Layer 5
*** COMMENT ********** // Load STEP file
**** FILE INPUT ****** LOAD OPTION=INSERT FILE='stpfiles//layer5_floor.STEP'
Imported material name from label: layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ******
*** COMMENT ********** // rename
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='layer5_floor'
There are no picked bodies or LCS to rename
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** SELECT OPTION=DEFAULT
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='Unnamed' UNIQUENAME='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='aaa' UNIQUENAME='Unnamed:AAA-001'
There are no picked bodies or LCS to rename
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ALL TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=CHANGE TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=CHANGE TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=LIST
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER COMMAND=LIST
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1' POTENTIAL=Default ELEMENTTYPE=Linear ELEMSHAPEPREF=NONE
Invalid label 'layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1': character '#' is not allowed.
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1
**** COMMAND INPUT ***
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1' POTENTIAL=Default ELEMENTTYPE=Linear ELEMSHAPEPREF=NONE
Invalid label 'layer5_floor_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1': character '#' is not allowed.
**** COMMAND INPUT ***
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5_floor_NAUO1#MSR_floor_NAUO2layer5_floor_Stock_layer5_1' POTENTIAL=Default ELEMENTTYPE=Linear ELEMSHAPEPREF=NONE
Invalid label 'layer5_floor_NAUO1#MSR_floor_NAUO2layer5_floor_Stock_layer5_1': character '#' is not allowed.
**** COMMAND INPUT ***
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='layer5_floor' POTENTIAL=Default ELEMENTTYPE=Linear ELEMSHAPEPREF=NONE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=MaterialLabel LABEL=layer5_floor
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=RESET
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ / rename
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / RENAME NAME='layer5_body' UNIQUENAME='layer5_body'
*** COMMENT ********** /++
*** COMMENT ********** /++ / set material to mumetal
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='layer5_body'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='layer5' ELEMENTTYPE=Linear LEVEL=#mu_DSL SIZE=#mu_flat_MES NORMALTOL=#mu_flat_MAbE ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ // set layering for meshing
*** COMMENT ********** /++ / front boundary
*** COMMENT ********** /++ FILTER TYPE=FACE
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00167
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ /back
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00165
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / left
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00166
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / right
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00164
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / top
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00168
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++ / bottom
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='layer5_body' IDENTIFIER=A.00169
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=2 BACKOFFSET=0.001
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ /// load door step file
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
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** RENAME NAME='layer5_floor' UNIQUENAME='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** FILTER TYPE=FACE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00112
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-001' IDENTIFIER=A.00112
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** FACEDATA OPTION=MODIFY ELEMENTTYPE=Linear FORMETHOD=NONE BACKMETHOD=GEOMETRY BACKLAYERS=4 BACKOFFSET=0.0005
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-002' IDENTIFIER=A.00032
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-003' IDENTIFIER=A.00032
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAA-004' IDENTIFIER=A.00032
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
**** FILE INPUT ****** CELLDATA OPTION=MODIFY
Invalid label 'floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1': character '#' is not allowed.
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' (Line 50)
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l5_floor'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT *** PICK OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-003'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAA-002'
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
**** FILE INPUT ****** CELLDATA OPTION=MODIFY
Invalid label 'floor_assem_NAUO1#MSR_floor_NAUO2#layer5_floor_Stock_layer5_1': character '#' is not allowed.
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\layer_meshing_ver.comi' (Line 50)
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAB-004' IDENTIFIER=A.00013
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='Unnamed:AAB-003' IDENTIFIER=A.00011
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
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-001'
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
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-002'
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
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-003'
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
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAB-004'
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD TYPE=FACE UNIQUEBODYNAME='l1_door' IDENTIFIER=A.00013
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
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
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
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
**** COMMAND INPUT *** FILTER TYPE=BODY
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Unnamed:AAC-001'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='l3_door'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
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
**** FILE INPUT ******
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
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=NEW -KEEP XP1=5.50 YP1=-0.005 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=1 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=1 TOLERANCE=0 DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;1
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Default_Drive'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
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
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
At least one cell or body must be picked
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=NO EMRYZ=TANGMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
There are no component bodies
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 39)
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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-2 MATERIALLABEL='Air' LEVEL=300
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
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;1
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
12 faces completed, generating 2948 surface elements

Triangular facet quality on 12 faces
Triangles: 2948, Max: 0.999996, Min: 0.702938, Mean: 0.975822, Power2Mean: 0.974206

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 15683, Max: 1.292195, Min: 0.557423, RMS: 1.025359, Power2Mean: 1.002758, Worst cell: 2

Total nodes:    3255
Tetrahedra:     15683
Total volume: 256.0
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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
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
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;1
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
12 faces completed, generating 28022 surface elements

Triangular facet quality on 12 faces
Triangles: 28022, Max: 0.999997, Min: 0.68461, Mean: 0.977812, Power2Mean: 0.976851

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 422999, Max: 1.310537, Min: 0.414793, RMS: 1.023112, Power2Mean: 0.998431, Worst cell: 2

Total nodes:    75750
Tetrahedra:     422999
Total volume: 6912.0
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;1
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
12 faces completed, generating 10742 surface elements

Triangular facet quality on 12 faces
Triangles: 10742, Max: 1.0, Min: 0.699641, Mean: 0.9758, Power2Mean: 0.974644

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 108307, Max: 1.298877, Min: 0.438502, RMS: 1.023483, Power2Mean: 0.999397, Worst cell: 2

Total nodes:    20318
Tetrahedra:     108307
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
End of command file.
*** CONTROL COMMAND ** $ END COMI
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 09:14:36
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 09:14:36
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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

   11 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   20948 nodes in the model
   135217 edges in the model
   Only linear elements exist in the model
   108307 linear tetrahedral elements

   Symmetry:
   Positive reflection in XY plane
   Positive reflection in YZ plane
   Negative reflection in ZX plane
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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
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
12 faces completed, generating 10742 surface elements

Triangular facet quality on 12 faces
Triangles: 10742, Max: 1.0, Min: 0.699641, Mean: 0.9758, Power2Mean: 0.974644

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 108307, Max: 1.298877, Min: 0.438502, RMS: 1.023483, Power2Mean: 0.999397, Worst cell: 2

Total nodes:    20318
Tetrahedra:     108307
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
Files already exist:
     pure_perturbation.op3
     pure_perturbation.opc
Do you want to overwrite?
YES or NO
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
DCOD Message  32:Too many fields found on line. Maximum   1. (FREFMT)
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 49)
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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
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
12 faces completed, generating 10742 surface elements

Triangular facet quality on 12 faces
Triangles: 10742, Max: 1.0, Min: 0.699641, Mean: 0.9758, Power2Mean: 0.974644

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 108307, Max: 1.298877, Min: 0.438502, RMS: 1.023483, Power2Mean: 0.999397, Worst cell: 2

Total nodes:    20318
Tetrahedra:     108307
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 09:19:32
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 09:19:32
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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

   11 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   20948 nodes in the model
   135217 edges in the model
   Only linear elements exist in the model
   108307 linear tetrahedral elements

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
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 10742 surface elements

Triangular facet quality on 12 faces
Triangles: 10742, Max: 1.0, Min: 0.699641, Mean: 0.9758, Power2Mean: 0.974644

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 108307, Max: 1.298877, Min: 0.438502, RMS: 1.023483, Power2Mean: 0.999397, Worst cell: 2

Total nodes:    20318
Tetrahedra:     108307
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 09:22:26
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 09:22:26
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   20948 nodes in the model
   135217 edges in the model
   Only linear elements exist in the model
   108307 linear tetrahedral elements

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
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 48180 surface elements

Triangular facet quality on 12 faces
Triangles: 48180, Max: 1.0, Min: 0.710249, Mean: 0.973956, Power2Mean: 0.972863

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 855960, Max: 1.305685, Min: 0.450922, RMS: 1.023181, Power2Mean: 0.998245, Worst cell: 2

Total nodes:    150863
Tetrahedra:     855960
Total volume: 13824.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 09:35:51
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 09:35:49
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   155645 nodes in the model
   1040472 edges in the model
   Only linear elements exist in the model
   855960 linear tetrahedral elements

   Symmetry:
   none
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
**** FILE INPUT ****** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=880000 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=1
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** // create reduced airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=START REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ******
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 48180 surface elements

Triangular facet quality on 12 faces
Triangles: 48180, Max: 1.0, Min: 0.710249, Mean: 0.973956, Power2Mean: 0.972863

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 855960, Max: 1.305685, Min: 0.450922, RMS: 1.023181, Power2Mean: 0.998245, Worst cell: 2

Total nodes:    150863
Tetrahedra:     855960
Total volume: 13824.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 09:52:08
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 09:52:05
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Racetrack
       Current Densities: 880000.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   155645 nodes in the model
   1040472 edges in the model
   Only linear elements exist in the model
   855960 linear tetrahedral elements

   Symmetry:
   none
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
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='ModelBody'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** CLEAR REVERT=NO
Data changes within the model will be lost.
(this operation cannot be UNDONE)
Continue?
YES or NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** YES
Information: modeller.comi was not found in the local or home directory
Command language initialization.
**** COMMAND INPUT ***
**** COMMAND INPUT *** RACETRACK OPTION=LOAD
**** COMMAND INPUT *** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
*** COMMENT ********** // create reduced airblock
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
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
**** COMMAND INPUT *** RACETRACK OPTION=LOAD
**** COMMAND INPUT *** RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** SKETCH OBJECT=BLOCK +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
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
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 10742 surface elements

Triangular facet quality on 12 faces
Triangles: 10742, Max: 1.0, Min: 0.699641, Mean: 0.9758, Power2Mean: 0.974644

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 108307, Max: 1.298877, Min: 0.438502, RMS: 1.023483, Power2Mean: 0.999397, Worst cell: 2

Total nodes:    20318
Tetrahedra:     108307
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:13:00
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:13:00
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR
ERROR: No total potential regions exist in the model

   There are no circuits in the model

   20948 nodes in the model
   135217 edges in the model
   Only linear elements exist in the model
   108307 linear tetrahedral elements

   Symmetry:
   Positive reflection in XY plane
   Positive reflection in YZ plane
   Negative reflection in ZX plane

ERRORS:
1 error when preparing simulation

Database will not solve while errors exist
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 50)
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
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
12 faces completed, generating 10742 surface elements

Triangular facet quality on 12 faces
Triangles: 10742, Max: 1.0, Min: 0.699641, Mean: 0.9758, Power2Mean: 0.974644

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 108307, Max: 1.298877, Min: 0.438502, RMS: 1.023483, Power2Mean: 0.999397, Worst cell: 2

Total nodes:    20318
Tetrahedra:     108307
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:13:12
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:13:12
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR
ERROR: No total potential regions exist in the model

   There are no circuits in the model

   20948 nodes in the model
   135217 edges in the model
   Only linear elements exist in the model
   108307 linear tetrahedral elements

   Symmetry:
   Positive reflection in XY plane
   Positive reflection in YZ plane
   Negative reflection in ZX plane

ERRORS:
1 error when preparing simulation

Database will not solve while errors exist
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 50)
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
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
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=1 Z0=6 X1=-6 Y1=-1 Z1=-6 MATERIALLABEL='Air' LEVEL=300
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
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Potential: keeping Total, Default has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
17 faces completed, generating 10658 surface elements

Triangular facet quality on 17 faces
Triangles: 10658, Max: 1.0, Min: 0.710594, Mean: 0.975441, Power2Mean: 0.974137

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 3 cells
Tetrahedra: 106380, Max: 1.301066, Min: 0.417537, RMS: 1.023451, Power2Mean: 0.999474, Worst cell: 3

Total nodes:    19911
Tetrahedra:     106380
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
Files already exist:
     pure_perturbation.op3
     pure_perturbation.opc
Do you want to overwrite?
YES or NO
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
DCOD Message  32:Too many fields found on line. Maximum   1. (FREFMT)
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 56)
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
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=1 Z0=6 X1=-6 Y1=-1 Z1=-6 MATERIALLABEL='Air' LEVEL=300
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
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** //// Symmetry
**** FILE INPUT ****** BACKGROUND OPTION=LOAD
**** FILE INPUT ******
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
**** FILE INPUT ******
**** FILE INPUT ****** BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Potential: keeping Total, Default has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
17 faces completed, generating 10658 surface elements

Triangular facet quality on 17 faces
Triangles: 10658, Max: 1.0, Min: 0.710594, Mean: 0.975441, Power2Mean: 0.974137

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 3 cells
Tetrahedra: 106380, Max: 1.301066, Min: 0.417537, RMS: 1.023451, Power2Mean: 0.999474, Worst cell: 3

Total nodes:    19911
Tetrahedra:     106380
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:14:46
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:14:46
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   20702 nodes in the model
   133137 edges in the model
   Only linear elements exist in the model
   106380 linear tetrahedral elements

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
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** MODEL DELETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=PICK
**** COMMAND INPUT *** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** COMMAND INPUT *** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
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
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=1 Z0=6 X1=-6 Y1=-1 Z1=-6 MATERIALLABEL='Air' LEVEL=300
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
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
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
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Potential: keeping Total, Default has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
17 faces completed, generating 89390 surface elements

Triangular facet quality on 17 faces
Triangles: 89390, Max: 1.0, Min: 0.627883, Mean: 0.972399, Power2Mean: 0.970897

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06
Mesh Abort :: user abort.
Mesh Generator Type II Error Number : 5
 Error Message : Failed to generate tet mesh: user interrupt
Command file processing aborted
Aborted file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 52)
Mesh Generator Type II Error Number : 5  Error Message : Failed to generate tet mesh: user interrupt
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
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
*** COMMENT ********** / create total airblock
**** FILE INPUT ****** SKETCH OBJECT=BLOCK +COMPLETE
**** FILE INPUT ****** BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
Updating unique body name to 'Block-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
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
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
18 faces completed, generating 36800 surface elements

Triangular facet quality on 18 faces
Triangles: 36800, Max: 1.0, Min: 0.604433, Mean: 0.973494, Power2Mean: 0.972019

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 3 cells
Tetrahedra: 688347, Max: 1.39692, Min: 0.413683, RMS: 1.025074, Power2Mean: 0.999487, Worst cell: 2

Total nodes:    119591
Tetrahedra:     688347
Total volume: 1728.0
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:27:53
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:27:52
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
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

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   126624 nodes in the model
   840223 edges in the model
   Only linear elements exist in the model
   688347 linear tetrahedral elements

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
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
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
**** COMMAND INPUT *** STRAIGHT OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=1 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=LOAD
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
**** COMMAND INPUT *** STRAIGHT OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=TOLERANCE DRIVELABEL='Default_Drive' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** SKETCH OBJECT=CYLINDER +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=-5.6 Y0=0 Z0=0 X1=5.6 Y1=0 Z1=0 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-5.6 X1=0 Y1=0 Z1=5.6 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Default_Drive' LCNAME='Global coordinate system' XCEN2=2.75 YCEN2=0 ZCEN2=0 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** THREED OPTION=SETVIEW SIZE=0
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Default_Drive' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
*** COMMENT ********** /++
*** COMMENT ********** /++ MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
*** COMMENT ********** /++
*** COMMENT ********** /++ FILL TOL=1.0E-06
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ //// Create database
*** COMMENT ********** /++ SOLVERS ELEMENT=LINEAR,
*** COMMENT ********** / SOLVERS SOLVENOW=NO SAVEMODEL=YES,
*** COMMENT ********** / SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
*** COMMENT ********** / COMMENT CLEAR=YES TYPE=DBTITLE
*** COMMENT ********** / COMMENT TEXT='Perturbation in vacuum, to test field created at center'
*** COMMENT ********** / SOLVERS OPTION=OVERWRITE
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
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ //// Create Model Body
*** COMMENT ********** /++ MODEL CREATE
*** COMMENT ********** /++
*** COMMENT ********** /++ MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
*** COMMENT ********** /++
*** COMMENT ********** /++ FILL TOL=1.0E-06
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** /++ //// Create database
*** COMMENT ********** /++ SOLVERS ELEMENT=LINEAR,
*** COMMENT ********** / SOLVERS SOLVENOW=NO SAVEMODEL=YES,
*** COMMENT ********** / SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
*** COMMENT ********** / COMMENT CLEAR=YES TYPE=DBTITLE
*** COMMENT ********** / COMMENT TEXT='Perturbation in vacuum, to test field created at center'
*** COMMENT ********** / SOLVERS OPTION=OVERWRITE
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
**** COMMAND INPUT *** SKETCH OBJECT=CYLINDER +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.75 X1=0 Y1=0 Z1=2.75 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air'
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air'
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air'
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** COMMAND INPUT ***
**** COMMAND INPUT *** SKETCH OBJECT=CYLINDER +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=START REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=1 MINORRADIUS=1 TOPRADIUS=1 SIDES=2 MATERIALLABEL='Air' LEVEL=100
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=END REDISPLAY=NO
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=1 MINORRADIUS=1 TOPRADIUS=1 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=1 MINORRADIUS=1 TOPRADIUS=1 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 1048 surface elements

Triangular facet quality on 8 faces
Triangles: 1048, Max: 0.999972, Min: 0.763349, Mean: 0.963311, Power2Mean: 0.959911

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 3504, Max: 1.340412, Min: 0.517133, RMS: 1.047284, Power2Mean: 1.018568, Worst cell: 1

Total nodes:    721
Tetrahedra:     3504
Total volume: 16.77847
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:44:34
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:44:34
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   6359 nodes in the model
   5378 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   3504 tetrahedral elements (153 linear and 3351 quadratic)
   3504 elements in total

   Symmetry:
   none
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.3, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=1 MINORRADIUS=1 TOPRADIUS=1 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.5, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Size: keeping 0.3, 0.5 has been lost
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 1068 surface elements

Triangular facet quality on 8 faces
Triangles: 1068, Max: 0.999999, Min: 0.607795, Mean: 0.966119, Power2Mean: 0.96296

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 3675, Max: 1.320873, Min: 0.544274, RMS: 1.041978, Power2Mean: 1.014542, Worst cell: 2

Total nodes:    754
Tetrahedra:     3675
Total volume: 16.78415
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
Files already exist:
     pure_perturbation.op3
     pure_perturbation.opc
Do you want to overwrite?
YES or NO
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
DCOD Message  32:Too many fields found on line. Maximum   1. (FREFMT)
Command file processing aborted
Check the log file or console for details.
Error in file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 79)
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=1 MINORRADIUS=1 TOPRADIUS=1 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.3, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Size: keeping 0.1, 0.3 has been lost
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 5696 surface elements

Triangular facet quality on 8 faces
Triangles: 5696, Max: 0.999995, Min: 0.66095, Mean: 0.975223, Power2Mean: 0.973456

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 51863, Max: 1.298774, Min: 0.339228, RMS: 1.031254, Power2Mean: 1.0072, Worst cell: 1

Total nodes:    9066
Tetrahedra:     51863
Total volume: 17.15316
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:45:19
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:45:19
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   52871 nodes in the model
   67878 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   51863 tetrahedral elements (27046 linear and 24817 quadratic)
   51863 elements in total

   Symmetry:
   none
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=1 MINORRADIUS=1 TOPRADIUS=1 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.3, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Size: keeping 0.1, 0.3 has been lost
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 5696 surface elements

Triangular facet quality on 8 faces
Triangles: 5696, Max: 0.999995, Min: 0.66095, Mean: 0.975223, Power2Mean: 0.973456

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 51863, Max: 1.298774, Min: 0.339228, RMS: 1.031254, Power2Mean: 1.0072, Worst cell: 1

Total nodes:    9066
Tetrahedra:     51863
Total volume: 17.15316
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:47:19
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:47:18
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   52871 nodes in the model
   67878 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   51863 tetrahedral elements (27046 linear and 24817 quadratic)
   51863 elements in total

   Symmetry:
   none
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
**** COMMAND INPUT *** SKETCH OBJECT=CYLINDER +COMPLETE
**** COMMAND INPUT ***
**** COMMAND INPUT *** CYLINDER Name='Cylinder' X0=0 Y0=-1 Z0=0 X1=0 Y1=1 Z1=0 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=35 MINORRADIUS=35 TOPRADIUS=35 SIDES=2
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.3, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;10;0.5
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Size: keeping 0.1, 0.3 has been lost
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 8832 surface elements

Triangular facet quality on 8 faces
Triangles: 8832, Max: 1.0, Min: 0.593761, Mean: 0.977687, Power2Mean: 0.976306

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 90106, Max: 1.317807, Min: 0.396677, RMS: 1.027869, Power2Mean: 1.003552, Worst cell: 2

Total nodes:    16163
Tetrahedra:     90106
Total volume: 155.8716
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:51:13
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:51:13
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   21 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
                            9.5 10.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   67779 nodes in the model
   114832 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   90106 tetrahedral elements (60726 linear and 29380 quadratic)
   90106 elements in total

   Symmetry:
   none
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
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=TOSCAMAGN OPTION=CLEAR
1 cases have been deleted.
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=TOSCAMAGN OPTION=INSERT VALUE=10000 INDEX=1
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=TOSCAMAGN OPTION=DELETE INDEX=2
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=TOSCAMAGN HX=0 HY=0 HZ=0 LINEAR=NO NITERATIONS=21 NLITERTYPE=NEWTON POTENTIALCUT=YES RHS=ADAPTIVE SCALEDRIVE=Perturbation TOLERANCE=0.001 USEDEFORMEDMESH=NO USEDIRECTSOLVER=NO
Analysis type changed to: TOSCAMAGN
**** COMMAND INPUT ***
*** COMMENT ********** //// Create database
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 11:56:20
   Magnetostatic Analysis (TOSCA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 11:56:20
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Constant
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   1 solution scaling factor defined for drive PERTURBATION: 10000.0

   Materials defined:
   AIR

   67779 nodes in the model
   114832 edges in the model
   Both linear and quadratic elements exist in the model
   90106 tetrahedral elements (60726 linear and 29380 quadratic)
   90106 elements in total

   Symmetry:
   none
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=TOSCAMAGN OPTION=CLEAR
1 cases have been deleted.
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=TOSCAMAGN HX=0 HY=0 HZ=0 LINEAR=NO NITERATIONS=21 NLITERTYPE=NEWTON POTENTIALCUT=YES RHS=ADAPTIVE SCALEDRIVE=Perturbation TOLERANCE=0.001 USEDEFORMEDMESH=NO USEDIRECTSOLVER=NO
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=1
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.3, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=TOSCAMAGN HX=0 HY=0 HZ=0 LINEAR=NO NITERATIONS=21 NLITERTYPE=NEWTON POTENTIALCUT=YES RHS=ADAPTIVE SCALEDRIVE=Perturbation TOLERANCE=0.001 USEDEFORMEDMESH=NO USEDIRECTSOLVER=NO
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Size: keeping 0.1, 0.3 has been lost
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 8832 surface elements

Triangular facet quality on 8 faces
Triangles: 8832, Max: 1.0, Min: 0.593761, Mean: 0.977687, Power2Mean: 0.976306

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 90106, Max: 1.317807, Min: 0.396677, RMS: 1.027869, Power2Mean: 1.003552, Worst cell: 2

Total nodes:    16163
Tetrahedra:     90106
Total volume: 155.8716
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 12:05:56
   Magnetostatic Analysis (TOSCA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 12:05:55
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Constant

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   1 solution scaling factor defined for drive PERTURBATION: 1.0

   Materials defined:
   AIR

   67779 nodes in the model
   114832 edges in the model
   Both linear and quadratic elements exist in the model
   90106 tetrahedral elements (60726 linear and 29380 quadratic)
   90106 elements in total

   Symmetry:
   none
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
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY SCALE=10000
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY SCALE=10000
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY SCALE=10000
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.3, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=TOSCAMAGN HX=0 HY=0 HZ=0 LINEAR=NO NITERATIONS=21 NLITERTYPE=NEWTON POTENTIALCUT=YES RHS=ADAPTIVE SCALEDRIVE=Perturbation TOLERANCE=0.001 USEDEFORMEDMESH=NO USEDIRECTSOLVER=NO
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Size: keeping 0.1, 0.3 has been lost
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 8832 surface elements

Triangular facet quality on 8 faces
Triangles: 8832, Max: 1.0, Min: 0.593761, Mean: 0.977687, Power2Mean: 0.976306

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 90106, Max: 1.317807, Min: 0.396677, RMS: 1.027869, Power2Mean: 1.003552, Worst cell: 2

Total nodes:    16163
Tetrahedra:     90106
Total volume: 155.8716
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation.op3, simulation number 0 on 14/Jun/2024 at 12:09:06
   Magnetostatic Analysis (TOSCA)

   File: pure_perturbation.op3 simulation:  1
   Created on: 14/Jun/2024 12:09:06
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Constant
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   1 solution scaling factor defined for drive PERTURBATION: 1.0

   Materials defined:
   AIR

   67779 nodes in the model
   114832 edges in the model
   Both linear and quadratic elements exist in the model
   90106 tetrahedral elements (60726 linear and 29380 quadratic)
   90106 elements in total

   Symmetry:
   none
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
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0:10:1 INDEX=1
DCOD Message  71:Syntax error in expression '0:10:1' (DECODE)
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;10;1 INDEX=1
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=YES SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 13:17:56
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 13:17:55
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   11 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   67779 nodes in the model
   114832 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   90106 tetrahedral elements (60726 linear and 29380 quadratic)
   90106 elements in total

   Symmetry:
   none
*** CONTROL COMMAND ** $OS OPERAANL WRD2=ElektraTR WRD3='pure_perturbation_AC.op3' WRD4=BACK
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.1 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.3, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;10;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Size: keeping 0.1, 0.3 has been lost
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 19539 surface elements

Triangular facet quality on 8 faces
Triangles: 19539, Max: 1.0, Min: 0.623595, Mean: 0.977768, Power2Mean: 0.976518

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 175354, Max: 1.39255, Min: 0.416422, RMS: 1.032635, Power2Mean: 1.006784, Worst cell: 2

Total nodes:    30687
Tetrahedra:     175354
Total volume: 155.8765
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 13:23:23
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 13:23:23
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   11 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   166026 nodes in the model
   229825 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   175354 tetrahedral elements (98949 linear and 76405 quadratic)
   175354 elements in total

   Symmetry:
   none
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;10;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 42692 surface elements

Triangular facet quality on 8 faces
Triangles: 42692, Max: 0.999999, Min: 0.721287, Mean: 0.980796, Power2Mean: 0.980074

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06
Mesh Abort :: user abort.
Mesh Generator Type II Error Number : 5
 Error Message : Failed to generate tet mesh: user interrupt
Command file processing aborted
Aborted file: 'C:\Users\mzhao\OPERA_MSR\transient_test.comi' (Line 75)
Mesh Generator Type II Error Number : 5  Error Message : Failed to generate tet mesh: user interrupt
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;10;1 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 42692 surface elements

Triangular facet quality on 8 faces
Triangles: 42692, Max: 0.999999, Min: 0.721287, Mean: 0.980796, Power2Mean: 0.980074

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 1179640, Max: 1.322739, Min: 0.32971, RMS: 1.022493, Power2Mean: 0.997052, Worst cell: 2

Total nodes:    204037
Tetrahedra:     1179640
Total volume: 156.0525
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 13:24:44
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 13:24:40
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   11 output times defined: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0
   Simple fixed time-steps
   Time-step: 1.0
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;2.5;0.5 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
Warning: merging cells with conflicting data (storage level 300)
  Conflict in property Potential: keeping Reduced, Total has been lost

**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 42692 surface elements

Triangular facet quality on 8 faces
Triangles: 42692, Max: 0.999999, Min: 0.721287, Mean: 0.980796, Power2Mean: 0.980074

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 1179640, Max: 1.322739, Min: 0.32971, RMS: 1.022493, Power2Mean: 0.997052, Worst cell: 2

Total nodes:    204037
Tetrahedra:     1179640
Total volume: 156.0525
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 13:38:35
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 13:38:32
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   6 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
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
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=DC SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=YES SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 13:48:36
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 13:48:33
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Constant
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   6 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
*** CONTROL COMMAND ** $OS OPERAANL WRD2=ElektraTR WRD3='pure_perturbation_AC.op3' WRD4=BACK
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=0.5 MINORRADIUS=0.5 TOPRADIUS=0.5 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=100 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Analysis Settings
**** FILE INPUT ****** MULTIPHYSICS OPTION=RESET
**** FILE INPUT ****** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;2.5;0.5 INDEX=1
**** FILE INPUT ****** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create Model Body
**** FILE INPUT ****** MODEL CREATE
**** FILE INPUT ******
**** FILE INPUT ****** MESH GENERATOR=AUTOMATIC SIZE=0.5 NORMALTOL=30.0 SURFACETOL=0.0 TOLERANCE=1.0E-06 TYPE=PREFERTETRA
Mesh generator Type II
8 faces completed, generating 42692 surface elements

Triangular facet quality on 8 faces
Triangles: 42692, Max: 0.999999, Min: 0.721287, Mean: 0.980796, Power2Mean: 0.980074

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 1179640, Max: 1.322739, Min: 0.32971, RMS: 1.022493, Power2Mean: 0.997052, Worst cell: 2

Total nodes:    204037
Tetrahedra:     1179640
Total volume: 156.0525
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 13:52:36
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 13:52:33
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   6 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
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
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:00:33
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:00:31
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   6 output times defined: 0.0 0.5 1.0 1.5 2.0 2.5
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=CLEAR
6 cases have been deleted.
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=DC SCALE=10000
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=DC SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=YES SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:14:49
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:14:46
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Constant
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   1 output times defined: 0.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
*** CONTROL COMMAND ** $OS OPERAANL WRD2=ElektraTR WRD3='pure_perturbation_AC.op3' WRD4=BACK
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=COSINE COSFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=COSINE COSFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=YES SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:18:12
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:18:09
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Cosine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   1 output times defined: 0.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
*** CONTROL COMMAND ** $OS OPERAANL WRD2=ElektraTR WRD3='pure_perturbation_AC.op3' WRD4=BACK
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=TOSCAMAGN OPTION=CLEAR
1 cases have been deleted.
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=TOSCAMAGN CONVTOL=1e-08 HX=0 HY=0 HZ=0 LINEAR=YES POTENTIALCUT=YES RHS=ADAPTIVE SCALEDRIVE=ALL USEDEFORMEDMESH=NO USEDIRECTSOLVER=NO
Analysis type changed to: TOSCAMAGN
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS SOLVENOW=YES SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE ELEMENT=LINEAR SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:21:18
   Magnetostatic Analysis (TOSCA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:21:15
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Constant
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
        Note: Assumed as the default boundary condition to one or more external faces.

   Linear solution

   No periodicity conditions have been defined

   1 solution scaling factor defined for all drives: 1.0

   Materials defined:
   AIR

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
*** CONTROL COMMAND ** $OS OPERAANL WRD2=ToscaMagn WRD3='pure_perturbation_AC.op3' WRD4=BACK
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=TOSCAMAGN HX=0 HY=0 HZ=0 LINEAR=NO NITERATIONS=21 NLITERTYPE=NEWTON POTENTIALCUT=YES RHS=ADAPTIVE SCALEDRIVE=ALL TOLERANCE=0.001 USEDEFORMEDMESH=NO USEDIRECTSOLVER=NO
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS SOLVENOW=YES SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE ELEMENT=LINEAR SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:23:32
   Magnetostatic Analysis (TOSCA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:23:29
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Constant
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGMAGN
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   1 solution scaling factor defined for all drives: 1.0

   Materials defined:
   AIR

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
*** CONTROL COMMAND ** $OS OPERAANL WRD2=ToscaMagn WRD3='pure_perturbation_AC.op3' WRD4=BACK
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=0.5 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
Analysis type changed to: ELEKTRATR
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=COSINE COSFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** SOLVERS ELEMENT=LINEAR,
**** COMMAND INPUT *** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** COMMAND INPUT *** SOLVERS OPTION=TEST FILE='pure_perturbation_AC.op3' UNITS=METRE SURFACE=CURVED
**** COMMAND INPUT *** COMMENT CLEAR=YES TYPE=DBTITLE
**** COMMAND INPUT *** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:30:38
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:30:35
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2
   User did not enter a title

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Cosine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
     TANGELEC
        Note: Assumed as the default boundary condition to one or more external faces.

   Nonlinear iteration data
   Newton-Raphson Iterations
   Maximum Iterations: 21
   Tolerance: 1.0E-03

   No periodicity conditions have been defined

   1 output times defined: 0.0
   Simple fixed time-steps
   Time-step: 0.5
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\pure_perturbation_AC_elektratr.comi
   Time-stepping command file cannot be found:
   C:\Users\mzhao\OPERA_MSR\control_elektratr.comi

   Materials defined:
   AIR

   There are no circuits in the model

   369658 nodes in the model
   1409196 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1179640 tetrahedral elements (1082442 linear and 97198 quadratic)
   1179640 elements in total

   Symmetry:
   none
**** COMMAND INPUT ***
**** COMMAND INPUT *** STRAIGHT OPTION=LOAD
**** COMMAND INPUT ***
**** COMMAND INPUT *** CEDITOR OPTION=START
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=ADD VALUE=0;100;1
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT ***
**** COMMAND INPUT *** PREVIEW OPTION=UNPICK REDISPLAY=YES
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT *** DRIVE GUIINIT
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE PICK 'Perturbation'
**** COMMAND INPUT ***
**** COMMAND INPUT *** DRIVE OPTION=MODIFY TYPE=COSINE COSFREQUENCY=0.1 SCALE=10000
**** COMMAND INPUT *** DRIVE UNPICK
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=GUIUPDATE
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Reduced
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Reduced
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=ADD,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=REMOVE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=REMOVE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Reduced
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Reduced
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Reduced
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Reduced
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Reduced
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Size
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Size
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** PICK OPTION=TOGGLE,
**** COMMAND INPUT *** PICK PROPERTY=Potential LABEL=Total
**** COMMAND INPUT ***
**** COMMAND INPUT *** MULTIPHYSICS OPTION=RESET
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=CLEAR
101 cases have been deleted.
**** COMMAND INPUT ***
**** COMMAND INPUT *** DBCASEDATA PROGRAM=ELEKTRATR OPTION=INSERT VALUE=0;100;1 INDEX=1
**** COMMAND INPUT ***
**** COMMAND INPUT *** ANALYSISDATA OPTION=SET PROGRAM=ELEKTRATR DELTAT=1 HX=0 HY=0 HZ=0 LINEAR=NO LOGLIST= LOGLIST+=TTime NITERATIONS=21 NLITERTYPE=NEWTON RHS=ADAPTIVE TOLERANCE=0.001 UPDATE=SIMPLE USEDEFORMEDMESH=NO
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
*** COMMENT ********** /++ //// Perturbation Coil
*** COMMENT ********** /++ // Build coil geometry
*** COMMENT ********** /++ RACETRACK OPTION=LOAD
*** COMMENT ********** /++ RACETRACK OPTION=NEW -KEEP XP1=2.75 YP1=-5.0E-03 WIDTH=0.01 THICKNESS=0.01 H1=2.75 R1=0.01 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' THETA2=0 PHI2=0 PSI2=0 XCEN2=0 YCEN2=0 ZCEN2=0 LCNAME='Global coordinate system' RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** /++ // Set current, with scale factor to corrrect units
*** COMMENT ********** /++ DRIVE UNPICK
*** COMMENT ********** / DRIVE GUIINIT
*** COMMENT ********** /++ DRIVE PICK 'Perturbation'
*** COMMENT ********** /++ DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
*** COMMENT ********** / DRIVE UNPICK
*** COMMENT ********** /++
*** COMMENT ********** /++
*** COMMENT ********** /++ // create reduced airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=3 Y0=1 Z0=3 X1=-3 Y1=-1 Z1=-3 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ / create total airblock
*** COMMENT ********** /++ SKETCH OBJECT=BLOCK +COMPLETE
*** COMMENT ********** /++ BLOCK Name='Block' X0=6 Y0=6 Z0=6 X1=-6 Y1=-6 Z1=-6 MATERIALLABEL='Air' LEVEL=300
*** COMMENT ********** /++ FILTER TYPE=BODY
*** COMMENT ********** /++ PREVIEW OPTION=PICK
*** COMMENT ********** / PICK OPTION=ADD PROPERTY=UniqueName LABEL='Block'
*** COMMENT ********** /++ PREVIEW OPTION=ACCEPT REDISPLAY=NO
*** COMMENT ********** / CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=TOTAL ELEMENTTYPE=Linear LEVEL=300 SIZE=0.05 ELEMSHAPEPREF=NONE
*** COMMENT ********** /++
*** COMMENT ********** /++ //// Symmetry
*** COMMENT ********** /++ BACKGROUND OPTION=LOAD
*** COMMENT ********** /++
*** COMMENT ********** /++ /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=NO YZSYMMETRYPLANE=NO ROTZNUM=1 ZXSYMMETRYPLANE=NO
*** COMMENT ********** /++
*** COMMENT ********** /++ BACKGROUND OPTION=SET SHAPE=BLOCK SCALEX=2 SCALEY=2 SCALEZ=2   XYSYMMETRYPLANE=YES YZSYMMETRYPLANE=YES ROTZNUM=1 ZXSYMMETRYPLANE=YES EMRYZ=TANGMAGN EMRXY=TANGMAGN EMRZX=NORMMAGN
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// simple straight conductor test
**** FILE INPUT ******
**** FILE INPUT ****** STRAIGHT OPTION=LOAD
**** FILE INPUT ****** STRAIGHT OPTION=NEW -KEEP WIDTH=0.01 THICKNESS=0.01 H1=5.5 INCIRCUIT=NO CIRCUITELEMENT= CURD=88 TOLERANCE=0 DRIVELABEL='Perturbation' LCNAME='Global coordinate system' XCEN2=0 YCEN2=0 ZCEN2=-2.75 THETA2=0 PHI2=0 PSI2=0 RXY=0 RYZ=0 RZX=0 SYMMETRY=1 MODELCOMPONENT=NO
*** COMMENT ********** // Set current, with scale factor to corrrect units
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ****** DRIVE GUIINIT
**** FILE INPUT ****** DRIVE PICK 'Perturbation'
**** FILE INPUT ****** DRIVE OPTION=MODIFY TYPE=SINE SINFREQUENCY=0.1 SCALE=10000
**** FILE INPUT ****** DRIVE UNPICK
**** FILE INPUT ******
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3 MINORRADIUS=3 TOPRADIUS=3 SIDES=2 MATERIALLABEL='Air' LEVEL=300
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Reduced ELEMENTTYPE=Linear LEVEL=300 SIZE=0.1, ELEMSHAPEPREF=NONE
**** FILE INPUT ******
**** FILE INPUT ****** SKETCH OBJECT=CYLINDER +COMPLETE
**** FILE INPUT ****** PREVIEW OPTION=END REDISPLAY=NO
**** FILE INPUT ****** CYLINDER Name='Cylinder' X0=0 Y0=0 Z0=-2.76 X1=0 Y1=0 Z1=2.76 -TUBE SHAPECONTROL=SIMPLE MAJORRADIUS=3.1 MINORRADIUS=3.1 TOPRADIUS=3.1 SIDES=2 MATERIALLABEL='Air' LEVEL=100
Updating unique body name to 'Cylinder-001'
**** FILE INPUT ****** FILTER TYPE=BODY
**** FILE INPUT ****** PREVIEW OPTION=PICK
**** FILE INPUT ****** PICK OPTION=ADD PROPERTY=UniqueName LABEL='Cylinder-001'
**** FILE INPUT ****** PREVIEW OPTION=ACCEPT REDISPLAY=NO
**** FILE INPUT ****** CELLDATA OPTION=MODIFY MATERIALLABEL='Air' POTENTIAL=Total ELEMENTTYPE=Linear LEVEL=100 SIZE=0.1, ELEMSHAPEPREF=NONE
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
8 faces completed, generating 64826 surface elements

Triangular facet quality on 8 faces
Triangles: 64826, Max: 1.0, Min: 0.702212, Mean: 0.980959, Power2Mean: 0.980247

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06

Tetrahedral element quality on 2 cells
Tetrahedra: 1257205, Max: 1.326142, Min: 0.208066, RMS: 1.023377, Power2Mean: 0.997785, Worst cell: 2

Total nodes:    217378
Tetrahedra:     1257205
Total volume: 166.6308
**** FILE INPUT ******
**** FILE INPUT ******
*** COMMENT ********** //// Create database
**** FILE INPUT ****** SOLVERS ELEMENT=LINEAR,
**** FILE INPUT ****** SOLVERS SOLVENOW=NO SAVEMODEL=YES,
**** FILE INPUT ****** SOLVERS OPTION=TEST FILE='pure_perturbation_AC' UNITS=METRE SURFACE=CURVED
**** FILE INPUT ****** COMMENT CLEAR=YES TYPE=DBTITLE
**** FILE INPUT ****** COMMENT TEXT='Perturbation in vacuum, to test field created at center'
**** FILE INPUT ****** SOLVERS OPTION=OVERWRITE
Opening database pure_perturbation_AC.op3, simulation number 0 on 14/Jun/2024 at 14:48:37
   Transient Electromagnetic Analysis (ELEKTRA)

   File: pure_perturbation_AC.op3 simulation:  1
   Created on: 14/Jun/2024 14:48:33
   In Directory:
   C:\Users\mzhao\OPERA_MSR\
   By Machine:
   Node: TUCAN-MAGPC. Processor: Intel64. System: Windows. version 10
   Log Files: Modeller_202406131459401441.log/lp
   Simulation created using: Opera-3d/Modeller Version 20.3.2

   User title:
   Perturbation in vacuum, to test field created at center

   SI units

   1 Biot-Savart conductor (current densities in A/m^2):
       1 Straight
       Current Densities: 88.0
   Adaptive RHS integrals
   Drive sets and functions
   PERTURBATION     : Coil drive type Sine (Frequency 0.1, Phase 0.0)
                    : Scaling factor: 10000.0

   Automatic potential cuts are enabled.

   Boundary conditions:
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

   478482 nodes in the model
   1531917 edges in the model
   Both linear and quadratic elements exist in the model
   In edge element simulations, quadratic elements are treated as linear,
   except for display in the Post-Processor.
   1257205 tetrahedral elements (1109232 linear and 147973 quadratic)
   1257205 elements in total

   Symmetry:
   none
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

**** FILE INPUT ******
**** FILE INPUT ****** FILL TOL=1.0E-06
Mesh Abort :: user abort.
