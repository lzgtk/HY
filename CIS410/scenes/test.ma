//Maya ASCII 2014 scene
//Name: test.ma
//Last modified: Sat, Jan 25, 2014 03:09:39 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7  (Build 7600)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0607483277598666 9.6611013859829811 -39.400265287862929 ;
	setAttr ".r" -type "double3" -2.7383527278259505 538.20000000000323 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 42.731661618445095;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.3310837370670843;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 63.434366877073337;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" 0.41914375176126928 8.9425856354283884 0.12421103792095228 ;
	setAttr ".s" -type "double3" 0.30370211753740411 0.30370211753740411 0.30370211753740411 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.73799561281272474 0.36427547213703487 8.8762027663485181 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr -s 51 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 0.15940829764842473 0 0 ;
	setAttr ".rp" -type "double3" 0.32255864047866378 10.251477038207046 0.12076850878901535 ;
	setAttr ".sp" -type "double3" 0.32255864047866378 10.251477038207046 0.12076850878901535 ;
createNode transform -n "pCylinder1_instance1" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 9.3290707138427749 8.8146519835070531 -9.8501705988282566 ;
	setAttr ".s" -type "double3" 1.1058761777855821 1.1058761777855821 1.1058761777855821 ;
createNode aimConstraint -n "pCylinder1_instance1_aimConstraint1" -p "pCylinder1_instance1";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 73.109472126622322 -39.273122935571216 51.396479645494544 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance2" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -8.3212354632583203 15.329618655835926 -5.2638044927376448 ;
	setAttr ".s" -type "double3" 1.0479377700470023 1.0479377700470023 1.0479377700470023 ;
createNode aimConstraint -n "pCylinder1_instance2_aimConstraint1" -p "pCylinder1_instance2";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 130.70115648057137 -3.2363113628882991 1.4853888300827689 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance3" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 2.316313902072304 2.9710927741657511 -6.3381870518013672 ;
	setAttr ".s" -type "double3" 1.4578818730994589 1.4578818730994589 1.4578818730994589 ;
createNode aimConstraint -n "pCylinder1_instance3_aimConstraint1" -p "pCylinder1_instance3";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 79.11263747228233 -29.940145921436081 35.875660259758128 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance4" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -8.7087543804562788 10.821763711022605 -0.6820288198338087 ;
	setAttr ".s" -type "double3" 0.62350260458333784 0.62350260458333784 0.62350260458333784 ;
createNode aimConstraint -n "pCylinder1_instance4_aimConstraint1" -p "pCylinder1_instance4";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 129.35317333852763 -1.5622510146445259 0.73928941256284952 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance5" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 1.1286512111243123 12.892684683565655 -0.3792725726696311 ;
	setAttr ".s" -type "double3" 0.84406562337179225 0.84406562337179225 0.84406562337179225 ;
createNode aimConstraint -n "pCylinder1_instance5_aimConstraint1" -p "pCylinder1_instance5";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 90.574440591600123 -51.761018837006226 51.311226659721058 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance6" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 0.60322413823180554 0.38599132619433707 0.16203851559584415 ;
	setAttr ".s" -type "double3" 0.7528169289271156 0.7528169289271156 0.7528169289271156 ;
createNode aimConstraint -n "pCylinder1_instance6_aimConstraint1" -p "pCylinder1_instance6";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 65.649933176120612 -29.717528481160741 44.713276785624018 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance7" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -8.9164960270771427 11.750570162621388 -6.7199355251607766 ;
	setAttr ".s" -type "double3" 1.2251759658237298 1.2251759658237298 1.2251759658237298 ;
createNode aimConstraint -n "pCylinder1_instance7_aimConstraint1" -p "pCylinder1_instance7";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 121.43372248652432 -0.055784793886855692 0.031283385148192303 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance8" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 9.138662446988107 2.8245552883299907 -3.892145834246028 ;
	setAttr ".s" -type "double3" 0.51281164233390486 0.51281164233390486 0.51281164233390486 ;
createNode aimConstraint -n "pCylinder1_instance8_aimConstraint1" -p "pCylinder1_instance8";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 53.366227071031993 -33.702901218365582 62.153722062731887 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance9" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -6.9085897057842072 19.094373114047897 -6.9089719982191404 ;
	setAttr ".s" -type "double3" 0.71951076235643097 0.71951076235643097 0.71951076235643097 ;
createNode aimConstraint -n "pCylinder1_instance9_aimConstraint1" -p "pCylinder1_instance9";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 133.76906563767355 -10.074705760520137 4.3095228434422417 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance10" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -3.165844144990924 16.329261134284607 -0.48130183736543586 ;
	setAttr ".s" -type "double3" 1.3578811183867276 1.3578811183867276 1.3578811183867276 ;
createNode aimConstraint -n "pCylinder1_instance10_aimConstraint1" -p "pCylinder1_instance10";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 127.82230443375006 -40.576162939849659 20.520319829817577 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance11" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -1.2080720464072066 15.62127195584962 6.2948232051539463 ;
	setAttr ".s" -type "double3" 0.82327175231929739 0.82327175231929739 0.82327175231929739 ;
createNode aimConstraint -n "pCylinder1_instance11_aimConstraint1" -p "pCylinder1_instance11";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 50.633557230750668 -64.262898247110343 106.02606964512978 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance12" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -7.6106518597757606 10.595982835157663 6.588423228348848 ;
	setAttr ".s" -type "double3" 1.0692516373820284 1.0692516373820284 1.0692516373820284 ;
createNode aimConstraint -n "pCylinder1_instance12_aimConstraint1" -p "pCylinder1_instance12";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 148.1328146743858 -23.358480458807211 6.7547376201718752 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance13" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -3.0930214959147957 14.053178980966496 6.1988116746240571 ;
	setAttr ".s" -type "double3" 0.48581579489641946 0.48581579489641946 0.48581579489641946 ;
createNode aimConstraint -n "pCylinder1_instance13_aimConstraint1" -p "pCylinder1_instance13";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 89.744170788357451 -67.489046442109952 67.725585332053683 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance14" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 6.8095833038898519 14.402559596820124 5.8712479154750437 ;
	setAttr ".s" -type "double3" 0.35728235448478252 0.35728235448478252 0.35728235448478252 ;
createNode aimConstraint -n "pCylinder1_instance14_aimConstraint1" -p "pCylinder1_instance14";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 21.550031076849802 -36.061403373646577 119.37524863758365 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance15" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -4.2773299212154487 0.75989190032952791 0.13429683888288402 ;
	setAttr ".s" -type "double3" 0.68038323198817274 0.68038323198817274 0.68038323198817274 ;
createNode aimConstraint -n "pCylinder1_instance15_aimConstraint1" -p "pCylinder1_instance15";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 85.498151661563767 -20.385744453422543 22.014630056425986 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance16" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 8.9010214002183332 1.3245520867377025 -4.8514221822460435 ;
	setAttr ".s" -type "double3" 0.77597596223296605 0.77597596223296605 0.77597596223296605 ;
createNode aimConstraint -n "pCylinder1_instance16_aimConstraint1" -p "pCylinder1_instance16";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 55.007837335610979 -31.761711094202191 57.306239879004224 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance17" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 4.0971982309887025 17.747066834504999 0.010355895210443222 ;
	setAttr ".s" -type "double3" 0.91804101070471011 0.91804101070471011 0.91804101070471011 ;
createNode aimConstraint -n "pCylinder1_instance17_aimConstraint1" -p "pCylinder1_instance17";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 69.470314727162361 -58.191446752941168 77.503024817495927 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance18" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 4.0483095379432488 3.493798368058374 1.6902362113088127 ;
	setAttr ".s" -type "double3" 0.89950476503187882 0.89950476503187882 0.89950476503187882 ;
createNode aimConstraint -n "pCylinder1_instance18_aimConstraint1" -p "pCylinder1_instance18";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 51.030914172538203 -36.257620923670764 68.896100483657619 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance19" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 5.466504089666147 10.980613451068997 -3.3248397501217024 ;
	setAttr ".s" -type "double3" 1.3108066279834327 1.3108066279834327 1.3108066279834327 ;
createNode aimConstraint -n "pCylinder1_instance19_aimConstraint1" -p "pCylinder1_instance19";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 72.881455396673218 -46.470196504218563 60.352373252957292 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance20" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -8.6050042936505751 6.5057041005825544 -9.9658725160002781 ;
	setAttr ".s" -type "double3" 0.47792871518907187 0.47792871518907187 0.47792871518907187 ;
createNode aimConstraint -n "pCylinder1_instance20_aimConstraint1" -p "pCylinder1_instance20";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 106.13195866190971 -1.0550132514661881 0.79311611925449699 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance21" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -5.6593261599672857 8.6554475711943404 4.7344971186535076 ;
	setAttr ".s" -type "double3" 1.3491429351140976 1.3491429351140976 1.3491429351140976 ;
createNode aimConstraint -n "pCylinder1_instance21_aimConstraint1" -p "pCylinder1_instance21";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 125.46897849656413 -37.845909294337531 20.039619652393316 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance22" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 9.2004932880472587 10.749754403806527 8.4213471866450043 ;
	setAttr ".s" -type "double3" 1.3065213429865812 1.3065213429865812 1.3065213429865812 ;
createNode aimConstraint -n "pCylinder1_instance22_aimConstraint1" -p "pCylinder1_instance22";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 11.589625535371736 -18.767200224098911 116.89091389707271 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance23" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -8.1426234894478675 5.2063152608305714 -1.7948395907779222 ;
	setAttr ".s" -type "double3" 0.75041814095579973 0.75041814095579973 0.75041814095579973 ;
createNode aimConstraint -n "pCylinder1_instance23_aimConstraint1" -p "pCylinder1_instance23";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 109.78725507362246 -4.2172520312777273 2.9653122663983109 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance24" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -5.7222835276356454 14.324732696582796 1.7501903173831757 ;
	setAttr ".s" -type "double3" 1.2322644486174108 1.2322644486174108 1.2322644486174108 ;
createNode aimConstraint -n "pCylinder1_instance24_aimConstraint1" -p "pCylinder1_instance24";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 137.33632482739898 -29.297228010872907 11.656877096215089 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance25" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -6.6935859053519886 6.1583432558847022 -8.5334741353680386 ;
	setAttr ".s" -type "double3" 0.87550542520504404 0.87550542520504404 0.87550542520504404 ;
createNode aimConstraint -n "pCylinder1_instance25_aimConstraint1" -p "pCylinder1_instance25";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 105.52311402319098 -7.7250278440097517 5.8755456423268049 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance26" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -1.9897626894102149 9.559239619551672 -4.3747918916489663 ;
	setAttr ".s" -type "double3" 0.92263719138090328 0.92263719138090328 0.92263719138090328 ;
createNode aimConstraint -n "pCylinder1_instance26_aimConstraint1" -p "pCylinder1_instance26";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 107.11901738356157 -30.98544060905424 23.133183469160155 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance27" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 8.5934537005460818 9.1483491366776644 3.3662102333347566 ;
	setAttr ".s" -type "double3" 1.092848439210891 1.092848439210891 1.092848439210891 ;
createNode aimConstraint -n "pCylinder1_instance27_aimConstraint1" -p "pCylinder1_instance27";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 31.076777702572848 -35.610386788911953 98.231707937638802 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance28" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -7.9257835407686938 7.3326750053491168 5.8812078052483763 ;
	setAttr ".s" -type "double3" 1.0056209593872378 1.0056209593872378 1.0056209593872378 ;
createNode aimConstraint -n "pCylinder1_instance28_aimConstraint1" -p "pCylinder1_instance28";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 136.35839558247835 -14.910769799978484 5.9986020437668923 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance29" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 9.6033752484450687 15.071605258129734 9.9135590031225433 ;
	setAttr ".s" -type "double3" 1.4351641233405579 1.4351641233405579 1.4351641233405579 ;
createNode aimConstraint -n "pCylinder1_instance29_aimConstraint1" -p "pCylinder1_instance29";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 6.3527851195712008 -12.896704292908604 127.69686997596411 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance30" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -4.1243734117552489 3.8913265629353311 6.2856872006603624 ;
	setAttr ".s" -type "double3" 0.70756109217052054 0.70756109217052054 0.70756109217052054 ;
createNode aimConstraint -n "pCylinder1_instance30_aimConstraint1" -p "pCylinder1_instance30";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 82.304951871072063 -44.30382851606948 49.954215750665185 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance31" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -3.3153027424269528 6.4212236490891055 -4.6499240271812248 ;
	setAttr ".s" -type "double3" 1.2889662198297946 1.2889662198297946 1.2889662198297946 ;
createNode aimConstraint -n "pCylinder1_instance31_aimConstraint1" -p "pCylinder1_instance31";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 102.95775008414788 -23.243511293029375 18.595747218303565 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance32" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -4.8569878381678873 2.7416661188860725 -9.4324185856369631 ;
	setAttr ".s" -type "double3" 1.0999197109473575 1.0999197109473575 1.0999197109473575 ;
createNode aimConstraint -n "pCylinder1_instance32_aimConstraint1" -p "pCylinder1_instance32";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 94.95440582216051 -11.613629411101693 10.656226145508656 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance33" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 9.8132084776473931 10.313050054822536 -1.3088920848461889 ;
	setAttr ".s" -type "double3" 0.66619382734380617 0.66619382734380617 0.66619382734380617 ;
createNode aimConstraint -n "pCylinder1_instance33_aimConstraint1" -p "pCylinder1_instance33";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 47.025757358869477 -42.146301796694139 83.059604097620749 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance34" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 3.9616089292719252 18.190053936811424 -5.6080181378502907 ;
	setAttr ".s" -type "double3" 1.119301705822791 1.119301705822791 1.119301705822791 ;
createNode aimConstraint -n "pCylinder1_instance34_aimConstraint1" -p "pCylinder1_instance34";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 97.602314777685166 -50.493794737847679 44.862318610240983 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance35" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -3.3781725373031701 11.283596639276459 -6.7493141475347667 ;
	setAttr ".s" -type "double3" 0.46792641768917331 0.46792641768917331 0.46792641768917331 ;
createNode aimConstraint -n "pCylinder1_instance35_aimConstraint1" -p "pCylinder1_instance35";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 114.20010181902383 -23.375241737047652 15.244812826197503 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance36" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 0.64627567270860276 12.397236238156886 -7.0893619162743349 ;
	setAttr ".s" -type "double3" 0.9077179558971944 0.9077179558971944 0.9077179558971944 ;
createNode aimConstraint -n "pCylinder1_instance36_aimConstraint1" -p "pCylinder1_instance36";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 104.78581326914512 -36.114932780240551 28.195444668819373 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance37" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 0.10007212927165732 15.468967466526314 7.0635463057195551 ;
	setAttr ".s" -type "double3" 0.94209747263940402 0.94209747263940402 0.94209747263940402 ;
createNode aimConstraint -n "pCylinder1_instance37_aimConstraint1" -p "pCylinder1_instance37";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 29.520097554583103 -53.845939745812686 125.15912128782354 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance38" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 1.9839831954603415 8.9267551959881857 -2.5659254090953372 ;
	setAttr ".s" -type "double3" 1.3635733191188537 1.3635733191188537 1.3635733191188537 ;
createNode aimConstraint -n "pCylinder1_instance38_aimConstraint1" -p "pCylinder1_instance38";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 85.287710419618222 -42.882861371771931 46.190214921157825 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance39" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 2.0808450299437204 1.4180411866542575 -5.4415397907413503 ;
	setAttr ".s" -type "double3" 1.1268627563338207 1.1268627563338207 1.1268627563338207 ;
createNode aimConstraint -n "pCylinder1_instance39_aimConstraint1" -p "pCylinder1_instance39";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 75.205707946928015 -28.403249894796652 36.379291937162854 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance40" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -2.40426501783978 9.8557184602633647 -8.9510486975552119 ;
	setAttr ".s" -type "double3" 1.4151498139527874 1.4151498139527874 1.4151498139527874 ;
createNode aimConstraint -n "pCylinder1_instance40_aimConstraint1" -p "pCylinder1_instance40";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 107.94336830951258 -22.975479721242653 16.815835943018399 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance41" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -7.0421200266253869 13.538346999152813 3.0157782498044678 ;
	setAttr ".s" -type "double3" 0.72793043188543116 0.72793043188543116 0.72793043188543116 ;
createNode aimConstraint -n "pCylinder1_instance41_aimConstraint1" -p "pCylinder1_instance41";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 142.55368540893451 -20.295944094964437 6.9432774302372824 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance42" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -2.5717688478527929 3.4809886030352644 2.7884897616220439 ;
	setAttr ".s" -type "double3" 1.0445060093484253 1.0445060093484253 1.0445060093484253 ;
createNode aimConstraint -n "pCylinder1_instance42_aimConstraint1" -p "pCylinder1_instance42";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 82.984141885903995 -36.136031464200443 40.492159718126921 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance43" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 4.6129408689521441 10.037111635554311 -7.3499915489159644 ;
	setAttr ".s" -type "double3" 1.3967858040321672 1.3967858040321672 1.3967858040321672 ;
createNode aimConstraint -n "pCylinder1_instance43_aimConstraint1" -p "pCylinder1_instance43";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 85.914059065704819 -40.157204419708656 42.866668990112977 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance44" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -0.6390454826429206 11.955194730911668 -2.5641537773002732 ;
	setAttr ".s" -type "double3" 0.3104941329292617 0.3104941329292617 0.3104941329292617 ;
createNode aimConstraint -n "pCylinder1_instance44_aimConstraint1" -p "pCylinder1_instance44";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 105.96724047658503 -41.555894678754839 31.930231254024093 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance45" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" -3.7450127924923882 19.707451949417436 -7.5905293905401994 ;
	setAttr ".s" -type "double3" 1.012278274024188 1.012278274024188 1.012278274024188 ;
createNode aimConstraint -n "pCylinder1_instance45_aimConstraint1" -p "pCylinder1_instance45";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 129.71453015772349 -24.104813964473387 11.445118811717675 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance46" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 0.74392708896086646 6.4447363157457733 -2.742896551152052 ;
	setAttr ".s" -type "double3" 0.84824150197269166 0.84824150197269166 0.84824150197269166 ;
createNode aimConstraint -n "pCylinder1_instance46_aimConstraint1" -p "pCylinder1_instance46";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 86.599432328454029 -37.184383106689999 39.289788486629035 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance47" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 8.2194426907902454 17.536720932011299 9.3429776985416098 ;
	setAttr ".s" -type "double3" 0.62808394283622637 0.62808394283622637 0.62808394283622637 ;
createNode aimConstraint -n "pCylinder1_instance47_aimConstraint1" -p "pCylinder1_instance47";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 7.7153548140790615 -17.745905436873588 133.27711430359503 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance48" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 7.3540432344281257 3.4849323859606018 8.9191862555998185 ;
	setAttr ".s" -type "double3" 1.2057131284365221 1.2057131284365221 1.2057131284365221 ;
createNode aimConstraint -n "pCylinder1_instance48_aimConstraint1" -p "pCylinder1_instance48";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 12.568357349082806 -14.655906529262841 98.851916311943071 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance49" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 1.7441474618176596 16.561472189455518 0.28668544371088522 ;
	setAttr ".s" -type "double3" 0.42310058814451401 0.42310058814451401 0.42310058814451401 ;
createNode aimConstraint -n "pCylinder1_instance49_aimConstraint1" -p "pCylinder1_instance49";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 87.001839269563192 -58.146515926297397 60.728971530479512 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder1_instance50" -p "pCylinder1_instance_grp1";
	setAttr ".t" -type "double3" 3.5000496401005616 17.005584895839412 6.6810650497771142 ;
	setAttr ".s" -type "double3" 0.9556261321102304 0.9556261321102304 0.9556261321102304 ;
createNode aimConstraint -n "pCylinder1_instance50_aimConstraint1" -p "pCylinder1_instance50";
	addAttr -ci true -sn "w0" -ln "pSphere1W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".rsrr" -type "double3" 21.405068547155619 -43.094982483620996 128.84518498224242 ;
	setAttr -k on ".w0";
createNode transform -n "left";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -100.1 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 102.76259819181223;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "expantion_locator_grp1";
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance1" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance2" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance3" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance4" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance5" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance6" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance7" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance8" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance9" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance10" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance11" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance12" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance13" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance14" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance15" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance16" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance17" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance18" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance19" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance20" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance21" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance22" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance23" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance24" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance25" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance26" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance27" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance28" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance29" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance30" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance31" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance32" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance33" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance34" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance35" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance36" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance37" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance38" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance39" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance40" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance41" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance42" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance43" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance44" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance45" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance46" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance47" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance48" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance49" ;
parent -s -nc -r -add "|pCylinder1|pCylinderShape1" "pCylinder1_instance50" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Script Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"scriptEditorPanel\\\" -l (localizedPanelLabel(\\\"Script Editor\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Script Editor\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 40 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 132 -ast 1 -aet 132 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere1";
	setAttr ".r" 7.7182721199162003;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".h" 0.3;
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyBevel -n "polyBevel1";
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.73799561281272474 0.36427547213703487 8.8762027663485181 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 0.5;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode animCurveTA -n "pCylinder1_instance_grp1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 132 360;
select -ne :time1;
	setAttr ".o" 37;
	setAttr ".unw" 37;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 52 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "polyBevel1.out" "|pCylinder1|pCylinderShape1.i";
connectAttr "pCylinder1_instance_grp1_rotateY.o" "pCylinder1_instance_grp1.ry";
connectAttr "pCylinder1_instance1_aimConstraint1.crx" "pCylinder1_instance1.rx";
connectAttr "pCylinder1_instance1_aimConstraint1.cry" "pCylinder1_instance1.ry";
connectAttr "pCylinder1_instance1_aimConstraint1.crz" "pCylinder1_instance1.rz";
connectAttr "pCylinder1_instance1.pim" "pCylinder1_instance1_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance1.t" "pCylinder1_instance1_aimConstraint1.ct";
connectAttr "pCylinder1_instance1.rp" "pCylinder1_instance1_aimConstraint1.crp";
connectAttr "pCylinder1_instance1.rpt" "pCylinder1_instance1_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance1.ro" "pCylinder1_instance1_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance1_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance1_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance1_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance1_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance1_aimConstraint1.w0" "pCylinder1_instance1_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance2_aimConstraint1.crx" "pCylinder1_instance2.rx";
connectAttr "pCylinder1_instance2_aimConstraint1.cry" "pCylinder1_instance2.ry";
connectAttr "pCylinder1_instance2_aimConstraint1.crz" "pCylinder1_instance2.rz";
connectAttr "pCylinder1_instance2.pim" "pCylinder1_instance2_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance2.t" "pCylinder1_instance2_aimConstraint1.ct";
connectAttr "pCylinder1_instance2.rp" "pCylinder1_instance2_aimConstraint1.crp";
connectAttr "pCylinder1_instance2.rpt" "pCylinder1_instance2_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance2.ro" "pCylinder1_instance2_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance2_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance2_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance2_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance2_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance2_aimConstraint1.w0" "pCylinder1_instance2_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance3_aimConstraint1.crx" "pCylinder1_instance3.rx";
connectAttr "pCylinder1_instance3_aimConstraint1.cry" "pCylinder1_instance3.ry";
connectAttr "pCylinder1_instance3_aimConstraint1.crz" "pCylinder1_instance3.rz";
connectAttr "pCylinder1_instance3.pim" "pCylinder1_instance3_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance3.t" "pCylinder1_instance3_aimConstraint1.ct";
connectAttr "pCylinder1_instance3.rp" "pCylinder1_instance3_aimConstraint1.crp";
connectAttr "pCylinder1_instance3.rpt" "pCylinder1_instance3_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance3.ro" "pCylinder1_instance3_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance3_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance3_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance3_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance3_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance3_aimConstraint1.w0" "pCylinder1_instance3_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance4_aimConstraint1.crx" "pCylinder1_instance4.rx";
connectAttr "pCylinder1_instance4_aimConstraint1.cry" "pCylinder1_instance4.ry";
connectAttr "pCylinder1_instance4_aimConstraint1.crz" "pCylinder1_instance4.rz";
connectAttr "pCylinder1_instance4.pim" "pCylinder1_instance4_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance4.t" "pCylinder1_instance4_aimConstraint1.ct";
connectAttr "pCylinder1_instance4.rp" "pCylinder1_instance4_aimConstraint1.crp";
connectAttr "pCylinder1_instance4.rpt" "pCylinder1_instance4_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance4.ro" "pCylinder1_instance4_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance4_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance4_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance4_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance4_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance4_aimConstraint1.w0" "pCylinder1_instance4_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance5_aimConstraint1.crx" "pCylinder1_instance5.rx";
connectAttr "pCylinder1_instance5_aimConstraint1.cry" "pCylinder1_instance5.ry";
connectAttr "pCylinder1_instance5_aimConstraint1.crz" "pCylinder1_instance5.rz";
connectAttr "pCylinder1_instance5.pim" "pCylinder1_instance5_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance5.t" "pCylinder1_instance5_aimConstraint1.ct";
connectAttr "pCylinder1_instance5.rp" "pCylinder1_instance5_aimConstraint1.crp";
connectAttr "pCylinder1_instance5.rpt" "pCylinder1_instance5_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance5.ro" "pCylinder1_instance5_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance5_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance5_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance5_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance5_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance5_aimConstraint1.w0" "pCylinder1_instance5_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance6_aimConstraint1.crx" "pCylinder1_instance6.rx";
connectAttr "pCylinder1_instance6_aimConstraint1.cry" "pCylinder1_instance6.ry";
connectAttr "pCylinder1_instance6_aimConstraint1.crz" "pCylinder1_instance6.rz";
connectAttr "pCylinder1_instance6.pim" "pCylinder1_instance6_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance6.t" "pCylinder1_instance6_aimConstraint1.ct";
connectAttr "pCylinder1_instance6.rp" "pCylinder1_instance6_aimConstraint1.crp";
connectAttr "pCylinder1_instance6.rpt" "pCylinder1_instance6_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance6.ro" "pCylinder1_instance6_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance6_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance6_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance6_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance6_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance6_aimConstraint1.w0" "pCylinder1_instance6_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance7_aimConstraint1.crx" "pCylinder1_instance7.rx";
connectAttr "pCylinder1_instance7_aimConstraint1.cry" "pCylinder1_instance7.ry";
connectAttr "pCylinder1_instance7_aimConstraint1.crz" "pCylinder1_instance7.rz";
connectAttr "pCylinder1_instance7.pim" "pCylinder1_instance7_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance7.t" "pCylinder1_instance7_aimConstraint1.ct";
connectAttr "pCylinder1_instance7.rp" "pCylinder1_instance7_aimConstraint1.crp";
connectAttr "pCylinder1_instance7.rpt" "pCylinder1_instance7_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance7.ro" "pCylinder1_instance7_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance7_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance7_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance7_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance7_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance7_aimConstraint1.w0" "pCylinder1_instance7_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance8_aimConstraint1.crx" "pCylinder1_instance8.rx";
connectAttr "pCylinder1_instance8_aimConstraint1.cry" "pCylinder1_instance8.ry";
connectAttr "pCylinder1_instance8_aimConstraint1.crz" "pCylinder1_instance8.rz";
connectAttr "pCylinder1_instance8.pim" "pCylinder1_instance8_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance8.t" "pCylinder1_instance8_aimConstraint1.ct";
connectAttr "pCylinder1_instance8.rp" "pCylinder1_instance8_aimConstraint1.crp";
connectAttr "pCylinder1_instance8.rpt" "pCylinder1_instance8_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance8.ro" "pCylinder1_instance8_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance8_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance8_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance8_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance8_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance8_aimConstraint1.w0" "pCylinder1_instance8_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance9_aimConstraint1.crx" "pCylinder1_instance9.rx";
connectAttr "pCylinder1_instance9_aimConstraint1.cry" "pCylinder1_instance9.ry";
connectAttr "pCylinder1_instance9_aimConstraint1.crz" "pCylinder1_instance9.rz";
connectAttr "pCylinder1_instance9.pim" "pCylinder1_instance9_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance9.t" "pCylinder1_instance9_aimConstraint1.ct";
connectAttr "pCylinder1_instance9.rp" "pCylinder1_instance9_aimConstraint1.crp";
connectAttr "pCylinder1_instance9.rpt" "pCylinder1_instance9_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance9.ro" "pCylinder1_instance9_aimConstraint1.cro";
connectAttr "pSphere1.t" "pCylinder1_instance9_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance9_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance9_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance9_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance9_aimConstraint1.w0" "pCylinder1_instance9_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance10_aimConstraint1.crx" "pCylinder1_instance10.rx"
		;
connectAttr "pCylinder1_instance10_aimConstraint1.cry" "pCylinder1_instance10.ry"
		;
connectAttr "pCylinder1_instance10_aimConstraint1.crz" "pCylinder1_instance10.rz"
		;
connectAttr "pCylinder1_instance10.pim" "pCylinder1_instance10_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance10.t" "pCylinder1_instance10_aimConstraint1.ct";
connectAttr "pCylinder1_instance10.rp" "pCylinder1_instance10_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance10.rpt" "pCylinder1_instance10_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance10.ro" "pCylinder1_instance10_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance10_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance10_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance10_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance10_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance10_aimConstraint1.w0" "pCylinder1_instance10_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance11_aimConstraint1.crx" "pCylinder1_instance11.rx"
		;
connectAttr "pCylinder1_instance11_aimConstraint1.cry" "pCylinder1_instance11.ry"
		;
connectAttr "pCylinder1_instance11_aimConstraint1.crz" "pCylinder1_instance11.rz"
		;
connectAttr "pCylinder1_instance11.pim" "pCylinder1_instance11_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance11.t" "pCylinder1_instance11_aimConstraint1.ct";
connectAttr "pCylinder1_instance11.rp" "pCylinder1_instance11_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance11.rpt" "pCylinder1_instance11_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance11.ro" "pCylinder1_instance11_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance11_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance11_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance11_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance11_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance11_aimConstraint1.w0" "pCylinder1_instance11_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance12_aimConstraint1.crx" "pCylinder1_instance12.rx"
		;
connectAttr "pCylinder1_instance12_aimConstraint1.cry" "pCylinder1_instance12.ry"
		;
connectAttr "pCylinder1_instance12_aimConstraint1.crz" "pCylinder1_instance12.rz"
		;
connectAttr "pCylinder1_instance12.pim" "pCylinder1_instance12_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance12.t" "pCylinder1_instance12_aimConstraint1.ct";
connectAttr "pCylinder1_instance12.rp" "pCylinder1_instance12_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance12.rpt" "pCylinder1_instance12_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance12.ro" "pCylinder1_instance12_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance12_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance12_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance12_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance12_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance12_aimConstraint1.w0" "pCylinder1_instance12_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance13_aimConstraint1.crx" "pCylinder1_instance13.rx"
		;
connectAttr "pCylinder1_instance13_aimConstraint1.cry" "pCylinder1_instance13.ry"
		;
connectAttr "pCylinder1_instance13_aimConstraint1.crz" "pCylinder1_instance13.rz"
		;
connectAttr "pCylinder1_instance13.pim" "pCylinder1_instance13_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance13.t" "pCylinder1_instance13_aimConstraint1.ct";
connectAttr "pCylinder1_instance13.rp" "pCylinder1_instance13_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance13.rpt" "pCylinder1_instance13_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance13.ro" "pCylinder1_instance13_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance13_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance13_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance13_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance13_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance13_aimConstraint1.w0" "pCylinder1_instance13_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance14_aimConstraint1.crx" "pCylinder1_instance14.rx"
		;
connectAttr "pCylinder1_instance14_aimConstraint1.cry" "pCylinder1_instance14.ry"
		;
connectAttr "pCylinder1_instance14_aimConstraint1.crz" "pCylinder1_instance14.rz"
		;
connectAttr "pCylinder1_instance14.pim" "pCylinder1_instance14_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance14.t" "pCylinder1_instance14_aimConstraint1.ct";
connectAttr "pCylinder1_instance14.rp" "pCylinder1_instance14_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance14.rpt" "pCylinder1_instance14_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance14.ro" "pCylinder1_instance14_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance14_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance14_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance14_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance14_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance14_aimConstraint1.w0" "pCylinder1_instance14_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance15_aimConstraint1.crx" "pCylinder1_instance15.rx"
		;
connectAttr "pCylinder1_instance15_aimConstraint1.cry" "pCylinder1_instance15.ry"
		;
connectAttr "pCylinder1_instance15_aimConstraint1.crz" "pCylinder1_instance15.rz"
		;
connectAttr "pCylinder1_instance15.pim" "pCylinder1_instance15_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance15.t" "pCylinder1_instance15_aimConstraint1.ct";
connectAttr "pCylinder1_instance15.rp" "pCylinder1_instance15_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance15.rpt" "pCylinder1_instance15_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance15.ro" "pCylinder1_instance15_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance15_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance15_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance15_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance15_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance15_aimConstraint1.w0" "pCylinder1_instance15_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance16_aimConstraint1.crx" "pCylinder1_instance16.rx"
		;
connectAttr "pCylinder1_instance16_aimConstraint1.cry" "pCylinder1_instance16.ry"
		;
connectAttr "pCylinder1_instance16_aimConstraint1.crz" "pCylinder1_instance16.rz"
		;
connectAttr "pCylinder1_instance16.pim" "pCylinder1_instance16_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance16.t" "pCylinder1_instance16_aimConstraint1.ct";
connectAttr "pCylinder1_instance16.rp" "pCylinder1_instance16_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance16.rpt" "pCylinder1_instance16_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance16.ro" "pCylinder1_instance16_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance16_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance16_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance16_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance16_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance16_aimConstraint1.w0" "pCylinder1_instance16_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance17_aimConstraint1.crx" "pCylinder1_instance17.rx"
		;
connectAttr "pCylinder1_instance17_aimConstraint1.cry" "pCylinder1_instance17.ry"
		;
connectAttr "pCylinder1_instance17_aimConstraint1.crz" "pCylinder1_instance17.rz"
		;
connectAttr "pCylinder1_instance17.pim" "pCylinder1_instance17_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance17.t" "pCylinder1_instance17_aimConstraint1.ct";
connectAttr "pCylinder1_instance17.rp" "pCylinder1_instance17_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance17.rpt" "pCylinder1_instance17_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance17.ro" "pCylinder1_instance17_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance17_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance17_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance17_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance17_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance17_aimConstraint1.w0" "pCylinder1_instance17_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance18_aimConstraint1.crx" "pCylinder1_instance18.rx"
		;
connectAttr "pCylinder1_instance18_aimConstraint1.cry" "pCylinder1_instance18.ry"
		;
connectAttr "pCylinder1_instance18_aimConstraint1.crz" "pCylinder1_instance18.rz"
		;
connectAttr "pCylinder1_instance18.pim" "pCylinder1_instance18_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance18.t" "pCylinder1_instance18_aimConstraint1.ct";
connectAttr "pCylinder1_instance18.rp" "pCylinder1_instance18_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance18.rpt" "pCylinder1_instance18_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance18.ro" "pCylinder1_instance18_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance18_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance18_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance18_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance18_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance18_aimConstraint1.w0" "pCylinder1_instance18_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance19_aimConstraint1.crx" "pCylinder1_instance19.rx"
		;
connectAttr "pCylinder1_instance19_aimConstraint1.cry" "pCylinder1_instance19.ry"
		;
connectAttr "pCylinder1_instance19_aimConstraint1.crz" "pCylinder1_instance19.rz"
		;
connectAttr "pCylinder1_instance19.pim" "pCylinder1_instance19_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance19.t" "pCylinder1_instance19_aimConstraint1.ct";
connectAttr "pCylinder1_instance19.rp" "pCylinder1_instance19_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance19.rpt" "pCylinder1_instance19_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance19.ro" "pCylinder1_instance19_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance19_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance19_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance19_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance19_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance19_aimConstraint1.w0" "pCylinder1_instance19_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance20_aimConstraint1.crx" "pCylinder1_instance20.rx"
		;
connectAttr "pCylinder1_instance20_aimConstraint1.cry" "pCylinder1_instance20.ry"
		;
connectAttr "pCylinder1_instance20_aimConstraint1.crz" "pCylinder1_instance20.rz"
		;
connectAttr "pCylinder1_instance20.pim" "pCylinder1_instance20_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance20.t" "pCylinder1_instance20_aimConstraint1.ct";
connectAttr "pCylinder1_instance20.rp" "pCylinder1_instance20_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance20.rpt" "pCylinder1_instance20_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance20.ro" "pCylinder1_instance20_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance20_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance20_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance20_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance20_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance20_aimConstraint1.w0" "pCylinder1_instance20_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance21_aimConstraint1.crx" "pCylinder1_instance21.rx"
		;
connectAttr "pCylinder1_instance21_aimConstraint1.cry" "pCylinder1_instance21.ry"
		;
connectAttr "pCylinder1_instance21_aimConstraint1.crz" "pCylinder1_instance21.rz"
		;
connectAttr "pCylinder1_instance21.pim" "pCylinder1_instance21_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance21.t" "pCylinder1_instance21_aimConstraint1.ct";
connectAttr "pCylinder1_instance21.rp" "pCylinder1_instance21_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance21.rpt" "pCylinder1_instance21_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance21.ro" "pCylinder1_instance21_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance21_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance21_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance21_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance21_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance21_aimConstraint1.w0" "pCylinder1_instance21_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance22_aimConstraint1.crx" "pCylinder1_instance22.rx"
		;
connectAttr "pCylinder1_instance22_aimConstraint1.cry" "pCylinder1_instance22.ry"
		;
connectAttr "pCylinder1_instance22_aimConstraint1.crz" "pCylinder1_instance22.rz"
		;
connectAttr "pCylinder1_instance22.pim" "pCylinder1_instance22_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance22.t" "pCylinder1_instance22_aimConstraint1.ct";
connectAttr "pCylinder1_instance22.rp" "pCylinder1_instance22_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance22.rpt" "pCylinder1_instance22_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance22.ro" "pCylinder1_instance22_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance22_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance22_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance22_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance22_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance22_aimConstraint1.w0" "pCylinder1_instance22_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance23_aimConstraint1.crx" "pCylinder1_instance23.rx"
		;
connectAttr "pCylinder1_instance23_aimConstraint1.cry" "pCylinder1_instance23.ry"
		;
connectAttr "pCylinder1_instance23_aimConstraint1.crz" "pCylinder1_instance23.rz"
		;
connectAttr "pCylinder1_instance23.pim" "pCylinder1_instance23_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance23.t" "pCylinder1_instance23_aimConstraint1.ct";
connectAttr "pCylinder1_instance23.rp" "pCylinder1_instance23_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance23.rpt" "pCylinder1_instance23_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance23.ro" "pCylinder1_instance23_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance23_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance23_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance23_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance23_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance23_aimConstraint1.w0" "pCylinder1_instance23_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance24_aimConstraint1.crx" "pCylinder1_instance24.rx"
		;
connectAttr "pCylinder1_instance24_aimConstraint1.cry" "pCylinder1_instance24.ry"
		;
connectAttr "pCylinder1_instance24_aimConstraint1.crz" "pCylinder1_instance24.rz"
		;
connectAttr "pCylinder1_instance24.pim" "pCylinder1_instance24_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance24.t" "pCylinder1_instance24_aimConstraint1.ct";
connectAttr "pCylinder1_instance24.rp" "pCylinder1_instance24_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance24.rpt" "pCylinder1_instance24_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance24.ro" "pCylinder1_instance24_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance24_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance24_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance24_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance24_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance24_aimConstraint1.w0" "pCylinder1_instance24_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance25_aimConstraint1.crx" "pCylinder1_instance25.rx"
		;
connectAttr "pCylinder1_instance25_aimConstraint1.cry" "pCylinder1_instance25.ry"
		;
connectAttr "pCylinder1_instance25_aimConstraint1.crz" "pCylinder1_instance25.rz"
		;
connectAttr "pCylinder1_instance25.pim" "pCylinder1_instance25_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance25.t" "pCylinder1_instance25_aimConstraint1.ct";
connectAttr "pCylinder1_instance25.rp" "pCylinder1_instance25_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance25.rpt" "pCylinder1_instance25_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance25.ro" "pCylinder1_instance25_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance25_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance25_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance25_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance25_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance25_aimConstraint1.w0" "pCylinder1_instance25_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance26_aimConstraint1.crx" "pCylinder1_instance26.rx"
		;
connectAttr "pCylinder1_instance26_aimConstraint1.cry" "pCylinder1_instance26.ry"
		;
connectAttr "pCylinder1_instance26_aimConstraint1.crz" "pCylinder1_instance26.rz"
		;
connectAttr "pCylinder1_instance26.pim" "pCylinder1_instance26_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance26.t" "pCylinder1_instance26_aimConstraint1.ct";
connectAttr "pCylinder1_instance26.rp" "pCylinder1_instance26_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance26.rpt" "pCylinder1_instance26_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance26.ro" "pCylinder1_instance26_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance26_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance26_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance26_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance26_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance26_aimConstraint1.w0" "pCylinder1_instance26_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance27_aimConstraint1.crx" "pCylinder1_instance27.rx"
		;
connectAttr "pCylinder1_instance27_aimConstraint1.cry" "pCylinder1_instance27.ry"
		;
connectAttr "pCylinder1_instance27_aimConstraint1.crz" "pCylinder1_instance27.rz"
		;
connectAttr "pCylinder1_instance27.pim" "pCylinder1_instance27_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance27.t" "pCylinder1_instance27_aimConstraint1.ct";
connectAttr "pCylinder1_instance27.rp" "pCylinder1_instance27_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance27.rpt" "pCylinder1_instance27_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance27.ro" "pCylinder1_instance27_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance27_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance27_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance27_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance27_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance27_aimConstraint1.w0" "pCylinder1_instance27_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance28_aimConstraint1.crx" "pCylinder1_instance28.rx"
		;
connectAttr "pCylinder1_instance28_aimConstraint1.cry" "pCylinder1_instance28.ry"
		;
connectAttr "pCylinder1_instance28_aimConstraint1.crz" "pCylinder1_instance28.rz"
		;
connectAttr "pCylinder1_instance28.pim" "pCylinder1_instance28_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance28.t" "pCylinder1_instance28_aimConstraint1.ct";
connectAttr "pCylinder1_instance28.rp" "pCylinder1_instance28_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance28.rpt" "pCylinder1_instance28_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance28.ro" "pCylinder1_instance28_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance28_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance28_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance28_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance28_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance28_aimConstraint1.w0" "pCylinder1_instance28_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance29_aimConstraint1.crx" "pCylinder1_instance29.rx"
		;
connectAttr "pCylinder1_instance29_aimConstraint1.cry" "pCylinder1_instance29.ry"
		;
connectAttr "pCylinder1_instance29_aimConstraint1.crz" "pCylinder1_instance29.rz"
		;
connectAttr "pCylinder1_instance29.pim" "pCylinder1_instance29_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance29.t" "pCylinder1_instance29_aimConstraint1.ct";
connectAttr "pCylinder1_instance29.rp" "pCylinder1_instance29_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance29.rpt" "pCylinder1_instance29_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance29.ro" "pCylinder1_instance29_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance29_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance29_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance29_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance29_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance29_aimConstraint1.w0" "pCylinder1_instance29_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance30_aimConstraint1.crx" "pCylinder1_instance30.rx"
		;
connectAttr "pCylinder1_instance30_aimConstraint1.cry" "pCylinder1_instance30.ry"
		;
connectAttr "pCylinder1_instance30_aimConstraint1.crz" "pCylinder1_instance30.rz"
		;
connectAttr "pCylinder1_instance30.pim" "pCylinder1_instance30_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance30.t" "pCylinder1_instance30_aimConstraint1.ct";
connectAttr "pCylinder1_instance30.rp" "pCylinder1_instance30_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance30.rpt" "pCylinder1_instance30_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance30.ro" "pCylinder1_instance30_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance30_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance30_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance30_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance30_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance30_aimConstraint1.w0" "pCylinder1_instance30_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance31_aimConstraint1.crx" "pCylinder1_instance31.rx"
		;
connectAttr "pCylinder1_instance31_aimConstraint1.cry" "pCylinder1_instance31.ry"
		;
connectAttr "pCylinder1_instance31_aimConstraint1.crz" "pCylinder1_instance31.rz"
		;
connectAttr "pCylinder1_instance31.pim" "pCylinder1_instance31_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance31.t" "pCylinder1_instance31_aimConstraint1.ct";
connectAttr "pCylinder1_instance31.rp" "pCylinder1_instance31_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance31.rpt" "pCylinder1_instance31_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance31.ro" "pCylinder1_instance31_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance31_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance31_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance31_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance31_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance31_aimConstraint1.w0" "pCylinder1_instance31_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance32_aimConstraint1.crx" "pCylinder1_instance32.rx"
		;
connectAttr "pCylinder1_instance32_aimConstraint1.cry" "pCylinder1_instance32.ry"
		;
connectAttr "pCylinder1_instance32_aimConstraint1.crz" "pCylinder1_instance32.rz"
		;
connectAttr "pCylinder1_instance32.pim" "pCylinder1_instance32_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance32.t" "pCylinder1_instance32_aimConstraint1.ct";
connectAttr "pCylinder1_instance32.rp" "pCylinder1_instance32_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance32.rpt" "pCylinder1_instance32_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance32.ro" "pCylinder1_instance32_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance32_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance32_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance32_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance32_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance32_aimConstraint1.w0" "pCylinder1_instance32_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance33_aimConstraint1.crx" "pCylinder1_instance33.rx"
		;
connectAttr "pCylinder1_instance33_aimConstraint1.cry" "pCylinder1_instance33.ry"
		;
connectAttr "pCylinder1_instance33_aimConstraint1.crz" "pCylinder1_instance33.rz"
		;
connectAttr "pCylinder1_instance33.pim" "pCylinder1_instance33_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance33.t" "pCylinder1_instance33_aimConstraint1.ct";
connectAttr "pCylinder1_instance33.rp" "pCylinder1_instance33_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance33.rpt" "pCylinder1_instance33_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance33.ro" "pCylinder1_instance33_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance33_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance33_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance33_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance33_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance33_aimConstraint1.w0" "pCylinder1_instance33_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance34_aimConstraint1.crx" "pCylinder1_instance34.rx"
		;
connectAttr "pCylinder1_instance34_aimConstraint1.cry" "pCylinder1_instance34.ry"
		;
connectAttr "pCylinder1_instance34_aimConstraint1.crz" "pCylinder1_instance34.rz"
		;
connectAttr "pCylinder1_instance34.pim" "pCylinder1_instance34_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance34.t" "pCylinder1_instance34_aimConstraint1.ct";
connectAttr "pCylinder1_instance34.rp" "pCylinder1_instance34_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance34.rpt" "pCylinder1_instance34_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance34.ro" "pCylinder1_instance34_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance34_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance34_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance34_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance34_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance34_aimConstraint1.w0" "pCylinder1_instance34_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance35_aimConstraint1.crx" "pCylinder1_instance35.rx"
		;
connectAttr "pCylinder1_instance35_aimConstraint1.cry" "pCylinder1_instance35.ry"
		;
connectAttr "pCylinder1_instance35_aimConstraint1.crz" "pCylinder1_instance35.rz"
		;
connectAttr "pCylinder1_instance35.pim" "pCylinder1_instance35_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance35.t" "pCylinder1_instance35_aimConstraint1.ct";
connectAttr "pCylinder1_instance35.rp" "pCylinder1_instance35_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance35.rpt" "pCylinder1_instance35_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance35.ro" "pCylinder1_instance35_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance35_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance35_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance35_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance35_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance35_aimConstraint1.w0" "pCylinder1_instance35_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance36_aimConstraint1.crx" "pCylinder1_instance36.rx"
		;
connectAttr "pCylinder1_instance36_aimConstraint1.cry" "pCylinder1_instance36.ry"
		;
connectAttr "pCylinder1_instance36_aimConstraint1.crz" "pCylinder1_instance36.rz"
		;
connectAttr "pCylinder1_instance36.pim" "pCylinder1_instance36_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance36.t" "pCylinder1_instance36_aimConstraint1.ct";
connectAttr "pCylinder1_instance36.rp" "pCylinder1_instance36_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance36.rpt" "pCylinder1_instance36_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance36.ro" "pCylinder1_instance36_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance36_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance36_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance36_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance36_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance36_aimConstraint1.w0" "pCylinder1_instance36_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance37_aimConstraint1.crx" "pCylinder1_instance37.rx"
		;
connectAttr "pCylinder1_instance37_aimConstraint1.cry" "pCylinder1_instance37.ry"
		;
connectAttr "pCylinder1_instance37_aimConstraint1.crz" "pCylinder1_instance37.rz"
		;
connectAttr "pCylinder1_instance37.pim" "pCylinder1_instance37_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance37.t" "pCylinder1_instance37_aimConstraint1.ct";
connectAttr "pCylinder1_instance37.rp" "pCylinder1_instance37_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance37.rpt" "pCylinder1_instance37_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance37.ro" "pCylinder1_instance37_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance37_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance37_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance37_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance37_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance37_aimConstraint1.w0" "pCylinder1_instance37_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance38_aimConstraint1.crx" "pCylinder1_instance38.rx"
		;
connectAttr "pCylinder1_instance38_aimConstraint1.cry" "pCylinder1_instance38.ry"
		;
connectAttr "pCylinder1_instance38_aimConstraint1.crz" "pCylinder1_instance38.rz"
		;
connectAttr "pCylinder1_instance38.pim" "pCylinder1_instance38_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance38.t" "pCylinder1_instance38_aimConstraint1.ct";
connectAttr "pCylinder1_instance38.rp" "pCylinder1_instance38_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance38.rpt" "pCylinder1_instance38_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance38.ro" "pCylinder1_instance38_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance38_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance38_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance38_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance38_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance38_aimConstraint1.w0" "pCylinder1_instance38_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance39_aimConstraint1.crx" "pCylinder1_instance39.rx"
		;
connectAttr "pCylinder1_instance39_aimConstraint1.cry" "pCylinder1_instance39.ry"
		;
connectAttr "pCylinder1_instance39_aimConstraint1.crz" "pCylinder1_instance39.rz"
		;
connectAttr "pCylinder1_instance39.pim" "pCylinder1_instance39_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance39.t" "pCylinder1_instance39_aimConstraint1.ct";
connectAttr "pCylinder1_instance39.rp" "pCylinder1_instance39_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance39.rpt" "pCylinder1_instance39_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance39.ro" "pCylinder1_instance39_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance39_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance39_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance39_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance39_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance39_aimConstraint1.w0" "pCylinder1_instance39_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance40_aimConstraint1.crx" "pCylinder1_instance40.rx"
		;
connectAttr "pCylinder1_instance40_aimConstraint1.cry" "pCylinder1_instance40.ry"
		;
connectAttr "pCylinder1_instance40_aimConstraint1.crz" "pCylinder1_instance40.rz"
		;
connectAttr "pCylinder1_instance40.pim" "pCylinder1_instance40_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance40.t" "pCylinder1_instance40_aimConstraint1.ct";
connectAttr "pCylinder1_instance40.rp" "pCylinder1_instance40_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance40.rpt" "pCylinder1_instance40_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance40.ro" "pCylinder1_instance40_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance40_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance40_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance40_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance40_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance40_aimConstraint1.w0" "pCylinder1_instance40_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance41_aimConstraint1.crx" "pCylinder1_instance41.rx"
		;
connectAttr "pCylinder1_instance41_aimConstraint1.cry" "pCylinder1_instance41.ry"
		;
connectAttr "pCylinder1_instance41_aimConstraint1.crz" "pCylinder1_instance41.rz"
		;
connectAttr "pCylinder1_instance41.pim" "pCylinder1_instance41_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance41.t" "pCylinder1_instance41_aimConstraint1.ct";
connectAttr "pCylinder1_instance41.rp" "pCylinder1_instance41_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance41.rpt" "pCylinder1_instance41_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance41.ro" "pCylinder1_instance41_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance41_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance41_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance41_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance41_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance41_aimConstraint1.w0" "pCylinder1_instance41_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance42_aimConstraint1.crx" "pCylinder1_instance42.rx"
		;
connectAttr "pCylinder1_instance42_aimConstraint1.cry" "pCylinder1_instance42.ry"
		;
connectAttr "pCylinder1_instance42_aimConstraint1.crz" "pCylinder1_instance42.rz"
		;
connectAttr "pCylinder1_instance42.pim" "pCylinder1_instance42_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance42.t" "pCylinder1_instance42_aimConstraint1.ct";
connectAttr "pCylinder1_instance42.rp" "pCylinder1_instance42_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance42.rpt" "pCylinder1_instance42_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance42.ro" "pCylinder1_instance42_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance42_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance42_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance42_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance42_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance42_aimConstraint1.w0" "pCylinder1_instance42_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance43_aimConstraint1.crx" "pCylinder1_instance43.rx"
		;
connectAttr "pCylinder1_instance43_aimConstraint1.cry" "pCylinder1_instance43.ry"
		;
connectAttr "pCylinder1_instance43_aimConstraint1.crz" "pCylinder1_instance43.rz"
		;
connectAttr "pCylinder1_instance43.pim" "pCylinder1_instance43_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance43.t" "pCylinder1_instance43_aimConstraint1.ct";
connectAttr "pCylinder1_instance43.rp" "pCylinder1_instance43_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance43.rpt" "pCylinder1_instance43_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance43.ro" "pCylinder1_instance43_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance43_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance43_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance43_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance43_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance43_aimConstraint1.w0" "pCylinder1_instance43_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance44_aimConstraint1.crx" "pCylinder1_instance44.rx"
		;
connectAttr "pCylinder1_instance44_aimConstraint1.cry" "pCylinder1_instance44.ry"
		;
connectAttr "pCylinder1_instance44_aimConstraint1.crz" "pCylinder1_instance44.rz"
		;
connectAttr "pCylinder1_instance44.pim" "pCylinder1_instance44_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance44.t" "pCylinder1_instance44_aimConstraint1.ct";
connectAttr "pCylinder1_instance44.rp" "pCylinder1_instance44_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance44.rpt" "pCylinder1_instance44_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance44.ro" "pCylinder1_instance44_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance44_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance44_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance44_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance44_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance44_aimConstraint1.w0" "pCylinder1_instance44_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance45_aimConstraint1.crx" "pCylinder1_instance45.rx"
		;
connectAttr "pCylinder1_instance45_aimConstraint1.cry" "pCylinder1_instance45.ry"
		;
connectAttr "pCylinder1_instance45_aimConstraint1.crz" "pCylinder1_instance45.rz"
		;
connectAttr "pCylinder1_instance45.pim" "pCylinder1_instance45_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance45.t" "pCylinder1_instance45_aimConstraint1.ct";
connectAttr "pCylinder1_instance45.rp" "pCylinder1_instance45_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance45.rpt" "pCylinder1_instance45_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance45.ro" "pCylinder1_instance45_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance45_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance45_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance45_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance45_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance45_aimConstraint1.w0" "pCylinder1_instance45_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance46_aimConstraint1.crx" "pCylinder1_instance46.rx"
		;
connectAttr "pCylinder1_instance46_aimConstraint1.cry" "pCylinder1_instance46.ry"
		;
connectAttr "pCylinder1_instance46_aimConstraint1.crz" "pCylinder1_instance46.rz"
		;
connectAttr "pCylinder1_instance46.pim" "pCylinder1_instance46_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance46.t" "pCylinder1_instance46_aimConstraint1.ct";
connectAttr "pCylinder1_instance46.rp" "pCylinder1_instance46_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance46.rpt" "pCylinder1_instance46_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance46.ro" "pCylinder1_instance46_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance46_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance46_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance46_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance46_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance46_aimConstraint1.w0" "pCylinder1_instance46_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance47_aimConstraint1.crx" "pCylinder1_instance47.rx"
		;
connectAttr "pCylinder1_instance47_aimConstraint1.cry" "pCylinder1_instance47.ry"
		;
connectAttr "pCylinder1_instance47_aimConstraint1.crz" "pCylinder1_instance47.rz"
		;
connectAttr "pCylinder1_instance47.pim" "pCylinder1_instance47_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance47.t" "pCylinder1_instance47_aimConstraint1.ct";
connectAttr "pCylinder1_instance47.rp" "pCylinder1_instance47_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance47.rpt" "pCylinder1_instance47_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance47.ro" "pCylinder1_instance47_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance47_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance47_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance47_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance47_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance47_aimConstraint1.w0" "pCylinder1_instance47_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance48_aimConstraint1.crx" "pCylinder1_instance48.rx"
		;
connectAttr "pCylinder1_instance48_aimConstraint1.cry" "pCylinder1_instance48.ry"
		;
connectAttr "pCylinder1_instance48_aimConstraint1.crz" "pCylinder1_instance48.rz"
		;
connectAttr "pCylinder1_instance48.pim" "pCylinder1_instance48_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance48.t" "pCylinder1_instance48_aimConstraint1.ct";
connectAttr "pCylinder1_instance48.rp" "pCylinder1_instance48_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance48.rpt" "pCylinder1_instance48_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance48.ro" "pCylinder1_instance48_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance48_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance48_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance48_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance48_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance48_aimConstraint1.w0" "pCylinder1_instance48_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance49_aimConstraint1.crx" "pCylinder1_instance49.rx"
		;
connectAttr "pCylinder1_instance49_aimConstraint1.cry" "pCylinder1_instance49.ry"
		;
connectAttr "pCylinder1_instance49_aimConstraint1.crz" "pCylinder1_instance49.rz"
		;
connectAttr "pCylinder1_instance49.pim" "pCylinder1_instance49_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance49.t" "pCylinder1_instance49_aimConstraint1.ct";
connectAttr "pCylinder1_instance49.rp" "pCylinder1_instance49_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance49.rpt" "pCylinder1_instance49_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance49.ro" "pCylinder1_instance49_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance49_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance49_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance49_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance49_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance49_aimConstraint1.w0" "pCylinder1_instance49_aimConstraint1.tg[0].tw"
		;
connectAttr "pCylinder1_instance50_aimConstraint1.crx" "pCylinder1_instance50.rx"
		;
connectAttr "pCylinder1_instance50_aimConstraint1.cry" "pCylinder1_instance50.ry"
		;
connectAttr "pCylinder1_instance50_aimConstraint1.crz" "pCylinder1_instance50.rz"
		;
connectAttr "pCylinder1_instance50.pim" "pCylinder1_instance50_aimConstraint1.cpim"
		;
connectAttr "pCylinder1_instance50.t" "pCylinder1_instance50_aimConstraint1.ct";
connectAttr "pCylinder1_instance50.rp" "pCylinder1_instance50_aimConstraint1.crp"
		;
connectAttr "pCylinder1_instance50.rpt" "pCylinder1_instance50_aimConstraint1.crt"
		;
connectAttr "pCylinder1_instance50.ro" "pCylinder1_instance50_aimConstraint1.cro"
		;
connectAttr "pSphere1.t" "pCylinder1_instance50_aimConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "pCylinder1_instance50_aimConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "pCylinder1_instance50_aimConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "pCylinder1_instance50_aimConstraint1.tg[0].tpm";
connectAttr "pCylinder1_instance50_aimConstraint1.w0" "pCylinder1_instance50_aimConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polyBevel1.ip";
connectAttr "|pCylinder1|pCylinderShape1.wm" "polyBevel1.mp";
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCylinder1|pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance1|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance2|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance3|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance4|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance5|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance6|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance7|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance8|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance9|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance10|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance11|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance12|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance13|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance14|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance15|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance16|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance17|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance18|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance19|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance20|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance21|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance22|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance23|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance24|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance25|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance26|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance27|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance28|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance29|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance30|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance31|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance32|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance33|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance34|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance35|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance36|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance37|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance38|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance39|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance40|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance41|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance42|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance43|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance44|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance45|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance46|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance47|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance48|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance49|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCylinder1_instance_grp1|pCylinder1_instance50|pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of test.ma
