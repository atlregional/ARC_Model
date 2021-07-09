;-------------------------------------------------------------
;ARC Activity Based Modeling System Run Script
;-------------------------------------------------------------
;GUI Macro Processor Parameters
;-------------------------------------------------------------
;{label1,Note,15,"ARC Activity-Based Model"}

;{label2,Note,10,"General Settings"}
;{year,editbox,"Year (Two-digit)",N,"50"}
;{modelname,editbox,"Model Name",x,"ARC ABM"}
;{iteration,editbox,"Max Assignment Iterations",N,"200"}
;{loops,editbox,"Maximum Number of Feedback Loops",N,"6"}
;{minloop,editbox,"Minimum Number of Feedback Loops",N,"2"}
;{totzones,editbox,"Total Zones (w/Externals)",N,"6031"}
;{internals,editbox,"Range of Internal Zones",T,"1-5922"}
;{lastin,editbox,"Last Internal Before Externals",N,"5922"}
;{ext1,editbox,"First External Station",T,"5923"}
;{ext2,editbox,"Last External Station",T,"6031"}
;{airpt,editbox,"Airport Zone Number",N,3388}
;{dobbins,editbox,"Dobbins Zone Number",N,2164}
;{maxext,editbox,"Maximum External County ID",N,"6074"}
;{aoc,editbox,"Auto Operating Cost - $/mile",N,"0.1729"}
;   note: aoc based on AAA Year 2015 Data - http://newsroom.aaa.com/2015/04/annual-cost-operate-vehicle-falls-8698-finds-aaa-archive/
;{toc,editbox,"Truck Operating Cost - $/mile",N,"0.5360"}
;   note: toc based on fuel cost of $2.96/gal & fuel efficiency of 6 mpg
; gas prices source: http://www.eia.gov/dnav/pet/pet_pri_gnd_dcus_r1z_a.htm
;{avot,editbox,"Auto Value of Time - $/hr",N,"21.50"}
;{avot_toll,editbox,"Auto Value of Time - $/hr (toll skims)",N,"30.00"}
;{tvot,editbox,"Truck Value of Time - $/hr",N,"36.00"}
;{distwgt,editbox,"Distance Weight for Generalized Cost",N,"0.5"}
;ProcID:{ProcID,editbox,"Cube Cluster Process ID (no spaces)",T,"ARC"}
;XCPU:{XCPU,editbox,"Extra CPUs Available for Cube Cluster",N,"63"}
;waitTime:{waitTime,editbox,"Cluster Node Restart Wait Time",N,20}
;archive:{archive,Checkbox,"Archive (Zip Results)",0}

;{label24,Note,10,"Modules to Run"}
;chkPrep:{chkPrep,Checkbox,"Model Preparation",1}
;chkComVeh:{chkComVeh,Checkbox,"Commercial Vehicle and Truck Model",1}
;chkFdB:{chkFdB,Checkbox,"Feedback Loops (includes CT-RAMP)",1}
;chkTrn:{chkTrn,Checkbox,"Transit Assignment",1}
;chkTOD:{chkTOD,Checkbox,"Assignment Post-Processing",1}
;chkPerf:{chkPerf,Checkbox,"Performance Measures",1}

;{label23,Note,10,"Feedback"}

;{note3,Note,8,"MODULE: Model Preparation"}
;chkATy:{chkATy,Checkbox,"Assign Area Types",1}
;chkBNw:{chkBNw,Checkbox,"Build Networks",1}
;chkBPkS:{chkBPkS,Checkbox,"Build Peak Period Skims",1}
;chkWarmStart:{chkWarmStart,Checkbox,"Warm Start Peak Period Highway Assignment",1}
;chkBFFS:{chkBFFS,Checkbox,"Build Free-Flow Skims",1}
;chkext:{chkext,Checkbox,"Update External Trips",1}

;{note12,Note,8,"MODULE: Commercial Vehicle and Truck Model"}
;chkComTG:{chkComTG,Checkbox,"Commercial Vehicle and Truck Trip Generation",1}
;chkComTD:{chkComTD,Checkbox,"Commercial Vehicle and Truck Trip Distribution",1}
;chkComTOD:{chkComTOD,Checkbox,"Commercial Vehicle and Truck TOD Trip Tables",1}

;{note4,Note,8,"MODULE: Feedback Loops"}
;chkHwS:{chkHwS,Checkbox,"Update Peak Period Travel Skims",1}
;chkTrS:{chkTrS,Checkbox,"Transit Skims",1}
;chkAccess:{chkAccess,Checkbox,"Create Accessibilities",1}
;chkIEAP:{chkIEAP,Checkbox,"Create IE and Air Passenger Demand",1}
;chkCTRAMP:{chkCTRAMP,Checkbox,"Create II Demand with CT-RAMP Model",1}
;chklod:{chklod,Checkbox,"Highway Assignments",1}

;{note5,Note,8,"MODULE: Transit Assignment"}
;chktas:{chktas,Checkbox,"Transit Assignment",1}

;{note6,Note,8,"MODULE: Post Process Assignments"}
;chktrnlod:{chktrnlod,Checkbox,"Assign Transit Drive Access - Egress to Network",1}
;chkMrg:{chkMrg,Checkbox,"Merge and Summarize Highway Networks",1}
;chkTrnMrg:{chkTrnMrg,Checkbox,"Merge and Summarize Transit Networks",1}

;{note7,Note,8,"MODULE: Performance Measures"}
;chkModSum:{chkModSum,Checkbox,"Run Main Model Summary",1}
;chkMeasures:{chkMeasures,Checkbox,"Run Performance Measures",0}

;{label3,Note,10,"CT-RAMP General Inputs"}
;propFile:{propFile,editbox,"Java Properties File (without extension)",N,"arcTourBased"}
;projDir:{projDir,editbox,"Project Directory",N,"C:/ARCABM/TRP50v0"}
;jdk64:{jdk64,editbox,"Directory to 64bit JDK",N,"C:/Progra~1/Java/jdk1.8.0_171"}
;VoyPath:{VoyPath,editbox,"Directory to 64-bit Cube Voyager File API",N,"C:/Progra~1/Citilabs/VoyagerFileAPI"}
;javaMem:{javaMem,editbox,"Java Virtual Memory for ArcTourBasedModel Process Node Launcher",N,"3g"}
;randomSeed:{randomSeed,editbox,"Model - Random Seed",N,0}
;HHIDTrace:{HHIDTrace,editbox,"Debug - Trace Household ID List",N,""}

;{label6,Note,10,"CT-RAMP Result Files and Database"}
;writeToFile:{writeToFile,checkbox,"Results - Write Data to Files",1,False,True}
;writeToDB:{writeToDB,checkbox,"Results - Write Data to Database",0,False,True}

;{label9,Note,10,"CT-RAMP Run Model IP and Port Settings"}
;hhSerAdd:{hhSerAdd,editbox,"RunModel - Household Server Address",N,"localhost"}
;hhSerPort:{hhSerPort,editbox,"RunModel - Household Server Port",N,1139}

;{label10,Note,10,"CT-RAMP Models to Run with Restart 1st Iteration"}
;restart:{restart,RadioBtn,"Restart Option","None","Usual Work/School Location Choice","Auto Ownership","Individual Mandatory Tour Frequency","Joint Tour Frequency","Individual Non-Mandatory Tour Frequency","Stop Frequency"}
;{label11,Note,10,"CT-RAMP Models to Run with Restart Subsequent Iterations"}
;restart2p:{restart2p,RadioBtn,"Restart Option","None","Usual Work/School Location Choice","Auto Ownership","Individual Mandatory Tour Frequency","Joint Tour Frequency","Individual Non-Mandatory Tour Frequency","Stop Frequency"}

;{label12,Note,10,"CT-RAMP Models to Run"}
;runUWSLC:{runUWSLC,checkbox,"Run Model - Usual Work And School Location Choice",1,False,True}
;runAO:{runAO,checkbox,Run Model - Auto Ownership,1,False,True}
;runFP:{runFP,checkbox,Run Model - Free Parking,1,False,True}
;runCDAP:{runCDAP,checkbox,Run Model - Coordinated Daily Activity Pattern,1,False,True}
;runIMTF:{runIMTF,checkbox,Run Model - Individual Mandatory Tour Frequency,1,False,True}
;runMTMC:{runMTMC,checkbox,Run Model - Mandatory Tour Mode Choice,1,False,True}
;runMTDTAP:{runMTDTAP,checkbox,Run Model - Mandatory Tour Departure Time And Duration,1,False,True}
;runJTF:{runJTF,checkbox,Run Model - Joint Tour Frequency,1,False,True}
;runJTLC:{runJTLC,checkbox,Run Model - Joint Tour Location Choice,1,False,True}
;runTMC:{runTMC,checkbox,Run Model - Joint Tour Mode Choice,1,False,True}
;runTDTAD:{runTDTAD,checkbox,Run Model - Joint Tour Departure Time And Duration,1,False,True}
;runINMTF:{runINMTF,checkbox,Run Model - Individual Non Mandatory Tour Frequency,1,False,True}
;runINMTLC:{runINMTLC,checkbox,Run Model - Individual Non Mandatory Tour Location Choice,1,False,True}
;runNMTMC:{runNMTMC,checkbox,Run Model - Individual Non Mandatory Tour Mode Choice,1,False,True}
;runINMTDTAD:{runINMTDTAD,checkbox,Run Model - Individual Non Mandatory Tour Departure Time And Duration,1,False,True}
;runAWSF:{runAWSF,checkbox,Run Model - At Work Subtour Frequency,1,False,True}
;runAWSLC:{runAWSLC,checkbox,Run Model - At Work Subtour Location Choice,1,False,True}
;runAWSMC:{runAWSMC,checkbox,Run Model - At Work Subtour Mode Choice,1,False,True}
;runAWSDTAD:{runAWSDTAD,checkbox,Run Model - At Work Subtour Departure Time And Duration,1,False,True}
;runSF:{runSF,checkbox,Run Model - Stop Frequency,1,False,True}
;runSL:{runSL,checkbox,Run Model - Stop Location,1,False,True}
;runST:{runST,checkbox,Run Model - Stop Timing,1,False,True}
;runSMC:{runSMC,checkbox,Run Model - Stop/Trip Mode Choice,1,False,True}

;{label14,Note,10,"CT-RAMP Distributed Model Run Settings"}
;packetSize:{packetSize,editbox,"Distributed Task Packet Size",N,2000}
;initPacSize:{initPacSize,editbox,"Initialization Packet Size",N,0}
;numInitPac:{numInitPac,editbox,"Number Initialization Packets",N,0}

;{label15,Note,10,"CT-RAMP Population Synthesizer Inputs"}
;popsynHHFile:{popsynHHFile,editbox,"Population Synthesizer Household File",N,"inputs/households.csv"}
;popsynPerFile:{popsynPerFile,editbox,"Population Synthesizer Person File",N,"inputs/persons.csv"}
;sampSize:{sampSize,editbox,"Population Synthesizer Sample Percents",N,"0.5,1.0,1.0"}
;sampleSeed:{sampleSeed,editbox,"Population Synthesizer Sample Seed",N,0}
;hhDAO:{hhDAO,editbox,"Disk-Based HH Manager - Filenames",N,"C:/temp/hhDiskArrayFiles"}
;numInMemHH:{numInMemHH,editbox,"Disk-Based HH Manager - Number HH in Memory",N,10000}

;{label16,Note,10,"CT-RAMP Usual Work And School Location Choice Model Settings"}
;uwslcRunWork:{uwslcRunWork,checkbox,"Usual Work And School Location Choice - Run Work",1,False,True}
;uwslcRunUniv:{uwslcRunUniv,checkbox,"Usual Work And School Location Choice - Run University",1,False,True}
;uwslcRunSch:{uwslcRunSch,checkbox,"Usual Work And School Location Choice - Run School",1,False,True}
;uwslcSPMaxI:{uwslcSPMaxI,editbox,"Usual Work And School Location Choice - Shadow Pricing - Max Iterations - 1st Feedback Loop",N,1}
;uwslcSPMaxI2p:{uwslcSPMaxI2p,editbox,"Usual Work And School Location Choice - Shadow Pricing - Max Iterations - Subsequent Feedback Loops",N,1}
;restartWSP:{restartWSP,checkbox,"Use Initial Shadow Pricing File for 1st Feedback Loop",1,False,True}
;alwaysfirstWSP:{alwaysfirstWSP,checkbox,"Always Use the Initial Shadow Pricing File for Feedback Loops",1,False,True}
;uwslcSPInF:{uwslcSPInF,editbox,"Initial Usual Work And School Location Choice Shadow Pricing Input File",N,"ShadowPricing_1_0.csv"}

;{label18,Note,10,"CT-RAMP Sample of Alternatives Sample Size Settings"}
;uwslcSOASS:{uwslcSOASS,editbox,"Usual Work And School Location Choice Sample Of Alts - Sample Size",N,30}
;jtlcSOASS:{jtlcSOASS,editbox,"Joint Tour Location Choice Sample Of Alts - Sample Size",N,30}
;inmtlcSOASS:{inmtlcSOASS,editbox,"Individual Non Mandatory Tour Location Choice Sample Of Alts Sample Size",N,30}
;awstlcSOASS:{awstlcSOASS,editbox,"At Work Subtour Location Choice Sample Of Alts - Sample Size",N,30}
;sLocSOASS:{sLocSOASS,editbox,"Stop Location Sample Of Alts - Sample Size",N,30}

;{label20,Note,10,"CT-RAMP Model Results Files"}
;rUWSLC:{rUWSLC,editbox,"Results - Usual Work And School Location Choice",N,"wsLocResults.csv"}
;rAO:{rAO,editbox,"Results - Auto Ownership",N,"aoResults.csv"}
;rCDAP:{rCDAP,editbox,"Results - Coordinated Daily Activity Pattern",N,"cdapResults.csv"}

;{label22,Note,10,"CT-RAMP Output Files"}
;tmcSUP:{tmcSUP,checkbox,"Tour Mode Choice Save Utilities and Probabilities",1,False,True}
;printTripsData:{printTripsData,checkbox,"Output Trips Data for ABMVIZ",1,False,True}

;{label25,Note,10,"Model Summary Settings"}
;{days,editbox,"Annual Work Days",N,"250"}
;{pcvot,editbox,"Passenger Car Value of Time",N,"21.50"}
;{tkvot,editbox,"Commercial Vehicle Value of Time",N,"36.00"}
;{passg_fuel,editbox,"Average Passenger Vehicle Fuel Economy",N,"25.00"}
;{trk_fuel,editbox,"Average Commercial Vehicle Fuel Economy",N,"6.20"}
;{pcfuel_cost,editbox,"Car Fuel Cost",N,"2.855"}
;{tkfuel_cost,editbox,"Truck Fuel Cost",N,"2.02"}
;-------------------------------------------------------------

; START CLUSTER NODES
*"C:\Program Files\Citilabs\CubeVoyager\Cluster.exe" {ProcID} 1-{XCPU} START EXIT

merge=5  ;set hov merge penalty (seconds)

COMP zoneDataCSV = 'ZoneData.csv'
COMP ZoneAccess  = 'accessibility.csv'

COMP hhDataFile = 'hhData.csv'
COMP perDataFile = 'personData.csv'
COMP iTourDataFile = 'indivTourData.csv'
COMP jTourDataFile = 'jointTourData.csv'
COMP iTripDataFile = 'indivTripData.csv'
COMP jTripDataFile = 'jointTripData.csv'
COMP tripsDataFile = 'tripData.csv'
COMP skimsDataFile = 'travelTimeData.csv'
COMP timeFormat = '%.1f'

COMP uwslcSPOutF = 'ShadowPricing'

COMP hhTable = 'household_data'
COMP perTable = 'person_data'
COMP iTourTable = 'indiv_tour_data'
COMP jTourTable = 'joint_tour_data'
COMP iTripTable = 'indiv_trip_data'
COMP jTripTable = 'joint_trip_data'

COMP runPopSyn = 'False'

COMP uecDC = 'ctrampModels/DestinationChoice.xls'
COMP uecSOAC = 'ctrampModels/DestinationChoiceAlternativeSample.xls'
COMP uecAO = 'ctrampModels/AutoOwnership.xls'
COMP uecFP = 'ctrampModels/FreeParkingEligibility.xls'
COMP uecCDAP = 'ctrampModels/CoordinatedDailyActivityPattern.xls'
COMP uecTMC = 'ctrampModels/ModeChoice.xls'
COMP uecIMTF = 'ctrampModels/IndividualMandatoryTourFrequency.xls'
COMP uecAWSF = 'ctrampModels/AtWorkSubtourFrequency.xls'
COMP uecJTF = 'ctrampModels/JointTours.xls'
COMP uecINMTF = 'ctrampModels/IndividualNonMandatoryTourFrequency.xls'
COMP uecTDT   ='ctrampModels/TourDeparture.xls'
COMP uecTAT   ='ctrampModels/TourArrival.xls'
COMP uecTD    ='ctrampModels/TourDuration.xls'
COMP uecTDAA  ='ctrampModels/TourDepartureAndArrival.xls'
COMP uecSF = 'ctrampModels/StopFrequency.xls'
COMP uecSL = 'ctrampModels/StopDestinationChoice.xls'
COMP uecSLS = 'ctrampModels/StopDestinationChoiceAlternativeSample.xls'
COMP uecST1 = 'ctrampModels/StopDepartureAndDurationStage1.xls'
COMP uecST2 = 'ctrampModels/StopDepartureAndDurationStage2.xls'
COMP uecTripMC = 'ctrampModels/TripModeChoice.xls'
COMP uecPLC = 'ctrampModels/Parklocation.xls'
COMP uecSkims = 'ctrampModels/TravelTime.xls'

COMP uwslcSTCInF = 'ctrampModels/DestinationChoiceSizeCoefficients.csv'
COMP uwslcALInF = 'ctrampModels/DestinationChoiceAlternatives.csv'

COMP sDCSCInF = 'ctrampModels/StopDestinationChoiceCoefficients.csv'
COMP sPurpLkupProp = 'ctrampModels/StopPurposeLookup.csv'

COMP cdbdPAF = 'ctrampModels/cbd_parking_zones.csv'

COMP tssaeALInF = 'ctrampModels/TourSkimStartAndEndAlternatives.csv'
COMP tdtALInF = 'ctrampModels/TourDepartureAlternatives.csv'
COMP tatALInF = 'ctrampModels/TourArrivalAlternatives.csv'
COMP tdALInF = 'ctrampModels/TourDurationAlternatives.csv'

COMP inmtfALInF = 'ctrampModels/IndividualNonMandatoryTourFrequencyAlternatives.csv'
COMP inmtFEProbF = 'ctrampModels/IndividualNonMandatoryTourFrequencyExtensionProbabilities.csv'
COMP st1ALInF = 'ctrampModels/StopDepartureTimeStage1Alternatives.csv'
COMP st2ALInF = 'ctrampModels/StopDepartureTimeStage2Alternatives.csv'

COMP soaSwitch = '1,1,1,1,1,1,0,0,0,0,0,0,0,0'

;Calculate some global parameters
externals='{ext1}-{ext2}'
numZones = {lastin}
zonesSq ={lastin}*{lastin}
sampSizeArrayInit = '{sampSize}'
sampSizeArray = '{sampSize}'
sampleSeed = '{sampleSeed}'

;shadow pricing iteration counter is base 0
uwslcSPMaxI = {uwslcSPMaxI} - 1 
uwslcSPMaxI2p = {uwslcSPMaxI2p} - 1

IF({restart.n}=1) RestartCode = 'none'
IF({restart.n}=2) RestartCode = 'uwsl'
IF({restart.n}=3) RestartCode = 'ao'
IF({restart.n}=4) RestartCode = 'imtf'
IF({restart.n}=5) RestartCode = 'jtf'
IF({restart.n}=6) RestartCode = 'inmtf'
IF({restart.n}=7) RestartCode = 'stf'

IF({restart2p.n}=1) RestartCode2p = 'none'
IF({restart2p.n}=2) RestartCode2p = 'uwsl'
IF({restart2p.n}=3) RestartCode2p = 'ao'
IF({restart2p.n}=4) RestartCode2p = 'imtf'
IF({restart2p.n}=5) RestartCode2p = 'jtf'
IF({restart2p.n}=6) RestartCode2p = 'inmtf'
IF({restart2p.n}=7) RestartCode2p = 'stf'

;create logFiles folder - if folder already exists, returns ? in print file
*mkdir logFiles
*mkdir EVAL

;clean out old log files - ones without a filelock from the CT-RAMP processes
*del logFiles /Q

;delete feedback convergence print file if present (because the program appends the print file)
*del fdbconverge.prn

IF({chkPrep.n}+{chkComVeh.n}+{chkFdB.n}+{chkTrn.n}+{chkTOD.n}=0) goto :End
IF({chkPrep.n}=0) goto :CheckComVeh

;copy shadow pricing file to model root directory
*copy PARAMETERS\ShadowPricing_1_0_Yr{year}.csv ShadowPricing_1_0.csv

;copy autoOwnershipDistrict file into root of model
*copy PARAMETERS\autoOwnershipDistrict.csv autoOwnershipDistrict.csv

;Read in landuse data
RUN PGM=MATRIX
	RECI=INPUTS\Emp{year}.csv,delimiter=',' TAZ=1,FIPS=2,EMP=3,N11=4,N21=5,N22=6,N23=7,N313233=8,N42=9,N4445=10,N4849=11,N51=12,N52=13,N53=14,
								N54=15,N55=16,N56=17,N61=18,N62=19,N71=20,N72=21,N81=22,N92=23,CONS=24,MANU=25,TCU=26,WHOL=27,RETAIL=28,
								FIRE=29,SERV=30,GOVT=31

	RECO=EMP.DBF,FIELDS=RECI.ALLFIELDS

	IF(RECI.RECNO>1)
		WRITE RECO=1
	ENDIF
ENDRUN

;USE THE SAME INPUT AS POPSYN - WRITE AS DBF FOR COLUMN HEADERS
RUN PGM=MATRIX
	ZDATI[1] = INPUTS\HSHLD{year}G.TXT, z=#1, i1s1=#2, i1s2=#3, i1s3=#4, i1s4=#5, i1s5=#6, i1s6=#7,
								i2s1=#8, i2s2=#9, i2s3=#10, i2s4=#11, i2s5=#12, i2s6=#13,
								i3s1=#14, i3s2=#15, i3s3=#16, i3s4=#17, i3s5=#18, i3s6=#19,
								i4s1=#20, i4s2=#21, i4s3=#22, i4s4=#23, i4s5=#24, i4s6=#25,
								hh = #26, pop=#27
	RECO[1]=HH.DBF,FIELDS=TAZ,I1H1,I1H2,I1H3,I1H4,I1H5,I1H6,I2H1,I2H2,I2H3,I2H4,I2H5,I2H6,I3H1,I3H2,I3H3,I3H4,I3H5,I3H6,I4H1,I4H2,I4H3,I4H4,I4H5,I4H6,HH,POP

	ZONES={lastin}
	ZONEMSG=50

	RO.TAZ=I
	RO.I1H1=ZI.1.I1S1
	RO.I1H2=ZI.1.I1S2
	RO.I1H3=ZI.1.I1S3
	RO.I1H4=ZI.1.I1S4
	RO.I1H5=ZI.1.I1S5
	RO.I1H6=ZI.1.I1S6
	RO.I2H1=ZI.1.I2S1
	RO.I2H2=ZI.1.I2S2
	RO.I2H3=ZI.1.I2S3
	RO.I2H4=ZI.1.I2S4
	RO.I2H5=ZI.1.I2S5
	RO.I2H6=ZI.1.I2S6
	RO.I3H1=ZI.1.I3S1
	RO.I3H2=ZI.1.I3S2
	RO.I3H3=ZI.1.I3S3
	RO.I3H4=ZI.1.I3S4
	RO.I3H5=ZI.1.I3S5
	RO.I3H6=ZI.1.I3S6
	RO.I4H1=ZI.1.I4S1
	RO.I4H2=ZI.1.I4S2
	RO.I4H3=ZI.1.I4S3
	RO.I4H4=ZI.1.I4S4
	RO.I4H5=ZI.1.I4S5
	RO.I4H6=ZI.1.I4S6
	RO.HH=ZI.1.HH
	RO.POP=ZI.1.POP
	WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
	RECI=INPUTS\Univ{year}.csv,delimiter=',' TAZ=1,UNIV=2,ACRES=3
	RECO=UNIVERSITY.DBF,FIELDS=RECI.ALLFIELDS
	IF(RECI.RECNO>1)
		WRITE RECO=1
	ENDIF
ENDRUN

RUN PGM=MATRIX
	RECI=INPUTS\SchoolEnroll{year}.csv,delimiter=',' TAZ=1,EnrollDS=2,EnrollPD=3
	RECO=SchoolEnroll.DBF,FIELDS=RECI.ALLFIELDS
	IF(RECI.RECNO>1)
		WRITE RECO=1
	ENDIF
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=EMP.DBF,Z=TAZ
	ZDATI[2]=HH.DBF,Z=TAZ
	ZDATI[3]=UNIVERSITY.DBF,Z=TAZ
	ZDATI[4]=SCHOOLENROLL.DBF,Z=TAZ
	ZDATI[5] = inputs\ExtraZoneData{year}.prn, 
		z         = #1, ;zone
		distr     = #2, ;district code
		parkt     = #3, ;total parking spaces
		parkl     = #4, ;long term parking spaces
		propf     = #5, ;proportion free parking
		parkr     = #6, ;parking rate (charge)
		cnty      = #7, ;county code
		cbd       = #8  ;cbd flag
	RECO=ZoneData.DBF,FIELDS=zone(8.0),construc(10.0),manufac(10.0),TCU(10.0),wholesl(10.0),retail(10.0),FIRE(10.0),service(10.0),private(10.0),
							govt(10.0),govt2(10.0),emp(10.0),pop(10.0),hshld(10.0),univ(10.0),acres(10.0),otherEmp(10.0),district(10.0),
							PARKTOT(10.0),PARKLNG(10.0),PROPFREE(10.3),PARKRATE(10.3),county(8.0),cbdflag(8.0),
							N11(10.0),N21(10.0),N22(10.0),N23(10.0),N313233(10.0),N42(10.0),N4445(10.0),N4849(10.0),N51(10.0),N52(10.0),N53(10.0),
							N54(10.0),N55(10.0),N56(10.0),N61(10.0),N62(10.0),N71(10.0),N72(10.0),N81(10.0),N92(10.0),EnrollDS(10.0),EnrollPD(10.0)

	ZONES={lastin}
	ZONEMSG=100

	RO.zone = z                       ;set zone
	RO.construc = ZI.1.cons           ;construction
	RO.manufac = ZI.1.manu            ;manufacturing
	RO.TCU = ZI.1.tcu                 ;TCU - transportation, communication, utilities
	RO.wholesl = ZI.1.whol            ;wholesale
	RO.retail = ZI.1.retail           ;retail
	RO.FIRE = ZI.1.fire               ;FIRE - finance, insurance, real estate 
	RO.service = ZI.1.serv            ;service
	RO.private = ZI.1.EMP - ZI.1.GOVT ;total private
	RO.govt = ZI.1.govt               ;government
	RO.govt2 = ZI.1.govt              ;government
	RO.emp = ZI.1.emp                 ;total employment
	RO.pop = ZI.2.pop                 ;population
	RO.hshld = ZI.2.hh                ;household
	RO.univ = ZI.3.univ               ;university enrollment
	RO.acres = ZI.3.acres             ;area - acres
	RO.otherEmp = RO.construc + RO.manufac + RO.TCU + RO.wholesl + RO.FIRE + RO.govt
	RO.district = ZI.5.distr
	RO.PARKTOT = ZI.5.parkt
	RO.PARKLNG = ZI.5.parkl
	RO.PROPFREE = ZI.5.propf
	RO.PARKRATE = ZI.5.parkr
	RO.county = ZI.5.cnty
	RO.cbdflag = ZI.5.cbd

	;add NAICS employment codes
	RO.N11 = ZI.1.N11
	RO.N21 = ZI.1.N21
	RO.N22 = ZI.1.N22
	RO.N23 = ZI.1.N23
	RO.N313233 = ZI.1.N313233
	RO.N42 = ZI.1.N42
	RO.N4445 = ZI.1.N4445
	RO.N4849 = ZI.1.N4849
	RO.N51 = ZI.1.N51
	RO.N52 = ZI.1.N52
	RO.N53 = ZI.1.N53
	RO.N54 = ZI.1.N54
	RO.N55 = ZI.1.N55
	RO.N56 = ZI.1.N56
	RO.N61 = ZI.1.N61
	RO.N62 = ZI.1.N62
	RO.N71 = ZI.1.N71
	RO.N72 = ZI.1.N72
	RO.N81 = ZI.1.N81
	RO.N92 = ZI.1.N92
	RO.ENROLLDS=ZI.4.ENROLLDS
	RO.ENROLLPD=ZI.4.ENROLLPD
	WRITE RECO=1

	;create NWTAZ file required by other model components
	PRINT LIST=ZI.1.TAZ(16.0),ZI.1.CONS(24.0),ZI.1.MANU(8.0),ZI.1.TCU(8.0),ZI.1.WHOL(8.0),ZI.1.RETAIL(8.0),ZI.1.FIRE(8.0),ZI.1.SERV(8.0),RO.PRIVATE(8.0),
				ZI.1.GOVT(8.0),ZI.1.GOVT(24.0),ZI.1.EMP(8.0),ZI.2.POP(8.0),ZI.2.HH(8.0),ZI.3.UNIV(8.0),ZI.3.ACRES(8.0),FILE=NWTAZ{year}G.PRN

	;create HSHLD file required by other model components
	PRINT LIST=ZI.2.TAZ(5.0),ZI.2.I1H1(5.0),ZI.2.I1H2(5.0),ZI.2.I1H3(5.0),ZI.2.I1H4(5.0),ZI.2.I1H5(5.0),ZI.2.I1H6(5.0),
							ZI.2.I2H1(5.0),ZI.2.I2H2(5.0),ZI.2.I2H3(5.0),ZI.2.I2H4(5.0),ZI.2.I2H5(5.0),ZI.2.I2H6(5.0),
							ZI.2.I3H1(5.0),ZI.2.I3H2(5.0),ZI.2.I3H3(5.0),ZI.2.I3H4(5.0),ZI.2.I3H5(5.0),ZI.2.I3H6(5.0),
							ZI.2.I4H1(5.0),ZI.2.I4H2(5.0),ZI.2.I4H3(5.0),ZI.2.I4H4(5.0),ZI.2.I4H5(5.0),ZI.2.I4H6(5.0),FILE=HSHLD{year}G.DAT
ENDRUN

;Household income percent for mode choice
;create DBF of households for lookup
RUN PGM=MATRIX
	RECI=INPUTS\HOUSEHOLDS.CSV,DELIMITER=',' ZONE=5,INC=13,HHID=20
	RECO=HOUSEHOLDS.DBF,FIELDS=RECI.ALLFIELDS
	IF(RECI.RECNO>1)
		WRITE RECO=1
		_cnt=_cnt+1
	ENDIF
ENDRUN

;read in zone data file (use # households as looping attribute for efficiency)
;accumulate # households by income group
RUN PGM=MATRIX
	DBI[1]=ZoneData.DBF,SORT=ZONE
	DBI[2]=HOUSEHOLDS.DBF,SORT=ZONE
	RECO=TAZ_HHINC.DBF,FIELDS=TAZ,INC1,INC2,INC3,INC4
	ZONES=1

	LOOP ZNE=1,DBI.1.NUMRECORDS  ;loop through all TAZs
		x = DBIReadRecord(1,ZNE)          ;read each individual TAZ

		RO.TAZ=DI.1.ZONE
		_INC1=0
		_INC2=0
		_INC3=0
		_INC4=0
 
		HSHLD=DI.1.HSHLD  ;get TAZ level household # for looping 
 
		y = DBISeek(2,RO.TAZ)   ;find TAZ number (no need to loop through all records)
		_cnt = 1
		
		LOOP HH=1,HSHLD  ;loop through all households within a zone
			x = DBIReadRecord(1,HH)    ;read each individual household in zone
			
			IF(_CNT=1)
				IF(DI.2.ZONE=RO.TAZ)
					IF(DI.2.INC<10000)
						_INC1 = _INC1 + 1
					ELSEIF(DI.2.INC<20000)
						_INC2 = _INC2 + 1
					ELSEIF(DI.2.INC<40000)
						_INC3 = _INC3 + 1
					ELSE
						_INC4 = _INC4 + 1
					ENDIF ;INC
				ENDIF ;ZONE=TAZ
			ENDIF ;CNT=1
			
			IF(DBI.2.RECNO<DBI.2.NUMRECORDS) ;check on last record
				w = DBIReadNext(2,1)            ;read next record and accumulate auto results for each TAZ
				_CNT = _CNT + 1
				IF(DI.2.ZONE=RO.TAZ)
					IF(DI.2.INC<10000)
						_INC1 = _INC1 + 1
					ELSEIF(DI.2.INC<20000)
						_INC2 = _INC2 + 1
					ELSEIF(DI.2.INC<40000)
						_INC3 = _INC3 + 1
					ELSE
						_INC4 = _INC4 + 1
					ENDIF ;INC
				ENDIF ;ZONE=TAZ
			ENDIF ;RECORD CHECK
		ENDLOOP
 
		RO.INC1=_INC1
		RO.INC2=_INC2
		RO.INC3=_INC3
		RO.INC4=_INC4
		WRITE RECO=1
	ENDLOOP
ENDRUN

RUN PGM=MATRIX
	RECI=TAZ_HHINC.DBF
	RECO=TAZ_HHINC_PCT.DBF,FIELDS=TAZ,INC1,INC2,INC3,INC4,TOT,PCT1,PCT2,PCT3,PCT4

	RO.TAZ=RI.TAZ
	RO.INC1=RI.INC1
	RO.INC2=RI.INC2
	RO.INC3=RI.INC3
	RO.INC4=RI.INC4
	RO.TOT=RO.INC1+RO.INC2+RO.INC3+RO.INC4

	IF(RO.TOT>0)
		RO.PCT1=RO.INC1/RO.TOT*100
		RO.PCT2=RO.INC2/RO.TOT*100
		RO.PCT3=RO.INC3/RO.TOT*100
		RO.PCT4=RO.INC4/RO.TOT*100
	ELSE
		RO.PCT1=0
		RO.PCT2=0
		RO.PCT3=0
		RO.PCT4=0
	ENDIF
	WRITE RECO=1
ENDRUN

; write gdb network to binary network file
RUN PGM=NETWORK
	NETI=inputs\arc_20{year}.gdb\arc{year}hwy
	NETO="input.net"
ENDRUN

;build distance skim to test centroid connectivity
RUN PGM=HIGHWAY
	NETI=INPUT.NET
	MATO=TEST_CONN.SKM,MO=1,NAME=DISTANCE
	ZONEMSG=50

	PHASE=LINKREAD
		IF(li.factype> 49)    ADDTOGROUP=1   ; Transit only
	ENDPHASE

	PHASE=ILOOP
		PATHLOAD PATH=DIST,MW[1]=PATHTRACE(DIST),NOACCESS=-1,excludegrp=1
	ENDPHASE
ENDRUN

;run matrix step to check for connectivity
; return code = 3 for a manual abort
RUN PGM=MATRIX
	MATI=TEST_CONN.SKM
	ZONEMSG=50
	abortflag=0
	
	JLOOP
		IF(I<>J)  ;don't check intrazonals
			IF(MI.1.1[J]<0)
				PRINT LIST=I,J,FILE=CentroidCheck.PRN
				abortflag=1
			ENDIF
		ENDIF
	ENDJLOOP
	
	IF(abortflag=1) ABORT MSG='Centroid not properly connected'
ENDRUN

RUN PGM=NETWORK
	;write out node file
	NETI=input.net
	NODEI[2]=ZoneData.dbf,RENAME=ZONE-N
	PRINTO[2]=STATION_ACCESS.DAT
	PRINTO[3]=PT_PNR.DAT
	PRINTO[4]=PT_PNR_INBOUND.DAT
	PRINTO[5]=KNR_STATION.DAT
	PRINTO[6]=KNR_STATION_INBOUND.DAT
	NETO=arc{year}hwy1.tmp,
		exclude=construc,manufac,tcu,wholesl,retail,fire,
				service,govt,emp,pop,hshld,univ,acres,
				OTHEREMP,DISTRICT,PARKTOT,PARKLNG,PROPFREE,PARKRATE

	PHASE=NODEMERGE
		IF(n<={lastin})
			acres=NI.2.acres
		ENDIF

; For generation of OUTBOUND/INBOUND KNR rail station connectors (jln 10/13/16 - update node print format to 6-digits)
		IF(NI.1.staflag=1)
			PRINT LIST='GENERATE,NTLEGMODE=2,COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,MAXCOST=999*20 MAXNTLEGS=999*99,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=99) FROMNODE=1-5922 TONODE=',NI.1.N(6.0),PRINTO=5
			PRINT LIST='GENERATE,NTLEGMODE=2,COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,MAXCOST=999*20 MAXNTLEGS=999*99,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=99) FROMNODE=',NI.1.N(6.0),' TONODE=1-5922',PRINTO=6
		ENDIF
	ENDPHASE

	PHASE=LINKMERGE
		_ax=a.x
		_ay=a.y
		_bx=b.x
		_by=b.y

		;zero out external connector distances
		IF(a={ext1}-{ext2}|| b={ext1}-{ext2})
			distance=0
		ENDIF

		;set airport connectors to 1/4 mile
		IF(a={airpt} | b={airpt})
			distance=0.25
		ENDIF

		IF(DISTANCE>0)
			WALKTIME=DISTANCE/2.5*60
		ELSE
			WALKTIME=0
		ENDIF

		; Write transit access/transfer links
		IF(FACTYPE=53)
			PRINT LIST='NT LEG=',A(6),'-',B(6),' MODE=4 COST=1 DIST=0.05 ONEWAY=F', PRINTO=2
		ENDIF

		; For generation of PNR OUTBOUND connectors
		IF(FACTYPE=55 & A.PNR=1)
			IF(A.PNR_MAJOR=1)
				PRINT LIST='GENERATE,NTLEGMODE=3,COST=LI.TIME_1,MAXCOST=999*40,',"\n",
					'ACCESSLINK=',A(6LR),'-',B(6LR),',',WALKTIME(10.2LR),',',DISTANCE(10.2LR),',',"\n",
					'DIRECTION=1',',EXCLUDELINK=(LI.FACTYPE=4-6,99)',PRINTO=3
			ELSE
				PRINT LIST='GENERATE,NTLEGMODE=3,COST=LI.TIME_1,MAXCOST=999*10,',"\n",
					'ACCESSLINK=',A(6LR),'-',B(6LR),',',WALKTIME(10.2LR),',',DISTANCE(10.2LR),',',"\n",
					'DIRECTION=1',',EXCLUDELINK=(LI.FACTYPE=4-6,99)',PRINTO=3
			ENDIF
		ENDIF

		; For generation of PNR INBOUND connectors
		IF(FACTYPE=55 & A.PNR=1)
			IF(A.PNR_MAJOR=1)
				PRINT LIST='GENERATE,NTLEGMODE=3,COST=LI.TIME_1,MAXCOST=999*40,',"\n",
					'ACCESSLINK=',A(6LR),'-',B(6LR),',',WALKTIME(10.2LR),',',DISTANCE(10.2LR),',',"\n",
					'DIRECTION=2',',EXCLUDELINK=(LI.FACTYPE=4-6,99)',PRINTO=4
			ELSE
				PRINT LIST='GENERATE,NTLEGMODE=3,COST=LI.TIME_1,MAXCOST=999*10,',"\n",
					'ACCESSLINK=',A(6LR),'-',B(6LR),',',WALKTIME(10.2LR),',',DISTANCE(10.2LR),',',"\n",
					'DIRECTION=2',',EXCLUDELINK=(LI.FACTYPE=4-6,99)',PRINTO=4
			ENDIF
		ENDIF
	ENDPHASE
ENDRUN

IF({chkATy.n}=0) goto :CheckBuildNets

; DETERMINE HIGHWAY AREA TYPES
; Use the NETWORK module to find the closest TAZ to each link midpoint
; Add the closest TAZ based on a-node / b-node in addition to midpoint
RUN PGM=NETWORK
	NETI=arc{Year}hwy1.tmp
	NETO=tempnet.tmp

	; set the highest node number as maximum zones
	ZONES={totzones}
	array _centn={lastin},_centx={lastin},_centy={lastin}
  
	; put centroid number and coordinates into arrays
	PHASE=NODEMERGE
		IF(n<={lastin})
			_cnt=_cnt+1
			_centn[_cnt]=n
			_centx[_cnt]=x
			_centy[_cnt]=y
		ENDIF
	ENDPHASE

	; process each link and find the nearest TAZ centroid to each link midpoint
	PHASE=LINKMERGE
		; determine link midpoint
		_ax=a.x
		_ay=a.y
		_bx=b.x
		_by=b.y
		_midptx=(_ax+_bx)/2
		_midpty=(_ay+_by)/2

		; initialize variables
		_min_dist=999999
		_min_dist2=999999
		_closest=0
		_closest2=0
		TAZ=0
		TAZ2=0

		; find nearest centroid
		LOOP _index=1,_cnt    ; loop through each centroid
			; calculate the distance between the link midpoint and TAZ centroid
			_dist=sqrt((_midptx-_centx[_index])^2 +(_midpty-_centy[_index])^2)
			
			; save info if TAZ centroid is closer than previous centroid
			IF(_dist < _min_dist)
				_min_dist=_dist
				_closest=_index
			ENDIF
      
			IF(_closest > 0) TAZ=_closest  ; If near TAZ is found
				; calculate the distance between the link anode and TAZ centroid
				_dist2=sqrt((_ax-_centx[_index])^2 +(_ay-_centy[_index])^2)
				; save info if TAZ centroid is closer than previous centroid
				IF(_dist2 < _min_dist2)
					_min_dist2=_dist2
					_closest2=_index
				ENDIF
			IF(_closest2 > 0) TAZ2=_closest2  ; If near TAZ is found
		ENDLOOP

		; Set external station link TAZ to station number
		IF(a={ext1}-{ext2})
			TAZ=a
		ENDIF
    
		IF(b={ext1}-{ext2})
			TAZ=b
		ENDIF
	ENDPHASE
ENDRUN

;  Use the NETWORK module to accumulate SE data for each TAZ based on a floating zone
;  methodology.  This method would accumulate SE data (as well as acreage) for all 
;  the TAZ's within a preset distance (1 mile) of that TAZ.  Then this data
;  will be used to calculate the population and employement density for that TAZ.  This
;  method allows for a smoother transition between area types for links.
RUN PGM=NETWORK
	NETI[1]=tempnet.tmp    ; network with TAZ on links
	; read in the zonal SE data file in fixed format
	NODEI[2]=ZoneData.dbf,RENAME=ZONE-N
	NETO=arc{year}hy_A.net  

	array _centn={totzones},_centx={totzones},_centy={totzones},
		_pop={totzones},_totemp={totzones},_acres={totzones},_totpopemp={totzones},   
		_fltpop={totzones},_fltemp={totzones},_fltacres={totzones},
		_poplu={totzones},_emplu={totzones},_totlu={totzones},                        
		_const={totzones},_manuf={totzones},_tcu={totzones},
		_whole={totzones},_retail={totzones},_fire={totzones},
		_service={totzones},_govt={totzones},
		_fltconst={totzones},_fltmanuf={totzones},_flttcu={totzones},
		_fltwhole={totzones},_fltretail={totzones},_fltfire={totzones},
		_fltservice={totzones},_fltgovt={totzones},_ntrnflag={totzones},
		_density={totzones},_park={totzones},_autozone={totzones},_fltpopemp={totzones} 

	; put centroid number and coordinates into arrays
	PHASE=NODEMERGE
		IF(n<={totzones})
			_cnt=_cnt+1
			_centn[_cnt]=n
			_centx[_cnt]=x
			_centy[_cnt]=y
			_pop[_cnt]=pop
			_totemp[_cnt]=emp
			_acres[_cnt]=acres
		
			; ARC employment category arrays
			_const[_cnt]=CONSTRUC
			_manuf[_cnt]=MANUFAC
			_tcu[_cnt]=tcu
			_whole[_cnt]=WHOLESL
			_retail[_cnt]=retail
			_fire[_cnt]=fire
			_service[_cnt]=service
			_govt[_cnt]=govt
    
			; initialize floating zone arrays
			_fltpop[_cnt]=0
			_fltemp[_cnt]=0
			_fltacres[_cnt]=0
			_fltpopemp[n]=0 
    
			; ARC employment category floating zone arrays
			_fltconst[_cnt]=0
			_fltmanuf[_cnt]=0
			_flttcu[_cnt]=0
			_fltwhole[_cnt]=0
			_fltretail[_cnt]=0
			_fltfire[_cnt]=0
			_fltservice[_cnt]=0
			_fltgovt[_cnt]=0
		ENDIF
	ENDPHASE

	PHASE=LINKMERGE
		_linkcnt=_linkcnt+1
		; loop thru centroids to accumulate floating zone data
		IF(_linkcnt=1)
			LOOP _taz=1,{totzones}
				LOOP _taz2=1,{totzones}
					IF(_taz<={totzones} & _centn[_taz]>0)
						; calculate the distance between the subject TAZ and other TAZs
						_dist=sqrt((_centx[_taz]-_centx[_taz2])^2 +(_centy[_taz]-_centy[_taz2])^2)
						; save info if less than previous nodes
						IF(_dist <= 3960)
							_tmppop=_fltpop[_taz]+_pop[_taz2]
							_fltpop[_taz]=_tmppop
							_tmpemp=_fltemp[_taz]+_totemp[_taz2]
							_fltemp[_taz]=_tmpemp
							_tmpacres=_fltacres[_taz]+_acres[_taz2]
							_fltacres[_taz]=_tmpacres
							_fltpopemp[_taz]=_tmppop+_tmpemp 
				  
							; ARC employment categories
							_tmpconst=_fltconst[_taz]+_const[_taz2]
							_fltconst[_taz]=_tmpconst
							_tmpmanuf=_fltmanuf[_taz]+_manuf[_taz2]
							_fltmanuf[_taz]=_tmpmanuf
							_tmptcu=_flttcu[_taz]+_tcu[_taz2]
							_flttcu[_taz]=_tmptcu
							_tmpwhole=_fltwhole[_taz]+_whole[_taz2]
							_fltwhole[_taz]=_tmpwhole
							_tmpretail=_fltretail[_taz]+_retail[_taz2]
							_fltretail[_taz]=_tmpretail
							_tmpfire=_fltfire[_taz]+_fire[_taz2]
							_fltfire[_taz]=_tmpfire
							_tmpservice=_fltservice[_taz]+_service[_taz2]
							_fltservice[_taz]=_tmpservice
							_tmpgovt=_fltgovt[_taz]+_govt[_taz2]
							_fltgovt[_taz]=_tmpgovt
						ENDIF
					ENDIF
				ENDLOOP

				; write out the accumulated SE data and acreage for each TAZ
				PRINT form=8.0, file=fltzone.txt,list=_taz,_fltconst[_taz],_fltmanuf[_taz],_flttcu[_taz],_fltwhole[_taz],
					_fltretail[_taz],_fltfire[_taz],_fltservice[_taz],_fltgovt[_taz],_fltpop[_taz],_fltemp[_taz],_fltpopemp[_taz],_fltacres[_taz](10.2),
					_pop[_taz],_totemp[_taz],_acres[_taz](11.3),_centx[_taz](9),_centy[_taz](9)   

				_tmppop=0
				_tmpemp=0
				_tmpacres=0
				_tmpconst=0
				_tmpmanuf=0
				_tmptcu=0
				_tmpwhole=0
				_tmpretail=0
				_tmpfire=0
				_tmpservice=0
				_tmpgovt=0
			ENDLOOP
		ENDIF

		; Lookup Area Type using Floating Zone Data and Link TAZ
		Lookup Name=_AreaType,
			Lookup[1]=1, Result=2,    ; Area Type for Employment Density Group 1
			Lookup[2]=1, Result=3,    ; Area Type for Employment Density Group 2
			Lookup[3]=1, Result=4,    ; Area Type for Employment Density Group 3
			Lookup[4]=1, Result=5,    ; Area Type for Employment Density Group 4
			Lookup[5]=1, Result=6,    ; Area Type for Employment Density Group 5
			Lookup[6]=1, Result=7,    ; Area Type for Employment Density Group 6
			Lookup[7]=1, Result=8,    ; Area Type for Employment Density Group 7
			Fail=-1,-1,-1, Interpolate=N,    ; returns -1 if fail, no interpolation
			
			; ------- Lookup data starts here:
			;              Employment Density Group
			;         -----------------------------
			;         Pop    1  2  3  4  5  6  7
			;         Group
			;         -----------------------------
			R=' 1     7  7  6  4  4  3  2',
				' 2     7  6  6  4  3  3  2',
				' 3     7  6  5  4  3  2  2',
				' 4     6  5  5  4  3  2  2',
				' 5     6  5  5  4  3  2  1',
				' 6     5  5  5  3  3  2  1',
				' 7     5  5  5  3  2  2  1'

		IF(_linkcnt=1)
			LOOP _t=1,{totzones}
				_pop=_fltpop[_t]
				_totemp=_fltemp[_t]
				_acres=_fltacres[_t]
      
				IF(_fltacres[_t]=0)   ; this is a check for TAZ's that have no socieconomic data and are just
					_popdensity=0         ;  placeholders or "dummy zones" to be used in future model updates  
					_empdensity=0
					_new_val=0
					_retden=0
					_comden=0
					_indden=0
				ELSE   
					; Calulate employment density based on factors for different types of employment
					_retail=_fltretail[_t]
					_commercial=_fltfire[_t]+_fltservice[_t]+_fltgovt[_t]
					_industrial=_fltconst[_t]+_fltmanuf[_t]+_flttcu[_t]+_fltwhole[_t]
					_emp_val=(10*_retail) + _commercial + (0.3*_industrial)
					_retden=_retail/_fltacres[_t]
					_comden=_commercial/_fltacres[_t]
					_indden=_industrial/_fltacres[_t]

					_totpopemp=((10*_retail) + _commercial + (0.3*_industrial)) + (_fltpop[_t])    
					_tmpempchk=((10*_retail) + _commercial + (0.3*_industrial))                    

					_new_val=_totpopemp/_fltacres[_t]       

					PRINT list=_t(6),_retail(6),_commercial(6),_industrial(6),_tmpempchk(6),_fltpop[_t](8),_totpopemp(8),_fltacres[_t](8.0),_new_val(8.2),file=temp.txt

					; Airport Adjustments
					IF(_t= {airpt})
						_popdensity=round((_fltpop[_t]/(_fltacres[_t]*0.25))*100)/100
						_empdensity=round((_emp_val/(_fltacres[_t]*0.25))*100)/100
						_new_val=round((_totpopemp*0.25)*100)/100                  

					ELSE
						_popdensity=round((_fltpop[_t]/_fltacres[_t])*100)/100
						_empdensity=round((_emp_val/_fltacres[_t])*100)/100
					ENDIF
				ENDIF

				; set adjustment for total pop+emp 
				IF(_new_val<=0.50)    
					_totlu[_t]=7
				ELSEIF(_new_val<=1.50) 
					_totlu[_t]=6
				ELSEIF(_new_val<=9.00)  
					_totlu[_t]=5
				ELSEIF(_new_val<=15.00)  
					_totlu[_t]=4
				ELSEIF(_new_val<=25.00)  ;5.4
					_totlu[_t]=3
				ELSEIF(_new_val<=48.00)  ;8.07
					_totlu[_t]=2
				ELSEIF(_new_val>48.00)   ;8.07
					_totlu[_t]=1
				ENDIF

				; set population density lookup value
				IF(_popdensity<=0.32)    ;.43
					_poplu[_t]=1
				ELSEIF(_popdensity<=0.60)  ;78
					_poplu[_t]=2
				ELSEIF(_popdensity<=1.89)  ;2.38
					_poplu[_t]=3
				ELSEIF(_popdensity<=3.28)  ;3.48
					_poplu[_t]=4
				ELSEIF(_popdensity<=5.21)  ;5.4
					_poplu[_t]=5
				ELSEIF(_popdensity<=8.67)  ;8.07
					_poplu[_t]=6
				ELSEIF(_popdensity>8.67)   ;8.07
					_poplu[_t]=7
				ENDIF

				; set empdensity lookup value
				IF(_empdensity<=0.05)     ;.05
					_emplu[_t]=1
				ELSEIF(_empdensity<=0.21)  ;.32
					_emplu[_t]=2
				ELSEIF(_empdensity<=6.10)  ;6.65
					_emplu[_t]=3
				ELSEIF(_empdensity<=11.61) ;12.44
					_emplu[_t]=4
				ELSEIF(_empdensity<=20.00) ;25.1
					_emplu[_t]=5
				ELSEIF(_empdensity<=33.04) ;57.97
					_emplu[_t]=6
				ELSEIF(_empdensity>33.04)  ;57.97
					_emplu[_t]=7
				ENDIF

				; adjustment for Dobbins - set area type same as adjacent zone
				_dobbins={dobbins}-1
				IF(_t=_dobbins)
					_savtotlu=_totlu[_t]
				ENDIF
				
				IF(_t={dobbins})
					_totlu[_t]=_savtotlu
				ENDIF

				; adjustments for externals stations - make all links rural, class 7
				IF(_t=@externals@)
					_totlu[_t]=7
				ENDIF

				; Flag non-transit friendly zones - no longer used
				IF(_t>0)
					_ntrnflag[_t] = 1
				ENDIF

				; Calculate and flag zones with acceptable parking costs
				; Zone Density
				IF(_acres[_t]>0)
					_DENSITY[_t]=INT(_totemp[_t]/_acres[_t])
				ELSE
					_DENSITY[_t]=0
				ENDIF  
  
				; Parking Cost
				IF(_DENSITY[_t]>50)
					_PARK[_t]=(2.445319 + 0.00448 * _DENSITY[_t])/2
				ELSEIF(_DENSITY[_t]=5-50)
					_PARK[_t]=(1.030594 + 0.032806 * _DENSITY[_t])/2
				ELSE
					_PARK[_t]=0
				ENDIF
				
				_PARK[_t]=_PARK[_t]*100  ; CENTS
      
				IF(_PARK[_t]>75)
					_autozone[_t] = 1
				ELSE
					_autozone[_t] = 0
				ENDIF

				; New Lookup
				Lookup Name=_newatype,                                       ;revision pks
					Lookup[1]=1, Result=2,    ; New area type
					Fail=-1,-1,-1, Interpolate=N,    ; returns -1 if fail, no interpolation
					; ------- Lookup data starts here:
					;         -----------------------------
					R=' 1     1',
					' 2     2',
					' 3     3',
					' 4     4',
					' 5     5',
					' 6     6',
					' 7     7'

				; Generate the Zone Data File
				_tazatype=_newatype(1,_totlu[_t])                                ;revision pks
				PRINT file=znedat{year}.dat,list=_centn[_t](5),_centx[_t](20),_centy[_t](8),_pop[_t](7),_totemp[_t](7),
					_acres[_t](10.3),_popdensity(7.2),_empdensity(7.2),_indden(7.2),_retden(7.2),_comden(7.2),_tazatype(3),_ntrnflag[_t](3),
					_autozone[_t](5),_totpopemp[_t](7),_new_val(7)     ;revision pks
			ENDLOOP
		ENDIF

		; PUT AREATYPES ON HIGHWAY LINKS
		Atype=_newatype(1,_totlu[TAZ])                                            ;revision pks
	ENDPHASE
ENDRUN

; Generate ZoneData.csv for CT-RAMP with areatype
*del ZoneData.csv
*del ctrampModels\cbd_parking_zones.csv

RUN PGM=MATRIX
	ZDATI[1] = ZoneData.dbf, Z=ZONE
	ZDATI[2] = znedat{year}.dat,Z=#1,areatype=#12
	ZDATI[3] = TAZ_HHINC_PCT.DBF,Z=TAZ
	ZONES={lastin}
	ZONEMSG=100

	IF(i=1)
		PRINT LIST="zone,construc,manufac,TCU,wholesl,retail,FIRE,service,private,govt,emp,pop,hshld,univ,acres,otherEmp,district,PARKTOT,PARKLNG,PROPFREE,PARKRATE,areatype,county,CBDFlag,N11,N21,N22,N23,N313233,N42,N4445,N4849,N51,N52,N53,N54,N55,N56,N61,N62,N71,N72,N81,N92,EnrollDS,EnrollPD,I_PCTLT10K,I_PCT10TO20,I_PCT20TO40,I_PCTGT40" FILE=ZoneData.csv
	ENDIF
	
	PRINT LIST=ZI.1.zone, ZI.1.construc, ZI.1.manufac, ZI.1.TCU, 
			ZI.1.wholesl, ZI.1.retail, ZI.1.FIRE, ZI.1.service, ZI.1.private, 
			ZI.1.govt, ZI.1.emp, ZI.1.pop, ZI.1.hshld, ZI.1.univ, ZI.1.acres, 
			ZI.1.otherEmp, ZI.1.district, ZI.1.PARKTOT, ZI.1.PARKLNG, ZI.1.PROPFREE, 
			ZI.1.PARKRATE, ZI.2.areatype, ZI.1.county, ZI.1.cbdflag,
			ZI.1.N11,ZI.1.N21,ZI.1.N22,ZI.1.N23,ZI.1.N313233,ZI.1.N42,ZI.1.N4445,ZI.1.N4849,ZI.1.N51,ZI.1.N52,ZI.1.N53,
			ZI.1.N54,ZI.1.N55,ZI.1.N56,ZI.1.N61,ZI.1.N62,ZI.1.N71,ZI.1.N72,ZI.1.N81,ZI.1.N92,ZI.1.ENROLLDS,ZI.1.ENROLLPD,
			ZI.3.PCT1,ZI.3.PCT2,ZI.3.PCT3,ZI.3.PCT4,CSV=T, FILE=ZoneData.csv APPEND=T

	;write out cbd parking zone alternatives
	IF(ZI.1.parktot>0 & ZI.2.areatype=1)
		_CNT=_CNT+1
		IF(_CNT=1) PRINT LIST="a,parkTaz",FILE=ctrampModels\cbd_parking_zones.csv
		PRINT LIST=_CNT,ZI.1.ZONE,csv=T,FILE=ctrampModels\cbd_parking_zones.csv append=t
	ENDIF
ENDRUN

:CheckBuildNets
IF({chkBNw.n}=0) goto :CheckBuildPkSkims

; BUILD HIGHWAY NETWORKS
;Add tolls, county FIPs, capacities, and speeds
RUN PGM=NETWORK
	FILEI NETI[1]=arc{year}hy_A.net
	LOOKUPI=INPUTS\TOLLS{year}.DBF
	FILEO NETO=HWY{year}FF.NET

	PHASE=NODEMERGE
		IF(N=1-{lastin} & ACRES=0) DELETE ;remove blank zones
	ENDPHASE

	LOOKUP NAME=TOLL_LU,
		LOOKUP[1]=TOLLID, RESULT=TOLLEA,
		LOOKUP[2]=TOLLID, RESULT=TOLLAM,
		LOOKUP[3]=TOLLID, RESULT=TOLLMD,
		LOOKUP[4]=TOLLID, RESULT=TOLLPM,
		LOOKUP[5]=TOLLID, RESULT=TOLLEV,
		LOOKUP[6]=TOLLID, RESULT=FIXED,
		INTERPOLATE=N, LOOKUPI=1

	LINKCLASS=FACTYPE+1   ;define linkclass by assignment group

	FIXED = TOLL_LU(6,TOLLID)  ;lookup fixed toll flag (1 = fixed, 0 = distance based)

	IF(TOLLID > 0) 
		IF(FIXED = 1)
			TOLLEA=TOLL_LU(1,TOLLID)/100            ;fixed early AM tolls (e.g. existing Ga 400 tolls)
			TOLLAM=TOLL_LU(2,TOLLID)/100            ;fixed AM tolls (e.g. existing Ga 400 tolls)
			TOLLMD=TOLL_LU(3,TOLLID)/100            ;fixed MD tolls (e.g. existing Ga 400 tolls)
			TOLLPM=TOLL_LU(4,TOLLID)/100            ;fixed PM tolls (e.g. existing Ga 400 tolls)
			TOLLEV=TOLL_LU(5,TOLLID)/100            ;fixed evening tolls (e.g. existing Ga 400 tolls)
		ELSE
			TOLLEA=TOLL_LU(1,TOLLID)*0.01*DISTANCE       ;distance based early AM tolls (e.g. managed lanes)
			TOLLAM=TOLL_LU(2,TOLLID)*0.01*DISTANCE       ;distance based AM tolls (e.g. managed lanes)
			TOLLMD=TOLL_LU(3,TOLLID)*0.01*DISTANCE       ;distance based MD tolls (e.g. managed lanes)
			TOLLPM=TOLL_LU(4,TOLLID)*0.01*DISTANCE       ;distance based PM tolls (e.g. managed lanes)
			TOLLEV=TOLL_LU(5,TOLLID)*0.01*DISTANCE       ;distance based evening tolls (e.g. managed lanes)
		ENDIF
	ENDIF

	;check county fips code - replace missing values
	IF(county=0)
		IF(taz=1-1296) county=121
		IF(taz=1297-1943) county=89
		IF(taz=1944-2508) county=67
		IF(taz=2509-3006) county=135
		IF(taz=3007-3141) county=247
		IF(taz=3142-3386) county=151
		IF(taz=3387-3624) county=63
		IF(taz=3625-3830) county=113
		IF(taz=3831-3988) county=97
		IF(taz=3989-4209) county=57
		IF(taz=4210-4437) county=77
		IF(taz=4438-4631) county=117
		IF(taz=4632-4771) county=223
		IF(taz=4772-4942) county=15
		IF(taz=4943-5119) county=45
		IF(taz=5120-5263) county=255
		IF(taz=5264-5407) county=217
		IF(taz=5408-5530) county=297
		IF(taz=5531-5635) county=13
		IF(taz=5636-5873) county=139
		IF(taz=5874-5922) county=85
	ENDIF

	;PCPHPL capacity lookup (PARAMETERS\CAPACITY.DBF)
	Lookup Name=_CAPACITY,
		Lookup[1]=FACTYPE, Result=ATYPE1,
		Lookup[2]=FACTYPE, Result=ATYPE2,
		Lookup[3]=FACTYPE, Result=ATYPE3,
		Lookup[4]=FACTYPE, Result=ATYPE4,
		Lookup[5]=FACTYPE, Result=ATYPE5,
		Lookup[6]=FACTYPE, Result=ATYPE6,
		Lookup[7]=FACTYPE, Result=ATYPE7,file=PARAMETERS\CAPACITY.DBF,
		FAIL=-1,-1,-1, Interpolate=n

	;aux lane add capacity lookup (PARAMETERS\AUXLANE.DBF)
    Lookup Name=_AUXLANE,
		Lookup[1]=FACTYPE, Result=ADDCAP,file=PARAMETERS\AUXLANE.DBF,
		FAIL=-1,-1,-1, Interpolate=n

	;procedure to calculate TOD capacity (e.g. reversible lanes)
	IF(WEAVEFLAG=1 & LANES>4)
		_marginal_fac=0.98
	ELSE
		_marginal_fac=1
	ENDIF

	;early am capacity
	IF(LANESEA = 0)
		EACAPACITY=_Capacity(ATYPE,FACTYPE)*(LANES-AUXLANE)*(_marginal_fac^(LANES-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ELSE
		EACAPACITY=_Capacity(ATYPE,FACTYPE)*(LANESEA-AUXLANE)*(_marginal_fac^(LANESEA-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ENDIF

	;am capacity
	IF(LANESAM = 0)
		AMCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANES-AUXLANE)*(_marginal_fac^(LANES-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ELSE
		AMCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANESAM-AUXLANE)*(_marginal_fac^(LANESAM-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ENDIF

	;md capacity
	IF(LANESMD = 0)
		MDCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANES-AUXLANE)*(_marginal_fac^(LANES-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ELSE
		MDCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANESMD-AUXLANE)*(_marginal_fac^(LANESMD-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ENDIF

	;pm capacity
	IF(LANESPM = 0)
		PMCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANES-AUXLANE)*(_marginal_fac^(LANES-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ELSE
		PMCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANESPM-AUXLANE)*(_marginal_fac^(LANESPM-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ENDIF

	;ev capacity
	IF(LANESEV = 0)
		EVCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANES-AUXLANE)*(_marginal_fac^(LANES-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ELSE
		EVCAPACITY=_Capacity(ATYPE,FACTYPE)*(LANESEV-AUXLANE)*(_marginal_fac^(LANESEV-1))+_AUXLANE(1,FACTYPE)*AUXLANE
	ENDIF

	;round capacities
	EACAPACITY = INT(EACAPACITY/10)*10
	AMCAPACITY = INT(AMCAPACITY/10)*10
	MDCAPACITY = INT(MDCAPACITY/10)*10
	PMCAPACITY = INT(PMCAPACITY/10)*10
	EVCAPACITY = INT(EVCAPACITY/10)*10

	;free flow speed lookup (PARAMETERS\FFSPEED.DBF)
	Lookup Name=_FFSPEED,
		Lookup[1]=FACTYPE, Result=ATYPE1,
		Lookup[2]=FACTYPE, Result=ATYPE2,
		Lookup[3]=FACTYPE, Result=ATYPE3,
		Lookup[4]=FACTYPE, Result=ATYPE4,
		Lookup[5]=FACTYPE, Result=ATYPE5,
		Lookup[6]=FACTYPE, Result=ATYPE6,
		Lookup[7]=FACTYPE, Result=ATYPE7,file=PARAMETERS\FFSPEED.DBF,
		FAIL=-1,-1,-1, Interpolate=n

	Speed=_FFSpeed(ATYPE,FACTYPE)

	;principal arterial area type 1 by # lanes speed modification
	IF(ATYPE=1 & FACTYPE=10)
		IF(LANES=1) Speed=24
		IF(LANES=2) Speed=24
		IF(LANES=3) Speed=21
		IF(LANES>3) Speed=19
	ENDIF

	;set loop ramp speeds to lower value
	IF(RAMPFLAG=1)
		Speed=35
	ENDIF

	;average free-flow speeds from lookup and available HERE data
	IF(EASPD>0)
		Speed = INT((EASPD+Speed)/2)
	ENDIF

	;Set interstate speeds to max of speed limit and lookup
	IF(FACTYPE=1,4,5,6)
		Speed = max(Speed,SpeedLimit)
	ENDIF

	IF(LI.1.HOVMERGE=1)
		TIME1=DISTANCE/SPEED*60 + @merge@/60  ;add penalty for HOV merge on slip ramps jln-05-16-14
	ELSE
		TIME1=DISTANCE/SPEED*60
	ENDIF
ENDRUN

;    ADD AM/PM SPEED FOR FEEDBACK LOOP 1 (AM/PM PERIODS)
RUN PGM=NETWORK
	NETI=HWY{year}FF.NET
	NETO=Hwy{year}Loop1_PK.net

	;AM speed lookup (PARAMETERS\AMSPEED.DBF)
    Lookup Name=_AMSPEED,
		Lookup[1]=FACTYPE, Result=ATYPE1,
		Lookup[2]=FACTYPE, Result=ATYPE2,
		Lookup[3]=FACTYPE, Result=ATYPE3,
		Lookup[4]=FACTYPE, Result=ATYPE4,
		Lookup[5]=FACTYPE, Result=ATYPE5,
		Lookup[6]=FACTYPE, Result=ATYPE6,
		Lookup[7]=FACTYPE, Result=ATYPE7,file=PARAMETERS\AMSPEED.DBF,
		FAIL=-1,-1,-1, Interpolate=n

	Speed=_AMSpeed(ATYPE,FACTYPE)
	
	IF(LI.1.HOVMERGE=1)
		TIME1=DISTANCE/SPEED*60 + @merge@/60  ;add penalty for HOV merge on slip ramps jln-05-16-14
	ELSE
		TIME1=DISTANCE/SPEED*60
	ENDIF

	Time_1=Time1      ;for first loop, set congested time based on lookup table                                     
ENDRUN

;    SET TIME_1 to TIME1 for FEEDBACK LOOP 1 (EA/MD/EV PERIODS)
RUN PGM=NETWORK
	NETI=HWY{year}FF.NET
	NETO=Hwy{year}Loop1_OP.net

	IF(LI.1.HOVMERGE=1)
		TIME1=DISTANCE/SPEED*60 + @merge@/60  ;add penalty for HOV merge on slip ramps jln-05-16-14
	ELSE
		TIME1=DISTANCE/SPEED*60
	ENDIF

	Time_1=Time1      ;for first loop, set congested time based on lookup table                                     
ENDRUN

:CheckBuildPkSkims
IF({ChkBPkS.n}=0) goto :CheckBuildFFSkims

;Generate initial highway skims
; Calculate terminal times
RUN PGM=MATRIX
	ZDATI[1]=znedat{year}.dat,z=#1,atype=#12
	MATO=termtime.skm,MO=1-2,NAME=oterm,dterm
	ZONES={lastin}
	ZONESMSG=100

	JLOOP
		IF(I={airpt})
			MW[1]=10
		ELSEIF(ZI.1.ATYPE[I]=1-2)
			MW[1]=5
		ELSEIF(ZI.1.ATYPE[I]=3-4)
			MW[1]=3
		ELSEIF(ZI.1.ATYPE[I]=5-7)
			MW[1]=1
		ENDIF
		
		IF(J={airpt})
			MW[2]=10
		ELSEIF(ZI.1.ATYPE[J]=1-2)
			MW[2]=5
		ELSEIF(ZI.1.ATYPE[J]=3-4)
			MW[2]=3
		ELSEIF(ZI.1.ATYPE[J]=5-7)
			MW[2]=1
		ENDIF
	ENDJLOOP
ENDRUN

PROMPT QUESTION="Waiting for Cluster Nodes to Restart" ANSWER="Waiting" WAIT={waitTime}

:CheckBuildFFSkims
IF({ChkBFFS.n}=0) goto :CheckExternals

; Highway Skims (Freeflow)
RUN PGM=HIGHWAY
	NETI=HWY{year}FF.NET    ;  FREE-FLOW HIGHWAY NETWORK
	MATI[1] =termtime.skm
	MATO[1] =sovff1_free.skm,MO=121-123,NAME=TOLL,DISTANCE,TIME
	MATO[2] =hov2ff1_free.skm,MO=131-133,NAME=TOLL,DISTANCE,TIME
	MATO[3] =hov3ff1_free.skm,MO=141-143,NAME=TOLL,DISTANCE,TIME
	MATO[4] =sovff1_toll.skm,MO=151-154,NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
	MATO[5] =hov2ff1_toll.skm,MO=161-164,NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
	MATO[6] =hov3ff1_toll.skm,MO=171-174,NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
	ZONEMSG=10

	; Cube Cluster Controls
	DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

	PHASE=LINKREAD
		; Set Prohibitions
		IF(li.factype> 49)    ADDTOGROUP=1   ; Transit only
		IF((li.TOLLMD>0) & (li.prohibit!=3 && li.prohibit!=7 && li.prohibit!=8 && li.prohibit!=9 && li.prohibit!=10 && li.prohibit!=11 && li.prohibit!=12))
			ADDTOGROUP=15   ; Toll - All Vehicles Allowed and Tolled
		ENDIF
		IF(li.prohibit= 1) ADDTOGROUP=3   ; No Trucks
		IF(li.prohibit= 2) ADDTOGROUP=4   ; HOV 2+
		IF(li.prohibit= 3) ADDTOGROUP=5   ; Managed Lanes - SOV Toll - HOV 2+ Free - No Trucks
		IF(li.prohibit= 4) ADDTOGROUP=6   ; Truck Only Lanes
		IF(li.prohibit= 5) ADDTOGROUP=7   ; I-285 Bypass
		IF(li.prohibit= 6) ADDTOGROUP=8   ; HOV 3+
		IF(li.prohibit= 7) ADDTOGROUP=9   ; Managed Lanes - SOV & HOV2 Toll - HOV 3+ Free - No Trucks
		IF(li.prohibit= 8) ADDTOGROUP=10  ; Managed Lanes - SOV & Truck Toll - HOV 2+ Free
		IF(li.prohibit= 9) ADDTOGROUP=11  ; Managed Lanes - SOV, HOV2 and Truck Toll - HOV 3+ Free
		IF(li.prohibit=10) ADDTOGROUP=12  ; Truck Only Toll
		IF(li.prohibit=11) ADDTOGROUP=13  ; Managed Lanes - HOV2 Toll - HOV 3+ Free - No Trucks or SOV
		IF(li.prohibit=12) ADDTOGROUP=14  ; Managed Lanes - SOV and HOV2+ Toll - No Trucks
		IF(li.prohibit=13) ADDTOGROUP=15  ; Managed Lanes - All Vehicles Allowed and Tolled
		IF(li.factype=1-49 & (li.lanes + li.lanesmd = 0)) ADDTOGROUP=32 ;links with zero lanes or period lanes
		
		linkclass=1
		
		; value of time
		votpc = {avot} / 60             ; $/min
		votpc_toll = {avot_toll} / 60   ; $/min - set higher for toll skims to encourage toll paths
		opcpc = {aoc}
		
		lw.fftime=li.time1  ;jln 05-16-14
     
		IF(li.prohibit=3,8)  ; managed lanes - SOV toll, HOV2+ free
			lw.hov2time=lw.fftime
			lw.hov3time=lw.fftime
		ELSEIF(li.prohibit=7,9,11)  ; managed lanes - HOV2 toll, HOV3+ free
			lw.hov3time=lw.fftime 
			lw.tollmdhov2 = li.tollmd
			lw.tolldisthov2 = li.distance
		ELSE
			lw.tollmdhov2 = li.tollmd
			lw.tollmdhov3 = li.tollmd
			IF(li.tollid>0)
				lw.tolldisthov2 = li.distance
				lw.tolldisthov3 = li.distance
			ENDIF
		ENDIF
     
		IF(li.tollid>0)
			lw.tolldistance = li.distance
		ENDIF
     
		;compute generalized cost by user class
		;non-toll skims
		lw.sovcost  = li.TIME1*votpc + li.tollmd  + {distwgt}*li.distance*opcpc
		lw.hov2cost = li.TIME1*votpc + lw.tollmdhov2 + {distwgt}*li.distance*opcpc
		lw.hov3cost = li.TIME1*votpc + lw.tollmdhov3 + {distwgt}*li.distance*opcpc
		;toll skims
		lw.sovcost_t  = li.TIME1*votpc_toll + li.tollmd  + {distwgt}*li.distance*opcpc
		lw.hov2cost_t = li.TIME1*votpc_toll + lw.tollmdhov2 + {distwgt}*li.distance*opcpc
		lw.hov3cost_t = li.TIME1*votpc_toll + lw.tollmdhov3 + {distwgt}*li.distance*opcpc
	ENDPHASE

	PHASE=ILOOP
		; Non-toll (free) paths ================================================
		; SOV freeflow skims
		path=lw.sovcost,DEC=F2 excludegroup=1,4,5,6,8,9,10,11,12,13,14,15,32,
			MW[121]=pathtrace(li.tollmd) noaccess=0.0,
			MW[122]=pathtrace(li.distance) noaccess=0.0,
			MW[123]=pathtrace(lw.fftime) noaccess=0.0
			MW[121][i]=0.0   ; set intrazonal toll cost to 0.0
			MW[122][i]=(lowest(122,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[123][i]=(lowest(123,3,0,99,i)/lowcnt)/2, exclude=@externals@
			; intrazonal time half of the sum of time nearest 3 zones
			MW[123]=MW[123]+MI.1.1+MI.1.2  ; add terminal time
		
		; HOV2 freeflow skims
		path=lw.hov2cost,DEC=F2 excludegroup=1,6,8,9,11,12,13,14,15,32,
			MW[131]=pathtrace(li.tollmd) noaccess=0,
			MW[132]=pathtrace(li.distance) noaccess=0,
			MW[133]=pathtrace(lw.fftime) noaccess=0
			MW[131][i]=0.0   ; set intrazonal toll cost to 0.0
			MW[132][i]=(lowest(132,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[133][i]=(lowest(133,3,0,99,i)/lowcnt)/2, exclude=@externals@
			; intrazonal time half of the sum of time nearest 3 zones
			MW[133]=MW[133]+MI.1.1+MI.1.2  ; add terminal time
    
		; HOV3+ freeflow skims
		path=lw.hov3cost,DEC=F2 excludegroup=1,6,12,14,15,32,
			MW[141]=pathtrace(li.tollmd) noaccess=0,
			MW[142]=pathtrace(li.distance) noaccess=0,
			MW[143]=pathtrace(lw.fftime) noaccess=0
			MW[141][i]=0.0   ; set intrazonal toll cost to 0.0
			MW[142][i]=(lowest(142,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[143][i]=(lowest(143,3,0,99,i)/lowcnt)/2, exclude=@externals@
			; intrazonal time half of the sum of time nearest 3 zones
			MW[143]=MW[143]+MI.1.1+MI.1.2  ; add terminal time
  
		; Toll paths ===========================================================
		; SOV freeflow skims
		path=lw.sovcost_t,DEC=F2 excludegroup=1,4,6,8,12,13,32,
			MW[151]=pathtrace(li.tollmd) noaccess=0.0,
			MW[152]=pathtrace(li.distance) noaccess=0.0,
			MW[153]=pathtrace(lw.fftime) noaccess=0.0,
			MW[154]=pathtrace(lw.tolldistance) noaccess=0.0
			MW[151][i]=0.0   ; set intrazonal toll cost to 0.0
			MW[152][i]=(lowest(152,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[153][i]=(lowest(153,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[154][i]=(lowest(154,3,0,99,i)/lowcnt)/2, exclude=@externals@
			; intrazonal time half of the sum of time nearest 3 zones
			MW[153]=MW[153]+MI.1.1+MI.1.2  ; add terminal time
		
		; HOV2 freeflow skims
		path=lw.hov2cost_t,DEC=F2 excludegroup=1,6,8,12,32,
			MW[161]=pathtrace(lw.tollmdhov2) noaccess=0,
			MW[162]=pathtrace(li.distance) noaccess=0,
			MW[163]=pathtrace(lw.fftime) noaccess=0,
			MW[164]=pathtrace(lw.tolldisthov2) noaccess=0.0
			MW[161][i]=0.0   ; set intrazonal toll cost to 0.0
			MW[162][i]=(lowest(162,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[163][i]=(lowest(163,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[164][i]=(lowest(164,3,0,99,i)/lowcnt)/2, exclude=@externals@
			; intrazonal time half of the sum of time nearest 3 zones
			MW[163]=MW[163]+MI.1.1+MI.1.2  ; add terminal time
    
		; HOV3+ freeflow skims
		path=lw.hov3cost_t,DEC=F2 excludegroup=1,6,12,32,
			MW[171]=pathtrace(lw.tollmdhov3) noaccess=0,
			MW[172]=pathtrace(li.distance) noaccess=0,
			MW[173]=pathtrace(lw.fftime) noaccess=0,
			MW[174]=pathtrace(lw.tolldisthov3) noaccess=0
			MW[171][i]=0.0   ; set intrazonal toll cost to 0.0
			MW[172][i]=(lowest(172,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[173][i]=(lowest(173,3,0,99,i)/lowcnt)/2, exclude=@externals@
			MW[174][i]=(lowest(174,3,0,99,i)/lowcnt)/2, exclude=@externals@
			; intrazonal time half of the sum of time nearest 3 zones
			MW[173]=MW[173]+MI.1.1+MI.1.2  ; add terminal time
	ENDPHASE
ENDRUN

PROMPT QUESTION="Waiting for Cluster Nodes to Restart" ANSWER="Waiting" WAIT={waitTime}

; Create skims for only the internal zones
RUN PGM=MATRIX
	MATI[1]=sovff1_free.skm
	MATI[2]=hov2ff1_free.skm
	MATI[3]=hov3ff1_free.skm
	MATI[4]=sovff1_toll.skm
	MATI[5]=hov2ff1_toll.skm
	MATI[6]=hov3ff1_toll.skm
	MATO[1]=sovff_free.skm, MO=11-13, NAME=TOLL,DISTANCE,TIME
	MATO[2]=hov2ff_free.skm, MO=21-23, NAME=TOLL,DISTANCE,TIME
	MATO[3]=hov3ff_free.skm, MO=31-33, NAME=TOLL,DISTANCE,TIME
	MATO[4]=sovff_toll.skm, MO=41-44, NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
	MATO[5]=hov2ff_toll.skm, MO=51-54, NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
	MATO[6]=hov3ff_toll.skm, MO=61-64, NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE

	ZONES={lastin}
	ZONEMSG=100
  
	FILLMW MW[11]=MI.1.1,2,3
	FILLMW MW[21]=MI.2.1,2,3
	FILLMW MW[31]=MI.3.1,2,3
	FILLMW MW[41]=MI.4.1,2,3,4
	FILLMW MW[51]=MI.5.1,2,3,4
	FILLMW MW[61]=MI.6.1,2,3,4
ENDRUN

; UPDATE EXTERNAL TRIPS
:CheckExternals
IF({ChkExt.n}=0) goto :CheckComVeh

IF({year} < 5)
	yr = '00'
ELSEIF({year} < 10)
	yr = '05'
ELSEIF({year} < 15)
	yr = '10'
ELSE
	yr = '15'
ENDIF

;Tabulates pop and emp of internal zones w/in
;45 minutes of each external station
RUN PGM=MATRIX
	MATI=sovff1_free.skm   ;Skim created using free flow times
	ZDATI[1]=parameters\nwtaz@yr@g.prn,z=#1,totemp@yr@=#12,totpop@yr@=#13            ;Year 2000 SE data (REQUIRED FOR CALCULATING EXTERNAL GROWTH)
	ZDATI[2]=nwtaz{year}g.prn,z=#1,totemp=#12,totpop=#13            ;Model year SE data
	RECO=ExtSEFactors.dbf,fields=n(8.0),basepe(10.0),futrpe(10.0)

	ZONEMSG=100
	ZONES={totzones}
 
	array basepopemp=zones, futrpopemp=zones

	IF(i>{lastin})
		JLOOP
			IF(j<{ext1})
				IF(MI.1.3[j]=0)
					basepopemp[i]=basepopemp[i]
					futrpopemp[i]=futrpopemp[i]
				ELSEIF(MI.1.3[j]<=45)
					basepopemp[i]=basepopemp[i]+(ZI.1.totpop@yr@[j] + ZI.1.totemp@yr@[j])
					futrpopemp[i]=futrpopemp[i]+(ZI.2.totpop[j] + ZI.2.totemp[j])
				ENDIF
			ENDIF
		ENDJLOOP
	ENDIF

	RO.n=z
	RO.basepe = basepopemp[i]
	RO.futrpe = futrpopemp[i]
	write RECO=1
ENDRUN

;Create network with external county pop estimates
RUN PGM=NETWORK
	NETI[1]=input.net
	NODEI[2]=parameters\ExternalCounties.dbf
	NODEI[3]=ExtSEFactors.dbf
	NODEI[4]=parameters\Externals.dbf
	NETO=external_data.tmp,
			exclude=acres,const,manuf,tcu,whole,retail,fire,
				service,govt,totemp,pop,hh,school
	ZONES={maxext}
	
	PHASE=NODEMERGE
		;print list of external grouping flag
		IF(n<={totzones})
			PRINT list=n(8.0),extflag(8.0),basepe(10.0),futrpe(10.0),file=extflag.prn
		ENDIF
	ENDPHASE
ENDRUN

;Interpolates for years not ending in '0' or '5' up to 2040
RUN PGM=NETWORK
	NETI[1]=external_data.tmp
	NETO=external_data.net
	ZONES={maxext}

	PHASE=NODEMERGE
		IF('{year}'='05')
			pop05=pop05
		ELSEIF('{year}'='10')
			pop10=pop10
		ELSEIF('{year}'='15')
			pop15=pop15
		ELSEIF('{year}'='20')
			pop20=pop20
		ELSEIF('{year}'='25')
			pop25=pop25
		ELSEIF('{year}'='30')
			pop30=pop30
		ELSEIF('{year}'='40')
			pop40=pop40
		ELSEIF('{year}'='50')
			pop50=pop50
		ELSEIF({year}<5)
			pop{year}=round((((pop05-pop00)/(5-0))*({year}-0))+pop00)
		ELSEIF({year}<10)
			pop{year}=round((((pop10-pop05)/(10-5))*({year}-5))+pop05)
		ELSEIF({year}<15)
			pop{year}=round((((pop15-pop10)/(15-10))*({year}-10))+pop10)
		ELSEIF({year}<20)
			pop{year}=round((((pop20-pop15)/(20-15))*({year}-15))+pop15)
		ELSEIF({year}<25)
			pop{year}=round((((pop25-pop20)/(25-20))*({year}-20))+pop20)
		ELSEIF({year}<30)
			pop{year}=round((((pop30-pop25)/(30-25))*({year}-25))+pop25)
		ELSEIF({year}<40)
			pop{year}=round((((pop40-pop30)/(40-30))*({year}-30))+pop30)
		ELSEIF({year}<50)
			pop{year}=round((((pop50-pop40)/(50-40))*({year}-40))+pop40)
		ENDIF
	ENDPHASE
ENDRUN

;Sum external county pop by market shed grouping (Groupings specified in ExternalCounties.dbf)
RUN PGM=NETWORK
	NETI[1]=external_data.net
	ZONES={maxext}
	
	PHASE=NODEMERGE
		IF(n<{maxext})
			IF(extflag=1)
				_basegrp1 = _basegrp1 + pop@yr@
				_futrgrp1 = _futrgrp1 + pop{year}
			ELSEIF(extflag=2)
				_basegrp2 = _basegrp2 + pop@yr@
				_futrgrp2 = _futrgrp2 + pop{year}
			ELSEIF(extflag=3)
				_basegrp3 = _basegrp3 + pop@yr@
				_futrgrp3 = _futrgrp3 + pop{year}
			ELSEIF(extflag=4)
				_basegrp4 = _basegrp4 + pop@yr@
				_futrgrp4 = _futrgrp4 + pop{year}
			ELSEIF(extflag=5)
				_basegrp5 = _basegrp5 + pop@yr@
				_futrgrp5 = _futrgrp5 + pop{year}
			ELSEIF(extflag=6)
				_basegrp6 = _basegrp6 + pop@yr@
				_futrgrp6 = _futrgrp6 + pop{year}
			ELSEIF(extflag=7)
				_basegrp7 = _basegrp7 + pop@yr@
				_futrgrp7 = _futrgrp7 + pop{year}
			ENDIF
		ENDIF
	ENDPHASE

	PHASE=SUMMARY
		log prefix=pop, var=_basegrp1
		log prefix=pop, var=_basegrp2
		log prefix=pop, var=_basegrp3
		log prefix=pop, var=_basegrp4
		log prefix=pop, var=_basegrp5
		log prefix=pop, var=_basegrp6
		log prefix=pop, var=_basegrp7
		log prefix=pop, var=_futrgrp1
		log prefix=pop, var=_futrgrp2
		log prefix=pop, var=_futrgrp3
		log prefix=pop, var=_futrgrp4
		log prefix=pop, var=_futrgrp5
		log prefix=pop, var=_futrgrp6
		log prefix=pop, var=_futrgrp7
	ENDPHASE
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=extflag.prn,z=#1,extflag=#2,basepe=#3,futrpe=#4
	ZONEMSG=100
	ZONES={totzones}
	
	array basepop=zones,futrpop=zones
	
	basepop1 = @pop._basegrp1@
	basepop2 = @pop._basegrp2@
	basepop3 = @pop._basegrp3@
	basepop4 = @pop._basegrp4@
	basepop5 = @pop._basegrp5@
	basepop6 = @pop._basegrp6@
	basepop7 = @pop._basegrp7@

	futrpop1 = @pop._futrgrp1@
	futrpop2 = @pop._futrgrp2@
	futrpop3 = @pop._futrgrp3@
	futrpop4 = @pop._futrgrp4@
	futrpop5 = @pop._futrgrp5@
	futrpop6 = @pop._futrgrp6@
	futrpop7 = @pop._futrgrp7@
	
	IF(i>{lastin})
		IF(ZI.1.extflag=1)
			basepop[i] = basepop1
			futrpop[i] = futrpop1
		ELSEIF(ZI.1.extflag=2)
			basepop[i] = basepop2
			futrpop[i] = futrpop2
		ELSEIF(ZI.1.extflag=3)
			basepop[i] = basepop3
			futrpop[i] = futrpop3
		ELSEIF(ZI.1.extflag=4)
			basepop[i] = basepop4
			futrpop[i] = futrpop4
		ELSEIF(ZI.1.extflag=5)
			basepop[i] = basepop5
			futrpop[i] = futrpop5
		ELSEIF(ZI.1.extflag=6)
			basepop[i] = basepop6
			futrpop[i] = futrpop6
		ELSEIF(ZI.1.extflag=7)
			basepop[i] = basepop7
			futrpop[i] = futrpop7
		ENDIF
	ENDIF
	
	IF(i>{lastin})
		PRINT list=i(8.0),basepe(10.0),futrpe(10.0),basepop[i](10.0),futrpop[i](10.0),file=ExtForeData.prn
	ENDIF
ENDRUN

RUN PGM=NETWORK
	NETI[1]=external_data.net
	NODEI[2]=ExtForedata.prn,var=n,basepe,futrpe,basepop,futrpop
	ZONES={totzones}

	PHASE=NODEMERGE
		IF(n={ext1}-{ext2})
			_coef1=1.0   ;factor for interal zones pop and emp
			_coef2=1.0   ;factor for external county pop

			IF({year}<5)
				_forecast1=awdt2000*((futrpe*_coef1 + futrpop*_coef2)/(basepe + basepop))
			ELSEIF('{year}'='05')
				_forecast1=awdt2005
			ELSEIF({year}<10)
				_forecast1=awdt2005*((futrpe*_coef1 + futrpop*_coef2)/(basepe + basepop))
			ELSEIF('{year}'='10')
				_forecast1=awdt2010
			ELSEIF({year}<15)
				_forecast1=awdt2010*((futrpe*_coef1 + futrpop*_coef2)/(basepe + basepop))
			ELSEIF('{year}'='15')
				_forecast1=awdt2015
			ELSE
				_forecast1=awdt2015*((futrpe*_coef1 + futrpop*_coef2)/(basepe + basepop))
			ENDIF
			
			;set roadway max capacity based on lanes and factype
			IF(intflag=0 & lanes<=2) _lanecap=16500  
			IF(intflag=0 & lanes>2) _lanecap=17800
			IF(intflag=1 & lanes<=4) _lanecap=24500
			IF(intflag=1 & lanes>4) _lanecap=25000

			_capacity=lanes*_lanecap

			_forecast=min(_capacity,_forecast1)  ;set capacity to min between capacity and initial forecast

			IF({year}<5)
				PRINT form=10.0,list=n,awdt2000,_forecast1,_capacity,_forecast,file=results.prn
			ELSEIF({year}<10)
				PRINT form=10.0,list=n,awdt2005,_forecast1,_capacity,_forecast,file=results.prn
			ELSEIF({year}<15)
				PRINT form=10.0,list=n,awdt2010,_forecast1,_capacity,_forecast,file=results.prn
			ELSE
				PRINT form=10.0,list=n,awdt2015,_forecast1,_capacity,_forecast,file=results.prn
			ENDIF
			
			PRINT form=10.0,list=n,_forecast,file=extforecast.prn
		ENDIF
	ENDPHASE
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=parameters\Externals.dbf,z=n                 ;external station vehicle percentage splits
	ZDATI[2]=extforecast.prn,z=#1,forecast=#2  ;external stations volume forecast
	ZONES={totzones}
	ZONEMSG=10
	
	; passenger car - calculate splits by interstate/non-interstate & work/non-work 
	;IE
	pcintwrk = ROUND(ZI.2.forecast*ZI.1.pcintwk)    ;IE passenger car - interstate work
	pcintnwk = ROUND(ZI.2.forecast*ZI.1.pcintnw)    ;IE passenger car - interstate non-work
	pcnintwrk = ROUND(ZI.2.forecast*ZI.1.pcnintw)   ;IE passenger car - non-interstate work
	pcnintnwk = ROUND(ZI.2.forecast*ZI.1.pcnintn)   ;IE passegner car - non-interstate non-work
	
	;EE
	eepcbase = ROUND(ZI.1.awdt2015*ZI.1.caree)      ;EE passenger car 2015 trip ends
	eepc = ROUND(ZI.2.forecast*ZI.1.caree)          ;EE passenger car forecast trips ends
	
	IF(eepc=0)
		eepcfra=0
	ELSE
		eepcfra = eepc/eepcbase                           ;EE passenger car fratar factors
	ENDIF
	
	;commercial vehicles - calculate splits by commercial truck categorys
	;IE
	comext = ROUND(ZI.2.forecast*ZI.1.comie)       ;IE personal use commercial vehicle
	mtkext = ROUND(ZI.2.forecast*ZI.1.mtkie)       ;IE medium duty truck
	htkext = ROUND(ZI.2.forecast*ZI.1.htkie)       ;IE heavy duty truck
	
	;EE
	;com veh
	IF({year}<5)
		comveebase = ROUND(ZI.1.awdt2000*ZI.1.comee)         ;EE personal use commercial vehicle 2000 trip ends
	ELSE
		comveebase = ROUND(ZI.1.awdt2005*ZI.1.comee)         ;EE personal use commercial vehicle 2005 trip ends
	ENDIF
	  
	comvee = ROUND(ZI.2.forecast*ZI.1.comee)             ;EE personal use commercial vehicle forecast trip ends
	
	IF(comvee=0)
		eecomfra=0
	ELSE
		eecomfra = comvee/comveebase                        ;EE personal use commercial vehicle fratar factors
	ENDIF
	
	;med trk
	IF({year}<5)
		medeebase = ROUND(ZI.1.awdt2000*ZI.1.mtkee)          ;EE medium duty truck 2000 trip ends
	ELSE
		medeebase = ROUND(ZI.1.awdt2005*ZI.1.mtkee)          ;EE medium duty truck 2005 trip ends
	ENDIF
	  
	medee = ROUND(ZI.2.forecast*ZI.1.mtkee)        ;EE medium duty truck forecast trip ends
	  
	IF(medee=0)
		eemtkfra=0
	ELSE
		eemtkfra = medee/medeebase                      ;EE medium duty truck fratar factors
	ENDIF
	
	;hvy trk
	IF({year}<5)
		hvyeebase = ROUND(ZI.1.awdt2000*ZI.1.htkee)          ;EE heavy duty truck 2000 trip ends
	ELSE
		hvyeebase = ROUND(ZI.1.awdt2005*ZI.1.htkee)          ;EE heavy duty truck 2005 trip ends
	ENDIF
	  
	hvyee = ROUND(ZI.2.forecast*ZI.1.htkee)        ;EE heavy duty truck forecast trip ends
	
	IF(hvyee=0)
		eehtkfra=0
	ELSE
		eehtkfra = hvyee/hvyeebase                      ;EE heavy duty truck fratar factors
	ENDIF
	
	;print IE commercial vehicles
	IF(I>{lastin}) PRINT FORM=8.0,LIST=n,comext,mtkext,htkext,FILE=cmhext.prn
	
	;print IE passenger car vehicles
	IF(I<{ext1})
		PRINT LIST=I(5.0),'      0      0      0      0',FILE=ieprd{year}.prn
	ELSEIF(I>{lastin})
		PRINT FORM=7.0,LIST=n(5.0),pcintwrk,pcintnwk,pcnintwrk,pcnintnwk,FILE=ieprd{year}.prn
	ENDIF
	
	;print EE passenger car fratar factors
	IF(I>{lastin}) PRINT LIST=n(5.0),eepcfra(8.2),file=eepcfra_{year}.prn
	
	;print EE commercial vehicle fratar factors
	IF(I>{lastin}) PRINT LIST=n(5.0),eecomfra(8.2),eemtkfra(8.2),eehtkfra(8.2),file=eetrkfra_{year}.prn
ENDRUN

; BUILD EE TRIP TABLES
RUN PGM=MATRIX
	ZDATI[1]=parameters\Externals.dbf,z=n                 ;external station vehicle percentage splits
	ZDATI[2]=extforecast.prn,z=#1,forecast=#2  ;external stations volume forecast
	RECO=CAREE.DBF,FIELDS=ZONE,EE15,EEFORE,GROWTH
	ZONES={totzones}
	ZONEMSG=10

	RO.ZONE=I
	RO.EE15=ZI.1.CAREE * ZI.1.AWDT2015
	RO.EEFORE=ZI.1.CAREE * ZI.2.FORECAST
	IF(RO.EE15>0)
		RO.GROWTH=RO.EEFORE/RO.EE15
	ELSE
		RO.GROWTH=0
	ENDIF
	
	WRITE RECO=1
	
	IF(I>{lastin})
		PRINT LIST=I,RO.GROWTH,FILE=EEPC_FRATAR_FINAL.PRN
	ENDIF
ENDRUN

;FRATAR EXISTING 2000 PASSENGER CAR EE TRIPTABLE
RUN PGM=MATRIX
	ZDATI[1]=PARAMETERS\EXTERNALS.DBF,Z=N
	RECO=PASSCAR_EE.DBF,FIELDS=Z,PCEE
	ZONES={totzones}

	RO.Z=Z
	RO.PCEE = ZI.1.AWDT2015 * ZI.1.CAREE
	WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
	MATI[1]=PARAMETERS\EEPC.VTT
	RECO=PASSCAR_EE_2015.DBF,FIELDS=Z,PCEE
	MW[1]=MI.1.1
	MW[2]=MI.1.1.T

	RO.Z=I
	RO.PCEE=ROWSUM(1)+ROWSUM(2)
	WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=PASSCAR_EE.DBF
	ZDATI[2]=PASSCAR_EE_2015.DBF
	RECO=EE_FRATAR.DBF,FIELDS=Z,FACTOR
	ZONES={totzones}

	IF(I>{lastin})
		RO.Z=I
		IF(ZI.2.PCEE>0)
			FACTOR=ZI.1.PCEE / ZI.2.PCEE
		ELSE
			FACTOR=0
		ENDIF
		
		WRITE RECO=1
		PRINT LIST=Z,FACTOR,FILE=EEPCFRA_{year}_REV.PRN
	ENDIF
ENDRUN

;CREATE NEW BASE EE TABLE
RUN PGM=FRATAR
	MATI=parameters\EEPC.VTT            ;BASE YEAR TRIPTABLE
	MATO=EEPC_BASE.VTT,MO=1,NAME=EEPC
	ZONES= {totzones},MAXRMSE=0.10 MAXITERS=15
	ZONEMSG=100

	LOOKUP FILE=EEPCFRA_{year}_REV.PRN,NAME=EEGRF,
		LOOKUP[1]=1, RESULT=2

	SETPA MW[1]=MI.1.1, PGF[1]=EEGRF(1,J),AGF[1]=EEGRF(1,J),
	CONTROL=A
	ACOMP=1,PCOMP=1
ENDRUN

;CREATE FORECAST YEAR EE TABLE
RUN PGM=FRATAR
	MATI=EEPC_BASE.VTT
	MATO=EEPC20{year}.VTT,MO=1,NAME=EEPC
	ZONES= {totzones},MAXRMSE=0.10 MAXITERS=15
	ZONEMSG=100

	LOOKUP FILE=EEPC_FRATAR_FINAL.PRN,NAME=EEGRF,
		LOOKUP[1]=1, RESULT=2

	SETPA MW[1]=MI.1.1, PGF[1]=EEGRF(1,J),AGF[1]=EEGRF(1,J),
	CONTROL=A
	ACOMP=1,PCOMP=1
ENDRUN

;FRATAR EXISTING 2000 EE TRUCK TRIPTABLE
RUN PGM=MATRIX
	ZDATI[1]=parameters\Externals.dbf,z=n                 ;external station vehicle percentage splits
	ZDATI[2]=extforecast.prn,z=#1,forecast=#2  ;external stations volume forecast
	RECO[1]=TRUCKEE.DBF,FIELDS=ZONE,COM15,MTK15,HTK15,COMFORE,MTKFORE,HTKFORE,COMGR,MTKGR,HTKGR
	ZONES={totzones}
	ZONEMSG=10

	RO.ZONE=I
	RO.COM15=ZI.1.COMEE * ZI.1.AWDT2015
	RO.MTK15=ZI.1.MTKEE * ZI.1.AWDT2015
	RO.HTK15=ZI.1.HTKEE * ZI.1.AWDT2015
	RO.COMFORE=ZI.1.COMEE * ZI.2.FORECAST
	RO.MTKFORE=ZI.1.MTKEE * ZI.2.FORECAST
	RO.HTKFORE=ZI.1.HTKEE * ZI.2.FORECAST
	
	IF(RO.COM15>0)
		RO.COMGR=RO.COMFORE/RO.COM15
	ELSE
		RO.COMGR=0
	ENDIF
	
	IF(RO.MTK15>0)
		RO.MTKGR=RO.MTKFORE/RO.MTK15
	ELSE
		RO.MTKGR=0
	ENDIF
	
	IF(RO.HTK15>0)
		RO.HTKGR=RO.HTKFORE/RO.HTK15
	ELSE
		RO.HTKGR=0
	ENDIF
	
	WRITE RECO=1
	IF(I>{lastin})
		PRINT LIST=I,RO.COMGR,RO.MTKGR,RO.HTKGR,FILE=EETRK_FRATAR_FINAL.PRN
	ENDIF
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=PARAMETERS\EXTERNALS.DBF,Z=N
	RECO=TRUCK_EE.DBF,FIELDS=Z,COMEE,MTKEE,HTKEE
	ZONES={totzones}

	RO.Z=Z
	RO.COMEE = ZI.1.AWDT2015 * ZI.1.COMEE
	RO.MTKEE = ZI.1.AWDT2015 * ZI.1.MTKEE
	RO.HTKEE = ZI.1.AWDT2015 * ZI.1.HTKEE
	WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
	MATI[1]=PARAMETERS\EETRK05.VTT
	RECO=TRUCK_EE_2005.DBF,FIELDS=Z,COMEE,MTKEE,HTKEE

	MW[1]=MI.1.1
	MW[2]=MI.1.1.T
	MW[3]=MI.1.2
	MW[4]=MI.1.2.T
	MW[5]=MI.1.3
	MW[6]=MI.1.3.T

	RO.Z=I
	RO.COMEE=ROWSUM(1)+ROWSUM(2)
	RO.MTKEE=ROWSUM(3)+ROWSUM(4)
	RO.HTKEE=ROWSUM(5)+ROWSUM(6)
	WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=TRUCK_EE.DBF
	ZDATI[2]=TRUCK_EE_2005.DBF
	RECO=EE_TRUCK_FRATAR.DBF,FIELDS=Z,COM,MTK,HTK
	ZONES={totzones}

	IF(I>{lastin})
		RO.Z=I
		IF(ZI.2.COMEE>0)
			COM=ZI.1.COMEE / ZI.2.COMEE
		ELSE
			COM=0
		ENDIF
		
		IF(ZI.2.MTKEE>0)
			MTK=ZI.1.MTKEE / ZI.2.MTKEE
		ELSE
			MTK=0
		ENDIF
		
		IF(ZI.2.HTKEE>0)
			HTK=ZI.1.HTKEE / ZI.2.HTKEE
		ELSE
			HTK=0
		ENDIF
		
		WRITE RECO=1
	ENDIF
	
	PRINT LIST=Z,COM,MTK,HTK,FILE=EETRKFRA_{year}_REV.PRN
ENDRUN

;CREATE NEW BASE EE TRUCK TABLES
RUN PGM=FRATAR
	MATI=parameters\EETRK05.VTT                               ;BASE YEAR TRIPTABLE
	MATO=CMHEE_BASE.TRP,MO=1-3,NAME=COMEE,MTKEE,HTKEE
	ZONES={totzones},MAXRMSE=0.10 MAXITERS=15
	ZONEMSG=100

	LOOKUP FILE=EETRKFRA_{year}_REV.PRN,NAME=EEGRF,
		LOOKUP[1]=1, RESULT=2,
		LOOKUP[2]=1, RESULT=3,
		LOOKUP[3]=1, RESULT=4

	SETPA MW[1]=MI.1.1, PGF[1]=EEGRF(1,J),AGF[1]=EEGRF(1,J),CONTROL[1]=A,
		MW[2]=MI.1.2, PGF[2]=EEGRF(2,J),AGF[2]=EEGRF(2,J),CONTROL[2]=A,
		MW[3]=MI.1.3, PGF[3]=EEGRF(3,J),AGF[3]=EEGRF(3,J),CONTROL[3]=A
	
	ACOMP=1-3,PCOMP=1-3
ENDRUN

;CREATE NEW BASE EE TRUCK TABLES
RUN PGM=FRATAR
	MATI=CMHEE_BASE.TRP
	MATO=CMHEE.TRP,MO=1-3,NAME=COMEE,MTKEE,HTKEE
	ZONES={totzones},MAXRMSE=0.10 MAXITERS=15
	ZONEMSG=100

	LOOKUP FILE=EETRK_FRATAR_FINAL.PRN,NAME=EEGRF,
		LOOKUP[1]=1, RESULT=2,
		LOOKUP[2]=1, RESULT=3,
		LOOKUP[3]=1, RESULT=4

	SETPA MW[1]=MI.1.1, PGF[1]=EEGRF(1,J),AGF[1]=EEGRF(1,J),CONTROL[1]=A,
		MW[2]=MI.1.2, PGF[2]=EEGRF(2,J),AGF[2]=EEGRF(2,J),CONTROL[2]=A,
		MW[3]=MI.1.3, PGF[3]=EEGRF(3,J),AGF[3]=EEGRF(3,J),CONTROL[3]=A
	
	ACOMP=1-3,PCOMP=1-3
ENDRUN

; COMMERCIAL VEHICLE MODEL
:CheckComVeh
IF({ChkComVeh.n}=0) goto :CheckFeedback

;Commercial Vehicle Trip Generation
IF({ChkComTG.n}=0) goto :CheckComTD

RUN PGM=MATRIX
	id = "Distance to nearest external station
	;  input off-peak highway skim
	MATI[1] = sovff1_free.skm  ;includes terminal time

	;  skip entire calculation for external stations
	IF(i > {lastin}) continue

	; get distance matrix; exclude internal zones
	MW[1] = MI.1.distance, exclude = 1-{lastin}

	; Fill zero cells with large value.
	JLOOP
		IF(MW[1] < 0.01) MW[1] = 9999.
	ENDJLOOP

	; "Nearest" zone is the one with the minimum distance.
	nearest = rowmin(1)

	PRINT list = i(5.0),nearest(7.2)  file = extdist.dat  print=n
ENDRUN

; ARC Commercial/Truck Vehicle Model
RUN PGM=TRIPGEN
	id = "Commercial/Truck Trip Generation

	; standard zonal data file
	ZDATI[1] = ZoneData.dbf
  
	; external trip ends, initially from truck\ExternalStations.xls; now created within model
	ZDATI[2] = cmhext.prn, z = #1, comext = #2, mtkext = #3, htkext = #4

	; Zonal area type
	ZDATI[3] = znedat{year}.dat, z = #1, atype = #12

	; distance to nearest external station, from above
	ZDATI[4] = extdist.dat, z = #1, extdist = #2

	; Truck zones
	ZDATI[5] = "parameters\truckzones.dbf", z = ZONE

	; Inside / outside I-285
	ZDATI[6] = "parameters\I285_ZONES.dbf", z = ZONE

	; Intermodal zones
	ZDATI[7] = "parameters\IntermodalZones.dbf", z = TAZ

	; Output P/A file:
		;  1 = COM I/I  4 = COM external
		;  2 = MTK I/I  5 = MTK ext
		;  3 = HTK I/I  6 = HTK ext
	PAO = cmhte.dat form=8.0 list= z(5.0), p[1],a[1],p[2],a[2],p[3],a[3],
		p[4],a[4],p[5],a[5],p[6],a[6],  print=y

	ZONES = {totzones}

	; Look up area type factors
	lookup interpolate=n, fail=1.0,1.0,1.0, NAME=atfac,
		lookup[1] = 1, result = 2,
		lookup[2] = 1, result = 3,
		lookup[3] = 1, result = 4,
		;       AT  COM   MTK   HTK
		r = '1  0.70  0.40  0.40',
			'2  0.80  0.60  0.60',
			'3  0.90  0.75  0.70',
			'4  1.00  0.80  0.70',
			'5  1.10  0.85  0.90',
			'6  1.20  1.00  0.95',
			'7  1.40  1.00  1.00'

	; Apply equation to internal zones only
	IF(i <= {lastin})
		; AT-based adjustment factor.
		comfac = atfac(1,atype)
		mtkfac = atfac(2,atype)
		htkfac = atfac(3,atype)

		; Sum employment by type
		AMCemp = ZI.1.N11 + ZI.1.N21 + ZI.1.N23                   ;Agriculture, Mining, & Construction
		MTWemp = ZI.1.N22 + ZI.1.N313233 + ZI.1.N42 + ZI.1.N4849  ;Utilities, Manufacturing, Wholesale, Transportation & Warehousing
		RETemp = ZI.1.N4445                                       ;Retail
		OTHemp = ZI.1.EMP - (AMCemp + MTWemp + RETemp)            ;Other employment
		indemp = ZI.1.CONSTRUC + ZI.1.MANUFAC + ZI.1.TCU + ZI.1.wholesl
		retemp1 = ZI.1.retail
		offemp = ZI.1.FIRE + ZI.1.govt + ZI.1.service

		; Calculate productions by type.
		com = ((0.230 * indemp + 0.125 * offemp + 0.407 * retemp1 + 0.330 * ZI.1.HSHLD) * comfac) * 1.05

		;QRFM
		MTK = (0.289*AMCemp + 0.242*MTWemp + 0.150*RETemp + 0.068*OTHemp + 0.0250*ZI.1.HSHLD)
		HTK = (0.174*AMCemp + 0.104*MTWemp + 0.065*RETemp + 0.009*OTHemp + 0.0150*ZI.1.HSHLD)
  
		;Area type and ITP vs. OTP adjustment for medium and heavy trucks
		IF(ZI.6.I285[I]=1 | ZI.6.I285[J]=1)
			mtk = MTK * MTKFAC * 0.70
			htk = HTK * HTKFAC * 0.50
		ELSE
			mtk = MTK * MTKFAC
			htk = HTK * HTKFAC
		ENDIF

		; Truck zone factor 
		IF(flag > 0)
			htk = 2.0 * htk
			mtk = 1.5 * mtk
		ENDIF
    
		; Intermodal Facilities
		IF(ZI.7.TYPE=1)
			MTK = ZI.7.ANNUAL * 0.0040
			HTK = ZI.7.ANNUAL * 0.0016
		ELSEIF(ZI.7.TYPE=2)
			MTK = ZI.7.ANNUAL * 0.0074
			HTK = ZI.7.ANNUAL * 0.0057
		ENDIF

		;  Apply external trip end share model.
		;  External share is a declining function of the zone's distance to the
		;   nearest cordon station (in miles).  This particular model is an
		;   amalgam of the Berks Co, PA purpose-specific models.  Limit the
		;   max External share to 90%.
		extpct = 0.0
		IF(extdist > 0) extpct = extdist^-1.2
		extpctc = max(min(1.54*extpct,0.9),0)
		extpctm = max(min(4.94*extpct,0.9),0)
		extpcth = max(min(8.25*extpct,0.9),0)
		intpctc = 1.0 - extpctc
		intpctm = 1.0 - extpctm
		intpcth = 1.0 - extpcth

		; Apply internal trip end shares.  Set A's equal to the P's.
		p[1] = com * intpctc
		p[2] = mtk * intpctm
		p[3] = htk * intpcth
		a[1] = p[1]
		a[2] = p[2]
		a[3] = p[3]

		; Define all external trip ends as "Productions" at the internal
		;  zones and "Attractions" at the external stations.  Calculate
		;  these (initially) for internal zones as what's left over
		;  after the above calculation.
		p[4] = com * extpctc
		p[5] = mtk * extpctm
		p[6] = htk * extpcth
	ENDIF

	; External trip ends.  These were initially calculated externally, in
	;  ExternalStations.xls  These are defined as
	;  Attractions, at the external stations.
	IF(i > {lastin})
		p[1] = 0
		p[2] = 0
		p[3] = 0
		p[4] = 0
		p[5] = 0
		p[6] = 0
		a[1] = 0
		a[2] = 0
		a[3] = 0
		a[4] = comext
		a[5] = mtkext
		a[6] = htkext
	ENDIF

	PHASE = ADJUST
		; Normalize external trips to the attractions (input at the external stations)
		p[4] = p[4] * a[4][0]/p[4][0]
		p[5] = p[5] * a[5][0]/p[5][0]
		p[6] = p[6] * a[6][0]/p[6][0]
	ENDPHASE
ENDRUN

:CheckComTD
IF({ChkComTD.n}=0) goto :CheckComTOD

;Commercial Vehicle Trip Distribution
RUN PGM=TRIPDIST
	id = "Commercial/Truck Trip Distribution

	; Skims
	MATI = sovff1_free.skm ;includes terminal times

	; Trip ends
	ZDATI = cmhte.dat z=#1,p1=#2,a1=#3,p2=#4,a2=#5,p3=#6,a3=#7,
		p4=#8,a4=#9,p5=#10,a5=#11,p6=#12,a6=#13

	; Output
	MATO = cmh.trp, MO=1-6, NAME = COMII,MTKII,HTKII,COMEXT,MTKEXT,HTKEXT, DEC=6*S

	; Set maximum iterations, unless RMSE for all purposes is met.
	maxiters = 20, maxrmse = 10

	; Set productions and attractions
	setpa p[1]=p1, a[1]=a1, p[2]=p2, a[2]=a2, p[3]=p3, a[3]=a3,
		p[4]=p4, a[4]=a4, p[5]=p5, a[5]=a5, p[6]=p6, a[6]=a6

	; Get skims.
	MW[10] = MI.1.Time

	; Look up friction factors.
	lookup fail=1750000,0,0, file=parameters\ffactors.prn, list=y, interpolate=y, name=ff,
		lookup[1]=1, result=2,
		lookup[2]=1, result=3,
		lookup[3]=1, result=4,
		lookup[4]=1, result=5,
		lookup[5]=1, result=6,
		lookup[6]=1, result=7

	; Distribute trips on off-peak skim time w/intrazonal and terminal time.
	gravity purpose=1, los = MW[10], ffactors=ff
	gravity purpose=2, los = MW[10], ffactors=ff
	gravity purpose=3, los = MW[10], ffactors=ff
	gravity purpose=4, los = MW[10], ffactors=ff
	gravity purpose=5, los = MW[10], ffactors=ff
	gravity purpose=6, los = MW[10], ffactors=ff

	; Trip end report
	report margins = 1-6
ENDRUN

RUN PGM=MATRIX
	id = "Commercial/Truck TLFDs

	;  Input files: trips, skims
	MATI[1] = cmh.trp
	MATI[2] = sovff_free.skm ;includes terminal times
	ZONEMSG=10
  
	; Get trips.
	MW[1] = MI.1.COMII
	MW[2] = MI.1.MTKII
	MW[3] = MI.1.HTKII
	MW[4] = MI.1.COMEXT
	MW[5] = MI.1.MTKEXT
	MW[6] = MI.1.HTKEXT

	; Sum.
	MW[9]  = MW[1] + MW[4]
	MW[10] = MW[2] + MW[5]
	MW[11] = MW[3] + MW[6]

	; Time.
	MW[7] = MI.2.Distance
	MW[8] = MI.2.Time

	; TLF
	frequency basemw=7, valuemw=1, range=0-50-2,
		title='Est Commercial I/I Trips vs. Off-Peak Hwy Distance'
	frequency basemw=7, valuemw=2, range=0-50-2,
		title='Est Medium Truck I/I Trips vs. Off-Peak Hwy Distance'
	frequency basemw=7, valuemw=3, range=0-50-2,
		title='Est Heavy Truck I/I Trips vs. Off-Peak Hwy Distance'
	frequency basemw=7, valuemw=4, range=0-120-5,
		title='Est Commercial Ext Trips vs. Off-Peak Hwy Distance'
	frequency basemw=7, valuemw=5, range=0-120-5,
		title='Est Medium Truck Ext Trips vs. Off-Peak Hwy Distance'
	frequency basemw=7, valuemw=6, range=0-120-5,
		title='Est Heavy Truck Ext Trips vs. Off-Peak Hwy Distance'

	frequency basemw=7, valuemw=9, range=0-120-5,
		title='Est Commercial Total Trips vs. Off-Peak Hwy Distance'
	frequency basemw=7, valuemw=10, range=0-120-5,
		title='Est Medium Truck Total Trips vs. Off-Peak Hwy Distance'
	frequency basemw=7, valuemw=11, range=0-120-5,
		title='Est Heavy Truck Total Trips vs. Off-Peak Hwy Distance'

	frequency basemw=8, valuemw=9, range=0-180-10,
		title='Est Commercial Total Trips vs. Off-Peak Hwy Time'
	frequency basemw=8, valuemw=10, range=0-180-10,
		title='Est Medium Truck Total Trips vs. Off-Peak Hwy Time'
	frequency basemw=8, valuemw=11, range=0-180-10,
		title='Est Heavy Truck Total Trips vs. Off-Peak Hwy Time'
ENDRUN

:CheckComTOD
IF({ChkComTOD.n}=0) goto :CheckFeedback

RUN PGM=MATRIX
	id = "Commercial/Truck time of day
  
	; Also add in the E/E trips, which were developed separately.  
	MATI[1] = cmh.trp
	MATI[2] = cmhee.trp
	MATO[1] = com.trp, MO=101-105, NAME=EACOM,AMCOM,MDCOM,PMCOM,EVCOM, DEC = 5*4
	MATO[2] = mtk.trp, MO=201-205, NAME=EAMTK,AMMTK,MDMTK,PMMTK,EVMTK, DEC = 5*4
	MATO[3] = htk.trp, MO=301-305, NAME=EAHTK,AMHTK,MDHTK,PMHTK,EVHTK, DEC = 5*4
	ZONEMSG=10
  
	; I/I trips are already balanced, so we can apply a single factor
	;  to all trips.  Apply separate P/A and A/P factors to externals.
	;  Assume externals are 70/30 inbound (E/I, or A/P) in the morning,
	;  70/30 outbound (I/E, P/A) in the evening.  Midday/Night is 50/50.

	;commercial vehicles
	MW[1] = MI.1.COMII
	MW[2] = MI.1.COMEXT           ; P/A (outbound)
	MW[3] = MI.1.COMEXT.t         ; A/P (inbound)

	; Also add in the E/E's.
	MW[4] = MI.2.COMEE
  
	; Use proposed new TOD factors
	MW[101] = 0.03 * (MW[1] + 0.60 * MW[3] + 0.40 * MW[2] + MW[4]) ;EA
	MW[102] = 0.23 * (MW[1] + 0.55 * MW[3] + 0.45 * MW[2] + MW[4]) ;AM
	MW[103] = 0.39 * (MW[1] + 0.50 * MW[3] + 0.50 * MW[2] + MW[4]) ;MD
	MW[104] = 0.27 * (MW[1] + 0.46 * MW[3] + 0.54 * MW[2] + MW[4]) ;PM
	MW[105] = 0.08 * (MW[1] + 0.32 * MW[3] + 0.68 * MW[2] + MW[4]) ;PM

	; medium trucks
	MW[13] = MI.1.MTKII
	MW[14] = MI.1.MTKEXT           ; P/A (outbound)
	MW[15] = MI.1.MTKEXT.t         ; A/P (inbound)

	; Also add in the E/E's.
	MW[16] = MI.2.MTKEE

	; Use proposed new TOD factors
	MW[201] = 0.06 * (MW[13] + 0.60 * MW[14] + 0.40 * MW[15] + MW[16]) ;EA
	MW[202] = 0.25 * (MW[13] + 0.55 * MW[14] + 0.45 * MW[15] + MW[16]) ;AM
	MW[203] = 0.34 * (MW[13] + 0.50 * MW[14] + 0.50 * MW[15] + MW[16]) ;MD
	MW[204] = 0.23 * (MW[13] + 0.46 * MW[14] + 0.54 * MW[15] + MW[16]) ;PM
	MW[205] = 0.12 * (MW[13] + 0.32 * MW[14] + 0.68 * MW[15] + MW[16]) ;PM

	; heavy trucks
	MW[25] = MI.1.HTKII
	MW[26] = MI.1.HTKEXT           ; P/A (outbound)
	MW[27] = MI.1.HTKEXT.t         ; A/P (inbound)

	; Also add in the E/E's.
	MW[28] = MI.2.HTKEE

	; Use proposed new TOD factors
	MW[301] = 0.09 * (MW[25] + 0.60 * MW[26] + 0.40 * MW[27] + MW[28]) ;EA
	MW[302] = 0.18 * (MW[25] + 0.55 * MW[26] + 0.45 * MW[27] + MW[28]) ;AM
	MW[303] = 0.30 * (MW[25] + 0.50 * MW[26] + 0.50 * MW[27] + MW[28]) ;MD
	MW[304] = 0.19 * (MW[25] + 0.46 * MW[26] + 0.54 * MW[27] + MW[28]) ;PM
	MW[305] = 0.24 * (MW[25] + 0.32 * MW[26] + 0.68 * MW[27] + MW[28]) ;PM
ENDRUN

RUN PGM=MATRIX
	MATI[1] = htk.trp
	ZDATI=PARAMETERS\I285_ZONES.DBF,Z=ZONE

	; Output "HTK" trips are those with origin or destination inside I-285.  HTK EE trips
	;  are in the "HTKEE" output table.  All other HTK trips are in the "285TRK" output table.
	MATO[1] = htkbypass.trp,MO=11-15,NAME=EAHTK,AMHTK,MDHTK,PMHTK,EVHTK,DEC=5*S
	MATO[2] = htknobypass.trp,MO=21-25,NAME=EAHTK,AMHTK,MDHTK,PMHTK,EVHTK,DEC=5*S

	; Cube Cluster Controls
	DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

	FILLMW MW[101]=MI.1.1(5)  ;EA, AM, MD, PM, EV

	;Separate heavy trucks for I-285 Bypass
	JLOOP
		;Outside I-285 to Outside I-285
		IF(ZI.1.I285[I]=2 & ZI.1.I285[J]=2)
			MW[11]=MW[101]
			MW[12]=MW[102]
			MW[13]=MW[103]
			MW[14]=MW[104]
			MW[15]=MW[105]
		ELSEIF(I>{lastin} & J>{lastin})
			MW[11]=MW[101]
			MW[12]=MW[102]
			MW[13]=MW[103]
			MW[14]=MW[104]
			MW[15]=MW[105]
		ELSE
		; Origin or destination inside I-285    
			MW[21]=MW[101]
			MW[22]=MW[102]
			MW[23]=MW[103]
			MW[24]=MW[104]
			MW[25]=MW[105]
		ENDIF
	ENDJLOOP
ENDRUN

:WarmStart
IF({chkWarmStart.n}=0) goto :SkipWarmStart

LOOP TOD=1,5
	IF(TOD=1)
		PER='EA'
		CAPFAC=1.66
		MAXITER={iteration}
	ELSEIF(TOD=2)
		PER='AM'
		CAPFAC=3.66
		MAXITER={iteration}
	ELSEIF(TOD=3)
		PER='MD'
		CAPFAC=4.70
		MAXITER={iteration}
	ELSEIF(TOD=4)
		PER='PM'
		CAPFAC=3.66
		MAXITER={iteration}
	ELSEIF(TOD=5)
		PER='EV'
		CAPFAC=3.91
		MAXITER={iteration}
	ENDIF

	RUN PGM=HIGHWAY, PRNFILE=WarmStart@per@.rpt
		id = "20{year} highway assignment, period @per@
		MATI[1] = WarmStart\TOD@per@{year}_asgn.VTT
		MATI[2] = WarmStart\com.trp
		MATI[3] = WarmStart\mtk.trp
		MATI[4] = WarmStart\htkbypass.trp
		MATI[5] = WarmStart\htknobypass.trp
		NETI=hwy{year}ff.NET 
		NETO=lod{year}@per@.tmp

		PARAMETERS MAXITERS = @maxiter@  ;Max numbers of iterations allowed
		PARAMETERS RELATIVEGAP=0.0001, GAP=0, AAD=0, RAAD=0  ;closure criteria
		PARAMETERS COMBINE=EQUI, MULTITHREAD={XCPU} ENHANCE=2, SMOOTH=0  ;bi-conjugate FW with multi-thread

		; Cube Cluster Controls
		DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

		PHASE=LINKREAD                                     ;read in link variables from input file
			C  = li.@per@capacity*@capfac@
			T0 = li.time1  
			linkclass=li.factype+1                         ;define linkclass by assignment group

			;make interstate more attractive for heavy trucks
			IF(li.factype=1)
				lw.trkdist = 0.70 * li.distance
			ELSE
				lw.trkdist = li.distance
			ENDIF
    
			IF(li.WeaveFlag=1)                                ;linkclass for major interchanges
				linkclass=16
			ENDIF
    
			; Set Prohibitions
			IF(li.factype> 49)    ADDTOGROUP=1    ; Transit only
			IF((li.TOLL@per@>0) & (li.prohibit!=3 && li.prohibit!=7 && li.prohibit!=8 && li.prohibit!=9 && li.prohibit!=10 && li.prohibit!=11 && li.prohibit!=12))
							ADDTOGROUP=15   ; Toll - All Vehicles Allowed and Tolled
			ENDIF
			IF(li.prohibit= 1) ADDTOGROUP=3    ; No Trucks
			IF(li.prohibit= 2) ADDTOGROUP=4    ; HOV 2+
			IF(li.prohibit= 3) ADDTOGROUP=5    ; Managed Lanes - SOV Toll - HOV 2+ Free - No Trucks
			IF(li.prohibit= 4) ADDTOGROUP=6    ; Truck Only Lanes
			IF(li.prohibit= 5) ADDTOGROUP=7    ; I-285 Bypass
			IF(li.prohibit= 6) ADDTOGROUP=8    ; HOV 3+
			IF(li.prohibit= 7) ADDTOGROUP=9    ; Managed Lanes - SOV & HOV2 Toll - HOV 3+ Free - No Trucks
			IF(li.prohibit= 8) ADDTOGROUP=10   ; Managed Lanes - SOV & Truck Toll - HOV 2+ Free
			IF(li.prohibit= 9) ADDTOGROUP=11   ; Managed Lanes - SOV, HOV2 and Truck Toll - HOV 3+ Free
			IF(li.prohibit=10) ADDTOGROUP=12   ; Truck Only Toll
			IF(li.prohibit=11) ADDTOGROUP=13   ; Managed Lanes - HOV2 Toll - HOV 3+ Free - No Trucks or SOV
			IF(li.prohibit=12) ADDTOGROUP=14   ; Managed Lanes - SOV and HOV2+ Toll - No Trucks
			IF(li.prohibit=13) ADDTOGROUP=15   ; Managed Lanes - All Vehicles Allowed and Tolled
			IF(li.factype=1-49 & (li.lanes + li.lanes@per@ = 0)) ADDTOGROUP=32  ;links with zero lanes or period lanes

		   ; value of time
			votpc = {avot} / 60   ; $/min
			vottk = {tvot} / 60   ; $/min
			opcpc = {aoc}
			opctk = {toc}

			lw.fftime=li.time1
			lw.sovtoll=li.toll@per@
     
			IF(li.prohibit=3,8)  ; managed lanes - SOV toll, HOV2+ free
				lw.hov2toll=0
				lw.hov3toll=0
			ELSEIF(li.prohibit=7,9,11)  ; managed lanes - HOV2 toll, HOV3+ free
				lw.hov2toll = li.toll@per@
				lw.hov3toll=0
			ELSE
				lw.hov2toll = li.toll@per@
				lw.hov3toll = li.toll@per@
			ENDIF

			; Add Time Penalty for Trucks at the Financial Center Tunnel (GA400)
			IF((a=269931 & b=57887) | (a=255012 & b=234098)) lw.trkpen=5
			lw.trktoll=li.toll@per@

			;calculate gen cost by user class
			; Re-label volumes:
				; 1 = SOV Free&Toll
				; 2 = HOV 2 Free&Toll
				; 3 = HOV 3+ Free&Toll
				; 4 = COM
				; 5 = MTK
				; 6 = HTK
    
			;compute generalized cost by user class
			IF(iteration=0)
				lw.sovcost  = lw.fftime*votpc + lw.sovtoll  + {distwgt}*li.distance*opcpc
				lw.hov2cost = lw.fftime*votpc + lw.hov2toll + {distwgt}*li.distance*opcpc
				lw.hov3cost = lw.fftime*votpc + lw.hov3toll + {distwgt}*li.distance*opcpc
				lw.htkcost  = (lw.fftime+lw.trkpen)*vottk + lw.trktoll + {distwgt}*lw.trkdist*opctk
				lw.mtkcost  = (lw.fftime+lw.trkpen)*vottk + lw.trktoll + {distwgt}*li.distance*opctk
			ENDIF
		ENDPHASE                         

		PHASE=ILOOP
			; Volume Sets: sov(1) hov2(2) hov3(3) com(4) mtk(5) htk(6)
			; Free trips (can not use toll paths)
			MW[1]=MI.1.sovf       ; SOV
			MW[2]=MI.1.hov2f      ; HOV2
			MW[3]=MI.1.hov3f      ; HOV3+
			MW[4]=0               ; COM
			MW[5]=0               ; MTK
			MW[6]=0               ; HTK I-285 BYPASS
			MW[7]=0               ; HTK NO I-285 BYPASS
			; Toll trips (can use free and toll paths)
			MW[11]=MI.1.sovt     ; SOV
			MW[12]=MI.1.hov2t    ; HOV2
			MW[13]=MI.1.hov3t    ; HOV3+
			MW[14]=MI.2.@per@COM   ; COM
			MW[15]=MI.3.@per@MTK   ; MTK
			MW[16]=MI.4.@per@HTK   ; HTK I-285 BYPASS
			MW[17]=MI.5.@per@HTK   ; HTK NO I-285 BYPASS
    
			;Assign Non-Toll Trips =======================
			;Assign SOV, COM
				pathload path=lw.sovcost,DEC=F2 vol[1]=MW[1], excludegrp=1,4,5,6,8,9,10,11,12,13,14,15,32
			;Assign HOV 2
				pathload path=lw.hov2cost,DEC=F2 vol[2]=MW[2],excludegrp=1,6,8,9,11,12,13,14,15,32
			;Assign HOV 3
				pathload path=lw.hov3cost,DEC=F2 vol[3]=MW[3],excludegrp=1,6,12,14,15,32
			;Assign some Heavy Trucks to a path that does not go inside I-285
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[6], excludegrp=1,3,4,5,7,8,9,13,14,15,32
			; Assign all Medium Trucks to no forced bypass path
				pathload path=lw.mtkcost,DEC=F2 vol[5]=MW[5], excludegrp=1,3,4,5,8,9,13,14,15,32
			; Assign other Heavy Trucks
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[7], excludegrp=1,3,4,5,8,9,13,14,15,32
			
			;Assign Toll Trips ===========================
			;Assign SOV, COM
				pathload path=lw.sovcost,DEC=F2 vol[1]=MW[11], excludegrp=1,4,6,8,12,13,32
			;Assign HOV 2
				pathload path=lw.hov2cost,DEC=F2 vol[2]=MW[12],excludegrp=1,6,8,12,32
			;Assign HOV 3
				pathload path=lw.hov3cost,DEC=F2 vol[3]=MW[13],excludegrp=1,6,12,32
			;Assign some Heavy Trucks to a path that does not go inside I-285
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[16], excludegrp=1,3,4,5,7,8,9,13,14,32
			;Assign Medium Trucks to no forced bypass path
				pathload path=lw.mtkcost,DEC=F2 vol[5]=MW[15], excludegrp=1,3,4,5,8,9,13,14,32
			;Assign other Heavy Trucks to no forced bypass path
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[17], excludegrp=1,3,4,5,8,9,13,14,32
			;Assign COM ===========================
				pathload path=lw.sovcost,DEC=F2 vol[4]=MW[14], excludegrp=1,3,4,5,8,9,13,14,32
		ENDPHASE
  
		PHASE=ADJUST  
			;set volume delay functions
			FUNCTION {
				; Cent conn  
				TC[1]=  T0
				; Freeway
				TC[2]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway
				TC[5]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - HOV concurrent
				TC[6]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - HOV barrier
				TC[7]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - Truck
				TC[16]= T0 * (1 + 0.20 * V/C + 1.25 * ((V/C)^5.5))   ; Freeway weaving section
				; Ramp    
				TC[8]=  T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; sys-sys ramp
				TC[9]=  T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; exit ramp
				TC[10]= T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; entrance ramp
				; Expressway/Parkway    
				TC[3]=  T0 * (1 + 0.00 * V/C + 1.0 * ((V/C)^4))      ; Expressway
				TC[4]=  T0 * (1 + 0.00 * V/C + 1.25* ((V/C)^4))      ; Parkwy
				; Arterial
				TC[11]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Principal Arterial
				TC[12]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Minor Arterial
				TC[13]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Arterial HOV
				TC[14]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Arterial truck
				; Collector
				TC[15]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Collector
			}

			; Output link volume sets:
			; 1 = SOV ; 2 = HOV2 ; 3 = HOV3+
			; 4 = COM ; 5 = MTK ; 6 = HTK
   
			;PCE factors are applied to medium duty trucks (1.5) and heavy duty trucks (2.0) in the vdf lookup.
			;The output VC ratios include the PCE factors, however, the volumes do not!!!
			;total volume function with PCE factors
			FUNCTION V = vol[1]+vol[2]+vol[3]+vol[4]+1.5*vol[5]+2.0*vol[6]

			;update link costs by user class
			lw.sovcost  = time*votpc + lw.sovtoll  + {distwgt}*li.distance*opcpc
			lw.hov2cost = time*votpc + lw.hov2toll + {distwgt}*li.distance*opcpc
			lw.hov3cost = time*votpc + lw.hov3toll + {distwgt}*li.distance*opcpc
			lw.mtkcost  = (time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*li.distance*opctk
			lw.htkcost  = (time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*lw.trkdist*opctk
             
			FUNCTION COST=((time*votpc + lw.sovtoll  + {distwgt}*li.distance*opcpc) * (V1+V4) +
					(time*votpc + lw.hov2toll + {distwgt}*li.distance*opcpc) * V2 +
					(time*votpc + lw.hov3toll + {distwgt}*li.distance*opcpc) * (V3) +
					((time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*li.distance*opctk) * (1.5*(V5)) +
					((time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*lw.trkdist*opctk) * (2.0*(V6))) / CmpNumRetNum(V,'=',0,1,V)
		ENDPHASE
  
		;ensure convergence on relative gap
		PHASE=CONVERGE
			IF(ITERATION < 6) BREAK         ; do not check if fewer than 6 iterations
			IF( (RGAP[ITERATION]<RGAPCUTOFF) && (RGAP[ITERATION-1]<RGAPCUTOFF) && (RGAP[ITERATION-2]<RGAPCUTOFF) )
				BALANCE=1
			ENDIF
		ENDPHASE
	ENDRUN

	PROMPT QUESTION="Waiting for Cluster Nodes to Restart" ANSWER="Waiting" WAIT={waitTime}

	RUN PGM=NETWORK
		NETI=lod{year}@per@.tmp
		NETO=lod{year}@per@.NET,
			Exclude=VT_1,V1T_1,V2T_1,V3T_1,V4T_1,V5T_1,V6T_1,V_1,V1_1,V2_1,V3_1,V4_1,V5_1,V6_1,
				cspd_1,vdt_1,vht_1
		
		V_SOV@per@ = ROUND(V1_1)                          ;round SOV volumes
		V_HOV@per@ = ROUND(V2_1+V3_1)                     ;round HOV volumes
		V_HOV2@per@ = ROUND(V2_1)                         ;round HOV2 volumes
		V_HOV3@per@ = ROUND(V3_1)                         ;round HOV3+ volumes
		V_COM@per@ = ROUND(V4_1)                          ;round COM volumes
		V_MTK@per@ = ROUND(V5_1)                          ;round MTK volumes
		V_HTK@per@ = ROUND(V6_1)                          ;round HTK volumes
		V_TOT@per@ = ROUND(V1_1+V2_1+V3_1+V4_1+V5_1+V6_1) ;round total volumes
		V_TRK@per@ = ROUND(V4_1 + V5_1 + V6_1)            ;round COM, MTK and HTK volumes (for emissions)

		;estimate LOS
		IF(VC_1 < 0.5)
			LOS = 'A/B'
		ELSEIF(VC_1 < 0.7)
			LOS = 'C'
		ELSEIF(VC_1 < 0.84)
			LOS = 'D'
		ELSEIF(VC_1 < 1.0)
			LOS = 'E'
		ELSEIF(VC_1 >= 1.0)
			LOS = 'F'
		ENDIF
		
		IF(Time_1>0)
			CGSTDSPD=distance/time_1*60
		ELSE
			CGSTDSPD=0
		ENDIF
	ENDRUN
ENDLOOP

:SkipWarmStart

; BEGINNING OF THE FEEDBACK LOOP

:CheckFeedback
IF({chkFdB.n}=0) goto :CheckTransit

LOOP Loopnum=1,{loops}
	PrevLoop=Loopnum-1
	; First loop: use congested speeds lookup table
	; use congested lookup table for AM and PM or use warm start loaded networks
	; Other loops:
	; use loaded network congested speeds
	IF(Loopnum=1 & {chkWarmStart.n}=0)
		*copy HWY{year}Loop1_PK.NET LOD{year}AM.NET
		*copy HWY{year}Loop1_PK.NET LOD{year}PM.NET
		*copy HWY{year}Loop1_OP.NET LOD{year}EA.NET
		*copy HWY{year}Loop1_OP.NET LOD{year}MD.NET
		*copy HWY{year}Loop1_OP.NET LOD{year}EV.NET
	ENDIF

	IF({chkHwS.n}=0) goto :CheckTrnSkims

	; Highway Skims (Congested)

	; Highway Skims
	; Five time periods:
	; Early AM
	; AM Peak
	; Midday
	; PM Peak
	; Evening

	LOOP N=1,5
		IF(N=1) PER='EA'
		IF(N=2) PER='AM'
		IF(N=3) PER='MD'
		IF(N=4) PER='PM'
		IF(N=5) PER='EV'
	 
		RUN PGM=HIGHWAY
			NETI=LOD{year}@PER@.NET    ;  LOADED NETWORK
			MATI[1] =termtime.skm
			MATO[1] =sov_1_free_@PER@.skm,MO=121-123,NAME=TOLL,DISTANCE,TIME
			MATO[2] =hov2_1_free_@PER@.skm,MO=131-133,NAME=TOLL,DISTANCE,TIME
			MATO[3] =hov3_1_free_@PER@.skm,MO=141-143,NAME=TOLL,DISTANCE,TIME
			MATO[4] =sov_1_toll_@PER@.skm,MO=151-154,NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
			MATO[5] =hov2_1_toll_@PER@.skm,MO=161-164,NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
			MATO[6] =hov3_1_toll_@PER@.skm,MO=171-174,NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
			ZONEMSG=10

			; Cube Cluster Controls
			DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

			PHASE=LINKREAD
				; Set Prohibitions
				IF(li.factype> 49)    ADDTOGROUP=1   ; Transit only
				IF((li.TOLL@PER@>0) & (li.prohibit!=3 && li.prohibit!=7 && li.prohibit!=8 && li.prohibit!=9 && li.prohibit!=10 && li.prohibit!=11 && li.prohibit!=12))
							ADDTOGROUP=15   ; Toll - All Vehicles Allowed and Tolled
				ENDIF
				IF(li.prohibit= 1) ADDTOGROUP=3   ; No Trucks
				IF(li.prohibit= 2) ADDTOGROUP=4   ; HOV 2+
				IF(li.prohibit= 3) ADDTOGROUP=5   ; Managed Lanes - SOV Toll - HOV 2+ Free - No Trucks
				IF(li.prohibit= 4) ADDTOGROUP=6   ; Truck Only Lanes
				IF(li.prohibit= 5) ADDTOGROUP=7   ; I-285 Bypass
				IF(li.prohibit= 6) ADDTOGROUP=8   ; HOV 3+
				IF(li.prohibit= 7) ADDTOGROUP=9   ; Managed Lanes - SOV & HOV2 Toll - HOV 3+ Free - No Trucks
				IF(li.prohibit= 8) ADDTOGROUP=10  ; Managed Lanes - SOV & Truck Toll - HOV 2+ Free
				IF(li.prohibit= 9) ADDTOGROUP=11  ; Managed Lanes - SOV, HOV2 and Truck Toll - HOV 3+ Free
				IF(li.prohibit=10) ADDTOGROUP=12  ; Truck Only Toll
				IF(li.prohibit=11) ADDTOGROUP=13  ; Managed Lanes - HOV2 Toll - HOV 3+ Free - No Trucks or SOV
				IF(li.prohibit=12) ADDTOGROUP=14  ; Managed Lanes - SOV and HOV2+ Toll - No Trucks
				IF(li.prohibit=13) ADDTOGROUP=15  ; Managed Lanes - All Vehicles Allowed and Tolled
				IF(li.factype=1-49 & (li.lanes + li.lanes@PER@ = 0)) ADDTOGROUP=32 ;links with zero lanes or period lanes
	
				; value of time
				votpc = {avot} / 60             ; $/min
				votpc_toll = {avot_toll} / 60   ; $/min - set higher for toll skims to encourage toll paths
				opcpc = {aoc}

				linkclass=1
				lw.pktime=li.time_1
				lw.sov@per@toll=li.toll@per@
		 
				IF(li.prohibit=3,8)  ; managed lanes - SOV toll, HOV2+ free
					lw.hov2time=lw.pktime
					lw.hov3time=lw.pktime
				ELSEIF(li.prohibit=7,9,11)  ; managed lanes - HOV2 toll, HOV3+ free
					lw.hov3time=lw.pktime 
					lw.toll@PER@hov2 = li.toll@PER@
					lw.tolldisthov2 = li.distance
				ELSE
					lw.toll@PER@hov2 = li.toll@PER@
					lw.toll@PER@hov3 = li.toll@PER@
					IF(li.tollid>0)
						lw.tolldisthov2 = li.distance
						lw.tolldisthov3 = li.distance
					ENDIF
				ENDIF

				IF(li.tollid>0)
					lw.tolldistance = li.distance
				ENDIF
		
				;compute generalized cost by user class
				;non - toll
				lw.sovcost  = li.TIME_1*votpc + lw.sov@per@toll  + {distwgt}*li.distance*opcpc
				lw.hov2cost = li.TIME_1*votpc + lw.toll@per@hov2 + {distwgt}*li.distance*opcpc
				lw.hov3cost = li.TIME_1*votpc + lw.toll@per@hov3 + {distwgt}*li.distance*opcpc
				;toll
				lw.sovcost_t  = li.TIME_1*votpc_toll + lw.sov@per@toll  + {distwgt}*li.distance*opcpc
				lw.hov2cost_t = li.TIME_1*votpc_toll + lw.toll@per@hov2 + {distwgt}*li.distance*opcpc
				lw.hov3cost_t = li.TIME_1*votpc_toll + lw.toll@per@hov3 + {distwgt}*li.distance*opcpc
			ENDPHASE

			PHASE=ILOOP
				; Non-toll (free) paths ================================================
				; SOV congested skims
				path=lw.sovcost,DEC=F2 excludegroup=1,4,5,6,8,9,10,11,12,13,14,15,32,
					MW[121]=pathtrace(li.toll@PER@) noaccess=0.0,
					MW[122]=pathtrace(li.distance) noaccess=0.0,
					MW[123]=pathtrace(lw.pktime) noaccess=0.0
					MW[121][i]=0.0   ; set intrazonal toll cost to 0.0
					MW[122][i]=(lowest(122,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[123][i]=(lowest(123,3,0,99,i)/lowcnt)/2, exclude=@externals@
					; intrazonal time half of the sum of time nearest 3 zones
					MW[123]=MW[123]+MI.1.1+MI.1.2  ; add terminal time

				; HOV2 congested skims
				path=lw.hov2cost,DEC=F2 excludegroup=1,6,8,9,11,12,13,14,15,32,
					MW[131]=pathtrace(li.toll@PER@) noaccess=0,
					MW[132]=pathtrace(li.distance) noaccess=0,
					MW[133]=pathtrace(lw.pktime) noaccess=0
					MW[131][i]=0.0   ; set intrazonal toll cost to 0.0
					MW[132][i]=(lowest(132,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[133][i]=(lowest(133,3,0,99,i)/lowcnt)/2, exclude=@externals@
					; intrazonal time half of the sum of time nearest 3 zones
					MW[133]=MW[133]+MI.1.1+MI.1.2  ; add terminal time
		
				; HOV3+ congested skims
				path=lw.hov3cost,DEC=F2 excludegroup=1,6,12,14,15,32,
					MW[141]=pathtrace(li.toll@PER@) noaccess=0,
					MW[142]=pathtrace(li.distance) noaccess=0,
					MW[143]=pathtrace(lw.pktime) noaccess=0
					MW[141][i]=0.0   ; set intrazonal toll cost to 0.0
					MW[142][i]=(lowest(142,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[143][i]=(lowest(143,3,0,99,i)/lowcnt)/2, exclude=@externals@
					; intrazonal time half of the sum of time nearest 3 zones
					MW[143]=MW[143]+MI.1.1+MI.1.2  ; add terminal time
	  
				; Toll paths ===========================================================
				; SOV congested skims
				path=lw.sovcost_t,DEC=F2 excludegroup=1,4,6,8,12,13,32,
					MW[151]=pathtrace(li.toll@PER@) noaccess=0.0,
					MW[152]=pathtrace(li.distance) noaccess=0.0,
					MW[153]=pathtrace(lw.pktime) noaccess=0.0,
					MW[154]=pathtrace(lw.tolldistance) noaccess=0.0
					MW[151][i]=0.0   ; set intrazonal toll cost to 0.0
					MW[152][i]=(lowest(152,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[153][i]=(lowest(153,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[154][i]=(lowest(154,3,0,99,i)/lowcnt)/2, exclude=@externals@
					; intrazonal time half of the sum of time nearest 3 zones
					MW[153]=MW[153]+MI.1.1+MI.1.2  ; add terminal time
			
				; HOV2 congested skims
				path=lw.hov2cost_t,DEC=F2 excludegroup=1,6,8,12,32,
					MW[161]=pathtrace(lw.toll@PER@hov2) noaccess=0,
					MW[162]=pathtrace(li.distance) noaccess=0,
					MW[163]=pathtrace(lw.pktime) noaccess=0,
					MW[164]=pathtrace(lw.tolldisthov2) noaccess=0
					MW[161][i]=0.0   ; set intrazonal toll cost to 0.0
					MW[162][i]=(lowest(162,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[163][i]=(lowest(163,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[164][i]=(lowest(164,3,0,99,i)/lowcnt)/2, exclude=@externals@
					; intrazonal time half of the sum of time nearest 3 zones
					MW[163]=MW[163]+MI.1.1+MI.1.2  ; add terminal time
		
				; HOV3+ congested skims
				path=lw.hov3cost_t,DEC=F2 excludegroup=1,6,12,32,
					MW[171]=pathtrace(lw.toll@PER@hov3) noaccess=0,
					MW[172]=pathtrace(li.distance) noaccess=0,
					MW[173]=pathtrace(lw.pktime) noaccess=0,
					MW[174]=pathtrace(lw.tolldisthov3) noaccess=0
					MW[171][i]=0.0   ; set intrazonal toll cost to 0.0
					MW[172][i]=(lowest(172,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[173][i]=(lowest(173,3,0,99,i)/lowcnt)/2, exclude=@externals@
					MW[174][i]=(lowest(174,3,0,99,i)/lowcnt)/2, exclude=@externals@
					; intrazonal time half of the sum of time nearest 3 zones
					MW[173]=MW[173]+MI.1.1+MI.1.2  ; add terminal time
			ENDPHASE
		ENDRUN

		; Create skims for only the internal zones
		RUN PGM=MATRIX
			MATI[1]=sov_1_free_@PER@.skm
			MATI[2]=hov2_1_free_@PER@.skm
			MATI[3]=hov3_1_free_@PER@.skm
			MATI[4]=sov_1_toll_@PER@.skm
			MATI[5]=hov2_1_toll_@PER@.skm
			MATI[6]=hov3_1_toll_@PER@.skm
			MATO[1]=sov_free_@PER@.skm, MO=11-13, NAME=TOLL,DISTANCE,TIME
			MATO[2]=hov2_free_@PER@.skm, MO=21-23, NAME=TOLL,DISTANCE,TIME
			MATO[3]=hov3_free_@PER@.skm, MO=31-33, NAME=TOLL,DISTANCE,TIME
			MATO[4]=sov_toll_@PER@.skm, MO=41-44, NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
			MATO[5]=hov2_toll_@PER@.skm, MO=51-54, NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE
			MATO[6]=hov3_toll_@PER@.skm, MO=61-64, NAME=TOLL,DISTANCE,TIME,TOLLDISTANCE

			ZONES={lastin}
			ZONEMSG=100
	
			; Cube Cluster Controls
			DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

			FILLMW MW[11]=MI.1.1,2,3
			FILLMW MW[21]=MI.2.1,2,3
			FILLMW MW[31]=MI.3.1,2,3
			FILLMW MW[41]=MI.4.1,2,3,4
			FILLMW MW[51]=MI.5.1,2,3,4
			FILLMW MW[61]=MI.6.1,2,3,4
		ENDRUN

		; Save before assignment skim for convergence checking
		*copy sov_1_free_@PER@.skm @PER@{year}HWY.SKM
	ENDLOOP

:CheckTrnSkims
IF({chkTrS.n}=0) goto :checkAccess

	;CALCULATE BUS SPEED AND ENTER INTO HIGHWAY NETWORK
	;AM PEAK PERIOD
	LOOP N=1,5
		IF(N=1) PER='EA'
		IF(N=2) PER='AM'
		IF(N=3) PER='MD'
		IF(N=4) PER='PM'
		IF(N=5) PER='EV'
 
		;CALCULATE BUS SPEED AND ENTER INTO HIGHWAY NETWORK
		;AM PEAK PERIOD
		RUN PGM=NETWORK
			FILEI NETI[1]=LOD{year}@PER@.NET
			FILEO NETO=ARC{year}@PER@_TRN.NET

			linkclass=factype+1                 ; Modified for the new facility type
			;recompute cgstdspd based on time_1 (time_1 averaged during feedback)
			IF(time_1 > 0)
				CGSTDSPD=DISTANCE / TIME_1 * 60
			ENDIF

			IF(Time_1=0 || distance=0)         ; TO avoid divided by 0 due to highway coding    
				BUSTIME=Time_1
				CGSTDSPD=0
				BUSSPD=0
			ELSE 
				BUSSPD=(CGSTDSPD)  ;BUSSPEED

			;check bus speeds against user input minimum and maximum speeds
			;reset speeds if user specified criteria not met
				IF(MAXBUSSPD>0)
					IF(BUSSPD > MAXBUSSPD)
						BUSSPD = MAXBUSSPD
						BUSTIME = DISTANCE/BUSSPD*60
					ENDIF
				ELSEIF(MINBUSSPD>0)
					IF(BUSSPD < MINBUSSPD)
						BUSSPD = MINBUSSPD
						BUSTIME = DISTANCE/BUSSPD*60
					ENDIF
				ENDIF

				IF(SIGNALIMPR=1) BUSSPD=BUSSPD*1.1          ;Signal priority for buses traveling on surface streets

				IF(BUSSPD>0)                                ;WHEN BUS SPEED=0, SET BUS TIME TO 0                                 
					BUSTIME=DISTANCE/BUSSPD*60
				ELSE
					BUSTIME=0
				ENDIF
			ENDIF

			IF(FACTYPE= 50)
				BUSSPD=12
				BUSTIME=DISTANCE/BUSSPD*60
				Time_1=DISTANCE/BUSSPD*60
				Time1=DISTANCE/BUSSPD*60
				EACapacity=0
				AMCapacity=0
				MDCapacity=0
				PMCapacity=0
				EVCapacity=0
			ELSEIF(FACTYPE = 51,52,53,55,98,99)
				BUSSPD=20
				BUSTIME=DISTANCE/BUSSPD*60
				Time_1=DISTANCE/BUSSPD*60
				Time1=DISTANCE/BUSSPD*60
				EACapacity=0
				AMCapacity=0
				MDCapacity=0
				PMCapacity=0
				EVCapacity=0
			ENDIF

			;manually coded TRNTIME
			IF(TRNTIME>0)
				BUSTIME=TRNTIME
				TIME1=TRNTIME
				TIME_1=TRNTIME
				BUSSPD=TRNDIST/BUSTIME*60
			ENDIF
		ENDRUN
	ENDLOOP

	;Enter max NT legs (default = 5)
	WALK_NTMAX = 99
	KNR_NTMAX = 99

	;EARLY AM - TRANSIT SKIMS
	DistributeMULTISTEP ProcessID='ARC', ProcessNum=1
	;EARLY AM Walk All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EA_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_ALLTRN_WLK_EA.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_WLK_EA.RTE
		REPORTO=PT_WLK_ALLTRN_WLK_REPORT_EA.PRN
		NETO=PT_WLK_ALLTRN_WLK_EA.NET
		NTLEGO=WALK_NTLEGS_EA.DAT
		
		;EARLY AM - USE PERIOD 1
		PARAMETERS HDWAYPERIOD=1,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS (between stops - not explicitly coded in network)
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access & fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                               ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                               ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                              ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                 ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP
	
	DistributeMULTISTEP ProcessID='ARC', ProcessNum=2
	;Early AM Walk Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EA_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_PRMTRN_WLK_EA.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_WLK_EA.RTE
		REPORTO=PT_WLK_PRMTRN_WLK_REPORT_EA.PRN
		NETO=PT_WLK_PRMTRN_WLK_EA.NET
		
		;EARLY AM - USE PERIOD 1
		PARAMETERS HDWAYPERIOD=1,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                       ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=3
	;EARLY AM KNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EA_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=KNR_ALLTRN_WLK_EA.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=KNR_ALLTRN_WLK_EA.RTE
		REPORTO=PT_KNR_ALLTRN_WLK_REPORT_EA.PRN
		NETO=PT_KNR_ALLTRN_WLK_EA.NET

		;EARLY AM - USE PERIOD 1
		PARAMETERS HDWAYPERIOD=1,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR TO TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=99)   ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=4
	;EARLY AM KNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EA_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=KNR_PRMTRN_WLK_EA.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=KNR_PRMTRN_WLK_EA.RTE
		REPORTO=PT_KNR_PRMTRN_WLK_REPORT_EA.PRN
		NETO=PT_KNR_PRMTRN_WLK_EA.NET
		NTLEGO=NT_LEGS_KNR_PRMTRN_WLK_EA.PRN
		
		;EARLY AM - USE PERIOD 1
		PARAMETERS HDWAYPERIOD=1,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR TO TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=99)    ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=5
	;EARLY AM PNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EA_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR.DAT
		MATO[1]=PNR_ALLTRN_WLK_EA.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=PNR_ALLTRN_WLK_EA.RTE
		REPORTO=PT_PNR_ALLTRN_WLK_REPORT_EA.PRN
		NETO=PT_PNR_ALLTRN_WLK_EA.NET

		;EARLY AM - USE PERIOD 1
		PARAMETERS HDWAYPERIOD=1,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE TO PNR LOT
			READ FILE=PT_PNR.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=6
	;EARLY AM PNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EA_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR.DAT
		MATO[1]=PNR_PRMTRN_WLK_EA.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=PNR_PRMTRN_WLK_EA.RTE
		REPORTO=PT_PNR_PRMTRN_WLK_REPORT_EA.PRN
		NETO=PT_PNR_PRMTRN_WLK_EA.NET

		;EARLY AM - USE PERIOD 1
		PARAMETERS HDWAYPERIOD=1,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE TO PNR LOT
			READ FILE=PT_PNR.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	;AM PEAK - TRANSIT SKIMS
	DistributeMULTISTEP ProcessID='ARC', ProcessNum=7
	;AM Peak Walk All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}AM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_ALLTRN_WLK_AM.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_WLK_AM.RTE
		REPORTO=PT_WLK_ALLTRN_WLK_REPORT_AM.PRN
		NETO=PT_WLK_ALLTRN_WLK_AM.NET
		NTLEGO=WALK_NTLEGS_AM.DAT
		
		;AM PEAK - USE PERIOD 2
		PARAMETERS HDWAYPERIOD=2,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS (between stops - not explicitly coded in network)
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access & fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                               ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                               ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                              ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                 ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=8
	;AM Peak Walk Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}AM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_PRMTRN_WLK_AM.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_WLK_AM.RTE
		REPORTO=PT_WLK_PRMTRN_WLK_REPORT_AM.PRN
		NETO=PT_WLK_PRMTRN_WLK_AM.NET
		
		;AM PEAK - USE PERIOD 2
		PARAMETERS HDWAYPERIOD=2,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                       ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=9
	;AM Peak KNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}AM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=KNR_ALLTRN_WLK_AM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=KNR_ALLTRN_WLK_AM.RTE
		REPORTO=PT_KNR_ALLTRN_WLK_REPORT_AM.PRN
		NETO=PT_KNR_ALLTRN_WLK_AM.NET

		;AM PEAK - USE PERIOD 2
		PARAMETERS HDWAYPERIOD=2,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR TO TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=99)   ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=10
	;AM Peak KNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}AM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=KNR_PRMTRN_WLK_AM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=KNR_PRMTRN_WLK_AM.RTE
		REPORTO=PT_KNR_PRMTRN_WLK_REPORT_AM.PRN
		NETO=PT_KNR_PRMTRN_WLK_AM.NET
		NTLEGO=NT_LEGS_KNR_PRMTRN_WLK_AM.PRN
		
		;AM PEAK - USE PERIOD 2
		PARAMETERS HDWAYPERIOD=2,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR TO TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=99)    ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=11
	;AM Peak PNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}AM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR.DAT
		MATO[1]=PNR_ALLTRN_WLK_AM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=PNR_ALLTRN_WLK_AM.RTE
		REPORTO=PT_PNR_ALLTRN_WLK_REPORT_AM.PRN
		NETO=PT_PNR_ALLTRN_WLK_AM.NET

		;AM PEAK - USE PERIOD 2
		PARAMETERS HDWAYPERIOD=2,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE TO PNR LOT
			READ FILE=PT_PNR.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=12
	;AM Peak PNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}AM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR.DAT
		MATO[1]=PNR_PRMTRN_WLK_AM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=PNR_PRMTRN_WLK_AM.RTE
		REPORTO=PT_PNR_PRMTRN_WLK_REPORT_AM.PRN
		NETO=PT_PNR_PRMTRN_WLK_AM.NET

		;AM PEAK - USE PERIOD 2
		PARAMETERS HDWAYPERIOD=2,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE TO PNR LOT
			READ FILE=PT_PNR.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP
	;END AM PEAK TRANSIT SKIMS

	;MD - TRANSIT SKIMS
	DistributeMULTISTEP ProcessID='ARC', ProcessNum=13
	;MD Walk All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_ALLTRN_WLK_MD.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_WLK_MD.RTE
		REPORTO=PT_WLK_ALLTRN_WLK_REPORT_MD.PRN
		NETO=PT_WLK_ALLTRN_WLK_MD.NET
		NTLEGO=WALK_NTLEGS_MD.DAT
		
		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS (between stops - not explicitly coded in network)
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access & fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                               ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                               ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                              ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                 ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=14
	;MD Walk Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_PRMTRN_WLK_MD.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_WLK_MD.RTE
		REPORTO=PT_WLK_PRMTRN_WLK_REPORT_MD.PRN
		NETO=PT_WLK_PRMTRN_WLK_MD.NET
		
		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                       ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=15
	;MD KNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=KNR_ALLTRN_WLK_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=KNR_ALLTRN_WLK_MD.RTE
		REPORTO=PT_KNR_ALLTRN_WLK_REPORT_MD.PRN
		NETO=PT_KNR_ALLTRN_WLK_MD.NET

		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR TO TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=99)   ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=16
	;MD KNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=KNR_PRMTRN_WLK_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=KNR_PRMTRN_WLK_MD.RTE
		REPORTO=PT_KNR_PRMTRN_WLK_REPORT_MD.PRN
		NETO=PT_KNR_PRMTRN_WLK_MD.NET
		NTLEGO=NT_LEGS_KNR_PRMTRN_WLK_MD.PRN
		
		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR TO TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=99)    ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=17
	;MD PNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR.DAT
		MATO[1]=PNR_ALLTRN_WLK_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=PNR_ALLTRN_WLK_MD.RTE
		REPORTO=PT_PNR_ALLTRN_WLK_REPORT_MD.PRN
		NETO=PT_PNR_ALLTRN_WLK_MD.NET

		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE TO PNR LOT
			READ FILE=PT_PNR.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=18
	;MD PNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR.DAT
		MATO[1]=PNR_PRMTRN_WLK_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=PNR_PRMTRN_WLK_MD.RTE
		REPORTO=PT_PNR_PRMTRN_WLK_REPORT_MD.PRN
		NETO=PT_PNR_PRMTRN_WLK_MD.NET

		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE TO PNR LOT
			READ FILE=PT_PNR.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=19
	;MD KNR All Transit - INBOUND
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_ALLTRN_KNR_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_KNR_MD.RTE
		REPORTO=PT_WLK_ALLTRN_KNR_REPORT_MD.PRN
		NETO=PT_WLK_ALLTRN_KNR_MD.NET

		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR FROM TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=99)   ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=20
	;MD KNR Premium Only - INBOUND
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_PRMTRN_KNR_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_KNR_MD.RTE
		REPORTO=PT_WLK_PRMTRN_KNR_REPORT_MD.PRN
		NETO=PT_WLK_PRMTRN_KNR_MD.NET
		NTLEGO=NT_LEGS_WLK_PRMTRN_KNR_MD.PRN
		
		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR FROM TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=99)    ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=21
	;MD PNR All Transit - INBOUND
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR_INBOUND.DAT
		MATO[1]=WLK_ALLTRN_PNR_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_PNR_MD.RTE
		REPORTO=PT_WLK_ALLTRN_PNR_REPORT_MD.PRN
		NETO=PT_WLK_ALLTRN_PNR_MD.NET

		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE FROM PNR LOT
			READ FILE=PT_PNR_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=22
	;MD PNR Premium Only - INBOUND
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}MD_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR_INBOUND.DAT
		MATO[1]=WLK_PRMTRN_PNR_MD.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_PNR_MD.RTE
		REPORTO=PT_WLK_PRMTRN_PNR_REPORT_MD.PRN
		NETO=PT_WLK_PRMTRN_PNR_MD.NET

		;MD - USE PERIOD 3
		PARAMETERS HDWAYPERIOD=3,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE FROM PNR LOT
			READ FILE=PT_PNR_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP
	;END MD TRANSIT SKIMS

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=23
	;PM PEAK - TRANSIT SKIMS
	;PM Peak Walk All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}PM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_ALLTRN_WLK_PM.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_WLK_PM.RTE
		REPORTO=PT_WLK_ALLTRN_WLK_REPORT_PM.PRN
		NETO=PT_WLK_ALLTRN_WLK_PM.NET
		NTLEGO=WALK_NTLEGS_PM.DAT
		
		;PM PEAK - USE PERIOD 4
		PARAMETERS HDWAYPERIOD=4,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS (between stops - not explicitly coded in network)
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access & fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                               ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                               ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                              ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                 ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=24
	;PM Peak Walk Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}PM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_PRMTRN_WLK_PM.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_WLK_PM.RTE
		REPORTO=PT_WLK_PRMTRN_WLK_REPORT_PM.PRN
		NETO=PT_WLK_PRMTRN_WLK_PM.NET
		
		;PM PEAK - USE PERIOD 4
		PARAMETERS HDWAYPERIOD=4,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                       ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=25
	;PM Peak KNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}PM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_ALLTRN_KNR_PM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_KNR_PM.RTE
		REPORTO=PT_WLK_ALLTRN_KNR_REPORT_PM.PRN
		NETO=PT_WLK_ALLTRN_KNR_PM.NET

		;PM PEAK - USE PERIOD 4
		PARAMETERS HDWAYPERIOD=4,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR FROM TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=99)   ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=26
	;PM Peak KNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}PM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_KNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_PRMTRN_KNR_PM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_KNR_PM.RTE
		REPORTO=PT_WLK_PRMTRN_KNR_REPORT_PM.PRN
		NETO=PT_WLK_PRMTRN_KNR_PM.NET
		NTLEGO=NT_LEGS_WLK_PRMTRN_KNR_PM.PRN
		
		;PM PEAK - USE PERIOD 4
		PARAMETERS HDWAYPERIOD=4,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			GENERATE, ; KNR FROM TRANSIT STOPS
				NTLEGMODE=2,
				COST=LI.DISTANCE,EXTRACTCOST=LI.TIME_1,
				MAXCOST=999*10,MAXNTLEGS=999*@KNR_NTMAX@,ONEWAY=T,DIRECTION=2,EXCLUDELINK=(LI.FACTYPE=99)    ;fixed transit guideway links
		
			; KNR TO TRANSIT STATIONS
			READ FILE=KNR_STATION_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=27
	;PM Peak PNR All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}PM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR_INBOUND.DAT
		MATO[1]=WLK_ALLTRN_PNR_PM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_PNR_PM.RTE
		REPORTO=PT_WLK_ALLTRN_PNR_REPORT_PM.PRN
		NETO=PT_WLK_ALLTRN_PNR_PM.NET

		;PM PEAK - USE PERIOD 4
		PARAMETERS HDWAYPERIOD=4,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE FROM PNR LOT
			READ FILE=PT_PNR_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=28
	;PM Peak PNR Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}PM_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_PNR_INBOUND.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		NTLEGI[2]=PT_PNR_INBOUND.DAT
		MATO[1]=WLK_PRMTRN_PNR_PM.SKM,MO=1-16,NAME=WALK,AUTO,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,DRVDIST,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_PNR_PM.RTE
		REPORTO=PT_WLK_PRMTRN_PNR_REPORT_PM.PRN
		NETO=PT_WLK_PRMTRN_PNR_PM.NET

		;PM PEAK - USE PERIOD 4
		PARAMETERS HDWAYPERIOD=4,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=T,DIRECTION=1,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; DRIVE FROM PNR LOT
			READ FILE=PT_PNR_INBOUND.DAT

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=TIMEA(0,2)+TIMEA(0,3)             ;KNR/PNR ACCESS TIME
			MW[3]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[4]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[5]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84) ;LOCAL BUS IVT
			MW[6]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)              ;EXPRESS BUS IVT
			MW[7]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)              ;HEAVY RAIL IVT
			MW[8]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98)  ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[9]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)              ;LRT IVT
			MW[10]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[11]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[12]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[13]=DIST(0,2)+DIST(0,3)                                                                              ;KNR/PNR ACCESS DISTANCE
			MW[14]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[15]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[16]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP
	;END PM PEAK TRANSIT SKIMS

	;EVENING - TRANSIT SKIMS
	DistributeMULTISTEP ProcessID='ARC', ProcessNum=29
	;EVENING Walk All Transit
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EV_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		LINEI[2]=INPUTS\ARC_20{year}.gdb\NonPremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_ALLTRN_WLK_EV.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_ALLTRN_WLK_EV.RTE
		REPORTO=PT_WLK_ALLTRN_WLK_REPORT_EV.PRN
		NETO=PT_WLK_ALLTRN_WLK_EV.NET
		NTLEGO=WALK_NTLEGS_EV.DAT
		
		;EVENING - USE PERIOD 5
		PARAMETERS HDWAYPERIOD=5,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS (between stops - not explicitly coded in network)
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access & fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                      ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                               ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                               ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                              ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                 ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP

	DistributeMULTISTEP ProcessID='ARC', ProcessNum=30
	;EVENING Walk Premium Only
	RUN PGM=PUBLIC TRANSPORT
		NETI=ARC{year}EV_TRN.NET
		LINEI[1]=INPUTS\arc_20{year}.gdb\PremiumTrn{year}
		FACTORI[1]=PARAMETERS\TRANSIT_WALK.FAC
		SYSTEMI=PARAMETERS\TRANSIT_SYSTEM.DAT
		FAREI=PARAMETERS\TRANSIT_FARES.FAR
		NTLEGI[1]=STATION_ACCESS.DAT
		MATO[1]=WLK_PRMTRN_WLK_EV.SKM,MO=1-14,NAME=WALK,IWAIT,XWAIT,LOCAL,XBUS,HRT,BRT,LRT,COMRAIL,BRDS,FARE,XPEN,IVT,DIST
		ROUTEO[1]=WLK_PRMTRN_WLK_EV.RTE
		REPORTO=PT_WLK_PRMTRN_WLK_REPORT_EV.PRN
		NETO=PT_WLK_PRMTRN_WLK_EV.NET
		
		;EVENING - USE PERIOD 5
		PARAMETERS HDWAYPERIOD=5,
			TRANTIME[1]=LI.WALKTIME,
			TRANTIME[2]=LI.TIME_1,
			TRANTIME[3]=LI.TIME_1,
			TRANTIME[4]=LI.WALKTIME,
			TRANTIME[5]=LI.WALKTIME,
			TRANTIME[14]=LI.BUSTIME,
			TRANTIME[15]=LI.TRNTIME,
			TRANTIME[16]=LI.BUSTIME,
			TRANTIME[17]=LI.BUSTIME,
			TRANTIME[18]=LI.BUSTIME,
			TRANTIME[24]=LI.BUSTIME,
			TRANTIME[25]=LI.TRNTIME,
			TRANTIME[26]=LI.BUSTIME,
			TRANTIME[27]=LI.BUSTIME,
			TRANTIME[28]=LI.BUSTIME,
			TRANTIME[34]=LI.BUSTIME,
			TRANTIME[35]=LI.TRNTIME,
			TRANTIME[36]=LI.BUSTIME,
			TRANTIME[37]=LI.BUSTIME,
			TRANTIME[38]=LI.BUSTIME,
			TRANTIME[44]=LI.BUSTIME,
			TRANTIME[45]=LI.TRNTIME,
			TRANTIME[46]=LI.BUSTIME,
			TRANTIME[47]=LI.BUSTIME,
			TRANTIME[48]=LI.BUSTIME,
			TRANTIME[54]=LI.BUSTIME,
			TRANTIME[55]=LI.TRNTIME,
			TRANTIME[56]=LI.BUSTIME,
			TRANTIME[57]=LI.BUSTIME,
			TRANTIME[58]=LI.BUSTIME,
			TRANTIME[59]=LI.TRNTIME,
			TRANTIME[64]=LI.BUSTIME,
			TRANTIME[65]=LI.TRNTIME,
			TRANTIME[66]=LI.BUSTIME,
			TRANTIME[67]=LI.BUSTIME,
			TRANTIME[68]=LI.BUSTIME,
			TRANTIME[74]=LI.BUSTIME,
			TRANTIME[75]=LI.TRNTIME,
			TRANTIME[76]=LI.BUSTIME,
			TRANTIME[77]=LI.BUSTIME,
			TRANTIME[78]=LI.BUSTIME,
			TRANTIME[84]=LI.BUSTIME,
			TRANTIME[85]=LI.TRNTIME,
			TRANTIME[86]=LI.BUSTIME,
			TRANTIME[87]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[88]=LI.BUSTIME,
			TRANTIME[98]=LI.BUSTIME,
			TRANTIME[100]=LI.BUSTIME,
			USERCLASSES=1

		PHASE=NODEREAD
			MAXNODE=MAX(1,NI.N)
		ENDPHASE

		; BUILD TRANSIT SUPPORT LINKS ===========================
		PHASE=DATAPREP
			NUMZONES1={totzones}+1

			GENERATE, ; TRANSFER LINKS
				NTLEGMODE=5,
				COST=LI.WALKTIME,
				MAXCOST=999*2.4,  ;2.4 MINUTES = 0.10 MILES @ 2.5 MPH
				FROMNODE=NUMZONES1-MAXNODE,TONODE=NUMZONES1-MAXNODE

			GENERATE, ; WALK TO/FROM TRANSIT
				NTLEGMODE=1,
				COST=LI.WALKTIME,
				; 3.0 (72 MIN) MILES @ 2.5 MPH
				MAXCOST=999*72,MAXNTLEGS=999*@WALK_NTMAX@,ONEWAY=F,DIRECTION=3,EXCLUDELINK=(LI.FACTYPE=1-9,99)   ;restricted access and fixed transit guideway links

			; STATION PLATFORMS
			GENERATE,
				READNTLEGI=1
		ENDPHASE

		;TRANSIT SKIMS
		PHASE=SKIMIJ
			MW[1]=TIMEA(0,1)+TIMEA(0,4)+TIMEA(0,5)  ;WALK ACCESS/EGRESS + STATION ACCESS TIME + TRANSFER WALK TIME
			MW[2]=IWAITA(0)              ;INITIAL WAIT TIME
			MW[3]=XWAITA(0)              ;TRANSFER WAIT TIME
			MW[4]=TIMEA(0,100)+ TIMEA(0,14)+TIMEA(0,24)+TIMEA(0,34)+TIMEA(0,44)+TIMEA(0,54)+TIMEA(0,64)+TIMEA(0,74)+TIMEA(0,84);LOCAL BUS IVT
			MW[5]=TIMEA(0,16)+ TIMEA(0,26)+TIMEA(0,36)+TIMEA(0,46)+TIMEA(0,56)+TIMEA(0,66)+TIMEA(0,76)+TIMEA(0,86)             ;EXPRESS BUS IVT
			MW[6]=TIMEA(0,15)+ TIMEA(0,25)+TIMEA(0,35)+TIMEA(0,45)+TIMEA(0,55)+TIMEA(0,65)+TIMEA(0,75)+TIMEA(0,85)             ;HEAVY RAIL IVT
			MW[7]=TIMEA(0,18)+ TIMEA(0,28)+TIMEA(0,38)+TIMEA(0,48)+TIMEA(0,58)+TIMEA(0,68)+TIMEA(0,78)+TIMEA(0,88)+TIMEA(0,98) ;PREMIUM BRT IVT (jln 10/13/16 - add mode 88)
			MW[8]=TIMEA(0,17)+ TIMEA(0,27)+TIMEA(0,37)+TIMEA(0,47)+TIMEA(0,57)+TIMEA(0,67)+TIMEA(0,77)+TIMEA(0,87)             ;LRT IVT
			MW[9]=TIMEA(0,59)                                                                                       ;COMMUTER RAIL IVT
			MW[10]=BRDINGS(0,TMODES)                                                                                ;BOARDINGS
			MW[11]=FAREA(0,ALLMODES)                                                                                ;FARE
			MW[12]=XFERPENA(0,TMODES)                                                                               ;MODE TO MODE XFER PEN
			MW[13]=TIMEA(0,TMODES)                                                                                  ;IVT TRANSIT MODES
			MW[14]=DIST(0,ALLMODES)     ;DISTANCE ALL TRANSIT MODES
		ENDPHASE
	ENDRUN
	EndDistributeMULTISTEP
	;END EVENING TRANSIT SKIMS

	Wait4Files Files=ARC1.script.end,ARC2.script.end,ARC3.script.end,ARC4.script.end,ARC5.script.end,ARC6.script.end,
                ARC7.script.end,ARC8.script.end,ARC9.script.end,ARC10.script.end,ARC11.script.end,ARC12.script.end,
                ARC13.script.end,ARC14.script.end,ARC15.script.end,ARC16.script.end,ARC17.script.end,ARC18.script.end,
                ARC19.script.end,ARC20.script.end,ARC21.script.end,ARC22.script.end,ARC23.script.end,ARC24.script.end,
                ARC25.script.end,ARC26.script.end,ARC27.script.end,ARC28.script.end,ARC29.script.end,ARC30.script.end

:CheckAccess
IF({chkAccess.n}=0) goto :CheckIEAP

	; Calculate retail employment accessible within 30 minutes by premium rail
	RUN PGM=MATRIX
		MATI[1] = WLK_PRMTRN_WLK_MD.SKM  ;Read in walk premium transit skim
		ZDATI   = ZoneData.dbf,z=ZONE    ;Read in the zonal data
	   
		; Set rail time buffer to calculate retail employment [30 miles]
		_maxHRTTime = 30.0
	   
		; Write file header
		IF(i==1)
			list = "taz,RetailEmp30", file=RetEmp30.csv
		ENDIF 
	   
		; initialize origin loop sum
		sumRetail30 = 0.0
	   
		;Get total transit travel time
		;Walk Premium
		MW[11]=MI.1.IVT+MI.1.WALK+MI.1.IWAIT+MI.1.XWAIT
		MW[12]=MI.1.HRT

		; Loop through each destination
		JLOOP
			; Destination zone retail employment for zone j
			retailEmp = ZI.1.RETAIL[j]
		 
			;Initialize to zero
			trRetail = 0.0
		 
			;Rail time to destination zone
			hrtTime = MW[12]
		 
			IF(hrtTime>0)
				IF(MW[11]<=_maxHRTTime)
					trRetail = retailEmp
				ENDIF 
			ENDIF
		 
			; Sum the employment
			sumRetail30 = sumRetail30 + trRetail
		ENDJLOOP

		IF  (I<={lastin})   ;only write out internal zones
			; write out the data
			list = i(8.0),",",sumRetail30(15.4), file=RetEmp30.csv
		ENDIF
	ENDRUN

	; Create Accessibility File
	RUN PGM=MATRIX
		MATI[1] = sov_free_am.skm
		MATI[2] = sov_free_md.skm
		MATI[3] = wlk_alltrn_wlk_am.skm  ;wlklpk.skm
		MATI[4] = wlk_alltrn_wlk_md.skm  ;wlklop.skm
		MATI[5] = wlk_prmtrn_wlk_am.skm  ;wlkppk.skm
		MATI[6] = wlk_prmtrn_wlk_md.skm  ;wlkpop.skm
		ZDATI   = ZoneData.dbf,z=ZONE

		; set debug values (_debug=1 is on switch)
		_debug = 1
		_debugOrig = 5
		_debugDest = 6
	   
		; set the dispersion parameters
		_kAuto = -0.05
		_kTran = -0.05
		_kWalk = -1.0
	   
		; set maximum non-motorized distance
		_maxNmDistance = 3.0
	   
		; write header
		IF(i==1)
			list = "taz,autoPeakRetail,autoPeakTotal,autoOffPeakRetail,autoOffPeakTotal,transitPeakRetail,transitPeakTotal,transitOffPeakRetail,transitOffPeakTotal,nonMotorizedRetail,nonMotorizedTotal", 
				file=accessibility.csv
		ENDIF 
	   
		; initialize origin loop sum
		sumAuPkRetail = 0.0
		sumAuPkTotal = 0.0
		sumAuOpRetail = 0.0
		sumAuOpTotal = 0.0
		sumTrPkRetail = 0.0
		sumTrPkTotal = 0.0
		sumTrOpRetail = 0.0
		sumTrOpTotal = 0.0
		sumNmRetail = 0.0
		sumNmTotal = 0.0
	   
		;tabulate transit tables by OVT/IVT
		;AM - ALL TRANSIT
		MW[31]=MI.3.WALK+MI.3.IWAIT+MI.3.XWAIT                                           ;AM OVT
		MW[32]=MI.3.WALK.T+MI.3.IWAIT.T+MI.3.XWAIT.T                                     ;AM OVT - TRANSPOSED
		MW[33]=MI.3.LOCAL+MI.3.XBUS+MI.3.HRT+MI.3.BRT+MI.3.LRT+MI.3.COMRAIL              ;AM IVT   
		MW[34]=MI.3.LOCAL.T+MI.3.XBUS.T+MI.3.HRT.T+MI.3.BRT.T+MI.3.LRT.T+MI.3.COMRAIL.T  ;AM IVT - TRANSPOSED
		;MD - ALL TRANSIT
		MW[41]=MI.4.WALK+MI.4.IWAIT+MI.4.XWAIT                                           ;MD OVT
		MW[42]=MI.4.WALK.T+MI.4.IWAIT.T+MI.4.XWAIT.T                                     ;MD OVT - TRANSPOSED
		MW[43]=MI.4.LOCAL+MI.4.XBUS+MI.4.HRT+MI.4.BRT+MI.4.LRT+MI.4.COMRAIL              ;MD IVT   
		MW[44]=MI.4.LOCAL.T+MI.4.XBUS.T+MI.4.HRT.T+MI.4.BRT.T+MI.4.LRT.T+MI.4.COMRAIL.T  ;MD IVT - TRANSPOSED
		;AM - PREMIUM TRANSIT
		MW[51]=MI.5.WALK+MI.5.IWAIT+MI.5.XWAIT                                           ;AM OVT
		MW[52]=MI.5.WALK.T+MI.5.IWAIT.T+MI.5.XWAIT.T                                     ;AM OVT - TRANSPOSED
		MW[53]=MI.5.LOCAL+MI.5.XBUS+MI.5.HRT+MI.5.BRT+MI.5.LRT+MI.5.COMRAIL              ;AM IVT   
		MW[54]=MI.5.LOCAL.T+MI.5.XBUS.T+MI.5.HRT.T+MI.5.BRT.T+MI.5.LRT.T+MI.5.COMRAIL.T  ;AM IVT - TRANSPOSED
		;MD - PREMIUM TRANSIT
		MW[61]=MI.6.WALK+MI.6.IWAIT+MI.6.XWAIT                                           ;MD OVT
		MW[62]=MI.6.WALK.T+MI.6.IWAIT.T+MI.6.XWAIT.T                                     ;MD OVT - TRANSPOSED
		MW[63]=MI.6.LOCAL+MI.6.XBUS+MI.6.HRT+MI.6.BRT+MI.6.LRT+MI.6.COMRAIL              ;MD IVT   
		MW[64]=MI.6.LOCAL.T+MI.6.XBUS.T+MI.6.HRT.T+MI.6.BRT.T+MI.6.LRT.T+MI.6.COMRAIL.T  ;MD IVT - TRANSPOSED
	   
		; loop through each destinaton
		JLOOP
			; get the destination zone retail employment from dbf file
			retailEmp = ZI.1.RETAIL[j] + ZI.1.SERVICE[j]
			totalEmp = ZI.1.EMP[j]
		 
			;default values
			auPkRetail = 0.0
			auOpRetail = 0.0
			trPkRetail = 0.0
			trOpRetail = 0.0
			nmRetail = 0.0
			auPkTotal = 0.0
			auOpTotal = 0.0
			trPkTotal = 0.0
			trOpTotal = 0.0
			nmTotal = 0.0

			; auto - tables are: (1=toll, 2=distance, 3=time)
			auPkTime = (MI.1.time[j] + MI.1.time.T[j]) ;/100.0
			auOpTime = (MI.2.time[j] + MI.2.time.T[j]) ;/100.0
			auPkRetail = retailEmp * exp(_kAuto * auPkTime)
			auOpRetail = retailEmp * exp(_kAuto * auOpTime)
			auPkTotal = totalEmp * exp(_kAuto * auPkTime)
			auOpTotal = totalEmp * exp(_kAuto * auOpTime)
			
			; transit - tables are: 1=wlkt 2=autt 3=iwait 4=xwait 5=loc 6=artexp 7=artbrt 8=rail 9=xbus 
			; 10=pbrt 11=crail 12=xfers 13=fare 14=tottime 15=xferwt 16=firstmode 17=farelinks 18=premflag 19=trnivt 20=dist 21=trndist
			
			; transit - tables are: 1=walk 2=iwait 3=xwait 4=local 5=xbus 6=hrt 7=brt 8=lrt 9=comrail 10=brds 11=fare 12=xpen 13=ivt

			; am peak transit
			ltt = 2*(MW[31]+MW[32]) + (MW[33]+MW[34])   ;2*OVT + IVT
			ptt = 2*(MW[51]+MW[52]) + (MW[53]+MW[54])   ;2*OVT + IVT
			
			ltt2= MW[31]+MW[32]+MW[33]+MW[34]   ;OVT + IVT
			ptt2= MW[51]+MW[52]+MW[53]+MW[54]   ;OVT + IVT

			IF(ltt>0) 
				IF(ltt<ptt)
					trPkRetail = retailEmp * exp(_kTran * ltt2) ;/100.0)
					trPkTotal = totalEmp * exp(_kTran * ltt2) ;/100.0)
				ENDIF
			ELSE
				IF(ptt>0)
					trPkRetail = retailEmp * exp(_kTran * ptt2) ;/100.0)
					trPkTotal = totalEmp * exp(_kTran * ptt2) ;/100.0)
				ENDIF
			ENDIF

			; midday transit
			lttop = 2*(MW[41]+MW[42]) + (MW[43]+MW[44])   ;2*OVT + IVT
			pttop = 2*(MW[61]+MW[62]) + (MW[63]+MW[64])   ;2*OVT + IVT
			
			ltt2op= MW[41]+MW[42]+MW[43]+MW[44]   ;OVT + IVT
			ptt2op= MW[61]+MW[62]+MW[63]+MW[64]   ;OVT + IVT
			
			IF(lttop>0) 
				IF(lttop<pttop)
					trOpRetail = retailEmp * exp(_kTran * ltt2op) ;/100.0)
					trOpTotal = totalEmp * exp(_kTran * ltt2op) ;/100.0)
				ENDIF
			ELSE
				IF(pttop>0)
					trOpRetail = retailEmp * exp(_kTran * ptt2op) ;/100.0)
					trOpTotal = totalEmp * exp(_kTran * ptt2op) ;/100.0)
				ENDIF
			ENDIF

			; walk
			nmDist = (MI.2.2[j] + MI.2.2.T[j]) ;/100.0
			IF(nmDist<=(_maxNmDistance * 2)) 
				nmRetail = retailEmp * exp(_kWalk * nmDist)
				nmTotal = totalEmp * exp(_kWalk * nmDist)
			ENDIF

			; debug
			IF(_debug==1 && i==_debugOrig && j==_debugDest)
				list = "Origin zone           = ",_debugOrig(15.2),file=accessibilityFile.debug
				list = "Destination zone      = ",_debugDest(15.2),file=accessibilityFile.debug
				list = "Retail/Service Emp    = ",retailEmp(15.2),file=accessibilityFile.debug
				list = "Total Emp             = ",totalEmp(15.2),file=accessibilityFile.debug
				list = " ",file=accessibilityFile.debug
				list = "Peak Auto time        = ",auPkTime(15.2),file=accessibilityFile.debug
				list = "Off-Peak Auto time    = ",auOpTime(15.2),file=accessibilityFile.debug
				list = "Peak Auto Retail accessibility  = ",auPkRetail(15.2),file=accessibilityFile.debug
				list = "Off-Peak Auto Retail accessibility  = ",auOpRetail(15.2),file=accessibilityFile.debug
				list = "Peak Auto Total accessibility  = ",auPkTotal(15.2),file=accessibilityFile.debug
				list = "Off-Peak Auto Total accessibility  = ",auOpTotal(15.2),file=accessibilityFile.debug
				list = "Peak Local Transit time     = ",ltt2(15.2),file=accessibilityFile.debug
				list = "Off-Peak Local Transit time     = ",ltt2op(15.2),file=accessibilityFile.debug
				list = "Peak Premium Transit time     = ",ptt2(15.2),file=accessibilityFile.debug
				list = "Off-Peak Premium Transit time     = ",ptt2op(15.2),file=accessibilityFile.debug
				list = "Peak Transit Retail accessibility = ",trPkRetail(15.2),file=accessibilityFile.debug
				list = "Off-Peak Transit Retail accessibility = ",trOpRetail(15.2),file=accessibilityFile.debug
				list = "Peak Transit Total accessibility = ",trPkTotal(15.2),file=accessibilityFile.debug
				list = "Off-Peak Transit Total accessibility = ",trOpTotal(15.2),file=accessibilityFile.debug
				list = "Non-motorized distance  = ",nmDist(15.2),file=accessibilityFile.debug
				list = "Non-motorized retail accessibility    = ",nmRetail(15.2),file=accessibilityFile.debug
				list = "Non-motorized total accessibility    = ",nmTotal(15.2),file=accessibilityFile.debug
			ENDIF
		 
			; sum the utilities
			sumAuPkRetail = sumAuPkRetail + auPkRetail
			sumAuPkTotal  = sumAuPkTotal  + auPkTotal
			sumAuOpRetail = sumAuOpRetail + auOpRetail
			sumAuOpTotal  = sumAuOpTotal  + auOpTotal
			sumTrPkRetail = sumTrPkRetail + trPkRetail
			sumTrPkTotal  = sumTrPkTotal  + trPkTotal
			sumTrOpRetail = sumTrOpRetail + trOpRetail
			sumTrOpTotal  = sumTrOpTotal  + trOpTotal
			sumNmRetail   = sumNmRetail   + nmRetail
			sumNmTotal    = sumNmTotal    + nmTotal
		ENDJLOOP
	   
		; compute the logsums
		IF(sumAuPkRetail>0.0) 
			lnAuPkRetail = ln(sumAuPkRetail)
		ELSE
			lnAuPkRetail = 0.0
		ENDIF
	   
		IF(sumAuPkTotal>0.0) 
			lnAuPkTotal = ln(sumAuPkTotal)
		ELSE
			lnAuPkTotal = 0.0
		ENDIF
	   
		IF(sumAuOpRetail>0.0) 
			lnAuOpRetail = ln(sumAuOpRetail)
		ELSE
			lnAuOpRetail = 0.0
		ENDIF
	   
		IF(sumAuOpTotal>0.0) 
			lnAuOpTotal = ln(sumAuOpTotal)
		ELSE
			lnAuOpTotal = 0.0
		ENDIF
	   
		IF(sumTrPkRetail>0.0) 
			lnTrPkRetail = ln(sumTrPkRetail)
		ELSE
			lnTrPkRetail = 0.0
		ENDIF
	   
		IF(sumTrPkTotal>0.0) 
			lnTrPkTotal = ln(sumTrPkTotal)
		ELSE
			lnTrPkTotal = 0.0
		ENDIF
	   
		IF(sumTrOpRetail>0.0) 
			lnTrOpRetail = ln(sumTrOpRetail)
		ELSE
			lnTrOpRetail = 0.0
		ENDIF
	   
		IF(sumTrOpTotal>0.0) 
			lnTrOpTotal = ln(sumTrOpTotal)
		ELSE
			lnTrOpTotal = 0.0
		ENDIF
	   
		IF(sumNmRetail>0.0) 
			lnNmRetail = ln(sumNmRetail)
		ELSE
			lnNmRetail = 0.0
		ENDIF
	   
		IF(sumNmTotal>0.0) 
			lnNmTotal = ln(sumNmTotal)
		ELSE
			lnNmTotal = 0.0
		ENDIF
	   
		; debug
		IF(_debug==1 && i==_debugOrig)
			list = " ",file=accessibilityFile.debug
			list = "Sum of Auto Peak Retail    = ",sumAuPkRetail(15.2),file=accessibilityFile.debug
			list = "LogSum Auto Peak Retail    = ",lnAuPkRetail(15.2),file=accessibilityFile.debug
			list = "Sum of Auto Off-Peak Retail    = ",sumAuOpRetail(15.2),file=accessibilityFile.debug
			list = "LogSum Auto Off-Peak Retail    = ",lnAuOpRetail(15.2),file=accessibilityFile.debug
			list = "Sum of Auto Peak Total    = ",sumAuPkTotal(15.2),file=accessibilityFile.debug
			list = "LogSum Auto Peak Total    = ",lnAuPkTotal(15.2),file=accessibilityFile.debug
			list = "Sum of Auto Off-Peak Total    = ",sumAuOpTotal(15.2),file=accessibilityFile.debug
			list = "LogSum Auto Off-Peak Total    = ",lnAuOpTotal(15.2),file=accessibilityFile.debug
			list = "Sum of Transit Peak Retail    = ",sumTrPkRetail(15.2),file=accessibilityFile.debug
			list = "LogSum Transit Peak Retail    = ",lnTrPkRetail(15.2),file=accessibilityFile.debug
			list = "Sum of Transit Off-Peak Retail    = ",sumTrOpRetail(15.2),file=accessibilityFile.debug
			list = "LogSum Transit Off-Peak Retail    = ",lnTrOpRetail(15.2),file=accessibilityFile.debug
			list = "Sum of Transit Peak Total    = ",sumTrPkTotal(15.2),file=accessibilityFile.debug
			list = "LogSum Transit Peak Total    = ",lnTrPkTotal(15.2),file=accessibilityFile.debug
			list = "Sum of Transit Off-Peak Total    = ",sumTrOpTotal(15.2),file=accessibilityFile.debug
			list = "LogSum Transit Off-Peak Total    = ",lnTrOpTotal(15.2),file=accessibilityFile.debug
			list = "Sum of Non-motorized Retail   = ",sumNmRetail(15.2),file=accessibilityFile.debug
			list = "LogSum Non-motorized Retail  = ",lnNmRetail(15.2),file=accessibilityFile.debug
			list = "Sum of Non-motorized Total   = ",sumNmTotal(15.2),file=accessibilityFile.debug
			list = "LogSum Non-motorized Total  = ",lnNmTotal(15.2),file=accessibilityFile.debug
		ENDIF

		IF(I<={lastin})   ;only write out internal zones
			; write out the data
			list = i(8.0),",",lnAuPkRetail(15.4),",",lnAuPkTotal(15.4),",",lnAuOpRetail(15.4),",",lnAuOpTotal(15.4), 
				",",lnTrPkRetail(15.4),",",lnTrPkTotal(15.4),",",lnTrOpRetail(15.4),",",lnTrOpTotal(15.4), 
				",",lnNmRetail(15.4),",",lnNmTotal(15.4), file=accessibility.csv
		ENDIF
	ENDRUN

:CheckIEAP
IF({chkIEAP.n}=0) goto :CheckCTRAMP

	;IE Trip Generation
	;create Tranplan format matrix for IE trip generation
	RUN PGM=MATRIX
		; times 100 to go back to TRANPLAN format
		MATI=sovff1_free.skm
		MATO[1]=SOVFFM{year}.SKM,format=tranplan,MO=1-3,DEC[3]=0,NAME=toll,distance,time
		ZONEMSG=100  

		MW[1]=MI.1.1*100
		MW[2]=MI.1.2*100
		MW[3]=MI.1.3*100                                                 
	ENDRUN

	;  Read in SOV skims, multiply ALL FACTORS BY 100 to match Tranplan files and write out in Tranplan format
	RUN PGM=MATRIX
	;   Use AM Peak hwy skims without terminal times & intrazonals
		MATI[1] = sov_1_free_am.skm    ;jln 2013
		MATI[2] = termtime.skm
		MATO=CSVAMM{year}.skm,format=tranplan,MO=1-3,NAME=toll,distance,time
		ZONES= {totzones}
		ZONEMSG=100  
	  
		MW[1]=MI.1.1*100
		MW[2]=MI.1.2*100
		MW[3]=MI.1.3*100 - MI.2.1 - MI.2.2
		INTRAZONAL MW[3] = 0
	ENDRUN

	RUN PGM=MATRIX msg = "Convert ext sta interstate flag"
		id = "Convert ext sta interstate flag
	  
		; External station interstate/non-interstate flag file (basic input)  
		RECI = parameters\iepcsta.dat, z = #1, intflag(C) = #2
	  
		; Cube can't deal with character data on zonal input.  Convert "I/N"
		;  character flag to "1/2". 1 = interstate, 2 = non-interstate.
		flag = 0
		IF(ri.intflag == 'I')
			flag = 1
		ELSE
			flag = 2
		ENDIF
		
		PRINT form=6,list=ri.z,flag, file=iepcsta.tmp
	ENDRUN

	RUN PGM=MATRIX msg = "Time from nearest external station"
		id = "Time from nearest external station
	  
		; Highway skims (calculated previously)
		MATI[1] = CSVAMM{year}.SKM
		MATI[2] = SOVFFM{year}.SKM

		; External station interstate/non-interstate numeric flag file (calculated above)  
		ZDATI[1] = iepcsta.tmp, z = #1, intflag = #2

		; Skip entire calculation for external stations
		IF(i >= {ext1}) continue
	  
		; get time matrices; exclude internal zones
		; We need to transpose the highway skims because the external model
		;  uses the time FROM the external stations TO the internal zones.
		;  Transposing makes the next step much more efficient.  Also convert
		;  from 0.01 minutes to whole minutes and round to integer in a way 
		;  that mimics the original program.
		MW[1] = int(MI.1.3.t/100 + 0.5), exclude = 1-{lastin}
		MW[2] = int(MI.2.3.t/100 + 0.5), exclude = 1-{lastin}

		; Fill zero cells with large value.
		nearIC  = 9999
		nearNC  = 9999
		nearIF  = 9999
		nearNF  = 9999

		JLOOP
			; For both congested and free skim, find the nearest external station
			;  and the time from this internal zone to it.  Cap at 120 min.
			; First, interstate stations.
			IF(ZI.1.intflag[j] == 1)
				IF(MW[1] > 0 && MW[1] < nearIC) nearIC = min(MW[1],120)
				IF(MW[2] > 0 && MW[2] < nearIF) nearIF = min(MW[2],120)
			ENDIF

			; Next, non-interstate stations.
			IF(ZI.1.intflag[j] == 2)
				IF(MW[1] > 0 && MW[1] < nearNC) nearNC = min(MW[1],120)
				IF(MW[2] > 0 && MW[2] < nearNF) nearNF = min(MW[2],120)
			ENDIF
		ENDJLOOP

		; Output time from each internal zone to the nearest interstate ext station via
		;  congested and free time, and to the nearest non-interstate ext station via
		;  congested and free time.
		PRINT form=9.2, list = i(5),nearIC,nearIF,nearNC,nearNF, file = distcor.dat  print=y
	ENDRUN

	RUN PGM=TRIPGEN msg = "Calculate external PC trip ends"
		id = "Calculate external PC trip ends

		; Trip purposes:
			; 1 = interstate external station, congested conditions (IC)
			; 2 = interstate external station, free flow conditions (IF)
			; 3 = non-interstate external station, congested conditions (NC)
			; 4 = non-interstate external station, free flow conditions (NF)
	  
		; Socioeconomic data (basic input)
		ZDATI[1] = NWTAZ{year}G.PRN, z = #1, const = #2, manuf = #3, TCU1 = #4,
			whole = #5, retail1 = #6, FIRE1 = #7, service1 = #8, totpriv = #9, gov1 = #10,
			gov2 = #11, totemp = #12, pop1 = #13, hh = #14, unienr = #15, acres1 = #16

		; External PC productions (calculated previously)    
		ZDATI[2] = ieprd{year}.prn, z = #1, intwk = #2, intnw = #3, nintwk = #4, nintnw = #5

		; External station interstate/non-interstate flag file (calculated above)
		ZDATI[3] = iepcsta.tmp, z = #1, intflag = #2
	  
		; Time to nearest external station, stratified (calculated above)
		ZDATI[4] = distcor.dat, z = #1, nearIC = #2, nearIF = #3, nearNC = #4, nearNF = #5
	  
		; Output attractions.  Don't need to output productions (as was done before),
		;  since they're an input and aren't changed.
		PAO = IEPA_B{year}_ATT.NEW, form=8.0, list=z(5),a[1],a[2],a[3],a[4]
	  
		ZONES = {ext2}

		; F-factors
		; Assumes highway times in integer minutes and no interpolation, just
		;  like the original program.
		lookup interpolate = n, list = y, fail = 0,0,0, name = ffac,
			lookup[1] = 1, result =  2,
			lookup[2] = 1, result =  3,
			lookup[3] = 1, result =  4,
			lookup[4] = 1, result =  5,
			file = parameters\iepcff.new

		; Attraction model coefficient lookup file
		; Model uses up to 3 variables
		lookup interpolate = n, list = y, fail = 0,0,0, name = coefA,
			lookup[1] = 1, result =  2,
			lookup[2] = 1, result =  3,
			lookup[3] = 1, result =  4,
		;            coefA1     coefA2    coefA3
				r = '1 0.426833, 11.834472,        0',
					'2 4.047781,  0.552302,        0',
					'3 1.111187,  4.104854, 4.622024',
					'4 3.759299,  0.362528,        0'

		PHASE = ILOOP
			; Productions are an input and are defined only at the external stations.
			;  These are used here only to get the production totals by purpose for
			;  normalizing the attractions.
			p[1] = intwk
			p[2] = intnw
			p[3] = nintwk
			p[4] = nintnw
	  
			; Get "F factors".  Look these up as a function of the time to the
			;  nearest external station, stratified by congested vs. free flow and the 
			;  station type.  
			fIC = ffac(1,nearIC)
			fIF = ffac(2,nearIF)
			fNC = ffac(3,nearNC)
			fNF = ffac(4,nearNF)
		
			; Calculate initial attractions; these are defined at internal zones
			a[1] = min(100000,188000*exp(nearIC*-0.065)) * (totemp * 2 + hh * 0.5)
			a[2] = min(100000,188000*exp(nearIF*-0.100)) * (totemp * 2 + hh * 0.5)
			a[3] = min(100000,188000*exp(nearNC*-0.085)) * (totemp * 2 + hh * 0.5)
			a[4] = min(100000,188000*exp(nearNF*-0.100)) * (totemp * 2 + hh * 0.5)
		ENDPHASE
	  
		PHASE = ADJUST
			; Normalize attractions to production total.  Round to integer.
			a[1] = round(a[1] * p[1][0] / a[1][0])
			a[2] = round(a[2] * p[2][0] / a[2][0])
			a[3] = round(a[3] * p[3][0] / a[3][0])
			a[4] = round(a[4] * p[4][0] / a[4][0])

			; Report pre- and post-normalized external PC attractions at the internal zones.
			report AC=y, A=y
		ENDPHASE
	ENDRUN

	*del iepcsta.tmp
	*del distcor.dat
	*del temp.skm

	; TDINTEXT.JOB   TRIP DISTRIBUTION FOR IE PASSENGER CARS
	;  DISTRIBUTION FOR NON-WORK I-E PC TRIPS IS RUN USING OFF-PEAK SKIMS 
	RUN PGM=TRIPDIST
		ZDATI[1]=ieprd{year}.prn,Z=#1,P1=#3,P2=#5
		ZDATI[2]=IEPA_B{year}_ATT.NEW,Z=#1,A1=#3,A2=#5
		MATI=SOVFFM{year}.SKM                 ;OFF PEAK HIGHWAY SKIMS WITH TERMINAL AND INTRAZONAL TIMES
		MAXITERS=10
		MAXRMSE=35
		LOOKUP FAIL=120,1,0,LIST=N, FILE=parameters\IE_FrictionFactors.PRN, NAME=FF,   ;MODIFIED FF DATA FILE FOR TP+
		   LOOKUP[1]=1,RESULT=3,
		   LOOKUP[2]=1,RESULT=5,
		   INTERPOLATE=Y,SETUPPER=N

		SETPA INCLUDE=1-{totzones},
			  P[1]=ZI.1.P1,P[2]=ZI.1.P2,
			  A[1]=ZI.2.A1,A[2]=ZI.2.A2

		MW[11]=MI.1.3/100, TOTAL=ROWFIX(11)

		GRAVITY PURPOSE=1, LOS=MW[11],FFACTORS=FF,LOSRANGE=0-999999
		FREQUENCY VALUEMW=1,BASEMW=11,RANGE=1-120

		GRAVITY PURPOSE=2, LOS=MW[11],FFACTORS=FF,LOSRANGE=0-999999
		FREQUENCY VALUEMW=2,BASEMW=11,RANGE=1-120

		MATO=IENWKM{year}.TMP, MO=1-2, NAME=PCNWK1,PCNWK2
	ENDRUN

	;ROUND OFF TRIPTABLES AND AUTOMATICALLY CONVERTS TO INTEGER
	RUN PGM=MATRIX
		FILEI MATI=IENWKM{year}.TMP
		FILEO MATO=IENWKM{year}.VTT,FORMAT=TRANPLAN,MO=1-2,NAME=PCNWK1,PCNWK2
		ZONES= {totzones}
		ZONEMSG=100  
		MW[1]=MI.1.1,Total=ROWFIX(1,1,0.5)
		MW[2]=MI.1.2,Total=ROWFIX(2,1,0.5)
	ENDRUN

	;  DISTRIBUTION FOR WORK I-E PC TRIPS IS RUN USING
	;  PEAK HOUR SKIMS WITHOUT TERMINAL AND INTRA-ZONAL TIMES
	;  SKIM FILE HAS BEEN ROUNDED TO INTEGER
	RUN PGM=TRIPDIST
		ZDATI[1]=ieprd{year}.prn,Z=#1,P1=#2,P2=#4
		ZDATI[2]=IEPA_B{year}_ATT.NEW,Z=#1,A1=#2,A2=#4
		MATI=CSVAMM{YEAR}.SKM                 ;PEAK HIGHWAY SKIMS WITHOUT TERMINAL AND INTRAZONAL TIMES
									  
		MAXITERS=10
		MAXRMSE=35
		
		LOOKUP FAIL=120,1,0,LIST=N, FILE=parameters\IE_FrictionFactors.PRN, NAME=FF,   ;MODIFIED FF DATA FILE FOR TP+
			LOOKUP[1]=1,RESULT=2,
			LOOKUP[2]=1,RESULT=4,
			INTERPOLATE=Y,SETUPPER=N

		SETPA INCLUDE=1-{totzones},
			P[1]=ZI.1.P1,P[2]=ZI.1.P2,
			A[1]=ZI.2.A1,A[2]=ZI.2.A2

		MW[11]=MI.1.3/100, TOTAL=ROWFIX(11)

		GRAVITY PURPOSE=1, LOS=MW[11],FFACTORS=FF
		FREQUENCY VALUEMW=1,BASEMW=11,RANGE=1-120

		GRAVITY PURPOSE=2, LOS=MW[11],FFACTORS=FF
		FREQUENCY VALUEMW=2,BASEMW=11,RANGE=1-120

		MATO=IEWRKM{year}.TMP, MO=1-2, NAME=PCWRK1,PCWRK2
	ENDRUN

	;ROUND OFF TRIPTABLES AND AUTOMATICALLY CONVERTS TO INTEGER
	RUN PGM=MATRIX
		FILEI MATI[1]=IEWRKM{year}.TMP
		FILEO MATO=IEWRKM{year}.VTT,FORMAT=TRANPLAN,MO=1-2,NAME=PCWRK1,PCWRK2
		ZONES= {totzones}
		ZONEMSG=100  
	  
		MW[1]=MI.1.1,Total=ROWFIX(1,1,0.5)
		MW[2]=MI.1.2,Total=ROWFIX(2,1,0.5)
	ENDRUN

	RUN PGM=MATRIX
		MATI[1]=IEWRKM{year}.VTT
		MATI[2]=IENWKM{year}.VTT
		MATO[1]=MODEL_IE.VTT,MO=1-4,NAME=HBWINT,HBWNON,NWKINT,NWKNON
		ZONEMSG=100
	
		MW[1]=(MI.1.1+MI.1.1.T)/2
		MW[2]=(MI.1.2+MI.1.2.T)/2
		MW[3]=(MI.2.1+MI.2.1.T)/2
		MW[4]=(MI.2.2+MI.2.2.T)/2
	ENDRUN

	RUN PGM=MATRIX, PRNFILE=IE_TLF.TXT
	MATI[1]=MODEL_IE.VTT
	MATI[2]=SOVFFM{year}.SKM
	ZONEMSG=100
	PAGEHEIGHT=32000

	MW[11]=MI.1.1
	MW[12]=MI.1.2
	MW[21]=MI.1.3
	MW[22]=MI.1.4
	MW[3]=MI.2.2/100

	FREQUENCY BASEMW=3,VALUEMW=11,RANGE=1-100,TITLE='HBW INT DIST'
	FREQUENCY BASEMW=3,VALUEMW=12,RANGE=1-100,TITLE='HBW NON DIST'
	FREQUENCY BASEMW=3,VALUEMW=21,RANGE=1-100,TITLE='NWK INT DIST'
	FREQUENCY BASEMW=3,VALUEMW=22,RANGE=1-100,TITLE='NWK NON DIST'
	ENDRUN

	RUN PGM=MATRIX, PRNFILE=IE_TLF_TIME.TXT
		MATI[1]=MODEL_IE.VTT
		MATI[2]=CSVAMM{year}.SKM
		MATI[3]=SOVFFM{year}.SKM
		ZONEMSG=100
		PAGEHEIGHT=32000

		MW[11]=MI.1.1
		MW[12]=MI.1.2
		MW[21]=MI.1.3
		MW[22]=MI.1.4
		MW[3]=MI.2.3/100
		MW[4]=MI.3.3/100

		FREQUENCY BASEMW=3,VALUEMW=11,RANGE=1-120,TITLE='HBW INT TIME'
		FREQUENCY BASEMW=3,VALUEMW=12,RANGE=1-120,TITLE='HBW NON TIME'
		FREQUENCY BASEMW=4,VALUEMW=21,RANGE=1-120,TITLE='NWK INT TIME'
		FREQUENCY BASEMW=4,VALUEMW=22,RANGE=1-120,TITLE='NWK NON TIME'
	ENDRUN

	;================== NEW AIR PASSENGER MODEL ======================
	;SOV skim matrix for air passenger model
	RUN PGM=MATRIX
		; times 100 to go back to TRANPLAN format
		MATI=sovff_free.skm
		MATI[2] = termtime.skm
		MATO[1]=SOVOPSKM.SKM,format=tranplan,MO=1-3,DEC[3]=0,NAME=toll,distance,time
		ZONEMSG=100  
	  
		MW[1]=MI.1.1*100
		MW[2]=MI.1.2*100
		MW[3]=MI.1.3*100 - MI.2.1 - MI.2.2                                                 
		INTRAZONAL MW[3] = 0
	ENDRUN

	; +++ Cube version of air passenger model inserted 11/12/09 +++
	; Air passenger parameters
	pctxfer        = 0.697		; percent of passengers who transfer planes
	pbusres        = 0.2086		; pct of passengers who are Business Residents
	pbusnres       = 0.1979		; pct of pass who are Business Non-Residents
	pplsres        = 0.3373		; pct of pass who are Pleasure Residents
	pplsnres       = 0.2562		; pct of pass who are Pleasure Non-Residents
	mprkcst        = 500		  ; transit PnR parking cost/day
	autocostmi     = 8.74		  ; auto operating cost/mile
	busparkdur     = 3.0		  ; avg ATL parking duration of Business trips, days (parking is applied only for Residents)
	plsparkdur     = 5.0		  ; avg ATL parking duration of Pleasure trips, days
	flagdrop       = 400		  ; taxi flag drop fare, cents
	taxifaremi     = 200		  ; taxi fare/mile, cents
	busparkcost    = 1300		  ; parking cost at ATL for Business trips, cents
	plsparkcost    = 1000		  ; parking cost at ATL for Pleasure trips, cents
	occds          = 1.0		  ; avg auto occupancy, Drive Self
	busresoccdo    = 1.10	  	; avg auto occupancy, Business Residents, Dropped Off
	busnresoccdo   = 1.70	  	; avg auto occupancy, Business Non-Residents, Dropped Off
	plsresoccdo    = 2.20	  	; avg auto occupancy, Pleasure Residents, Dropped Off
	plsnresoccdo   = 2.40	  	; avg auto occupancy, Pleasure Non-Residents, Dropped Off
	busnresoccrc   = 1.70	  	; avg auto occupancy, Business Non-Residents, Rental Car (Rental Car is only in non-residents mode choice)
	plsnresoccrc   = 3.70	  	; avg auto occupancy, Pleasure Non-Residents, Rental Car
	occtx          = 1.10		  ; avg auto occupancy, Taxi (excluding the driver)
	altname        = 'Atlanta Air Passenger Run 20{year}'

	RUN PGM=MATRIX msg = "Extract ATL enplanements"
		id = "Extract ATL enplanements
	  
		;Set the number of enplanements based on model year using lookup
		;function.  Intermediate models years (not ending in '0' or '5') 
		;are calculated by interpolating between closest model years.

		LOOKUPI[1]=PARAMETERS\ENPLANEMENTS.DBF    ;DBF containing enplanements in 5 year increments
		ZONES=20{year}  
		ZONEMSG=100

		;setup lookup table
		YEAR =20{year}
		LOOKUP LOOKUPI=1,
			NAME=AIRPASS,
			LOOKUP[1]=YEAR,RESULT=ENPLANE,
			INTERPOLATE=T                    ;interpolate for intermediate model years

		;get lookup value
		ENPLANEMENTS=AIRPASS(1,20{year})

		; Output enplanements on the VAR file
		IF(i == 0) 
			log prefix=arc, var=enplanements
		ENDIF
	ENDRUN

	RUN PGM=TRIPGEN msg = "ATL air passenger trip gen/dist"
		id = "ATL air passenger trip gen/dist

		; Purposes:
			; 1 business, residents                3 pleasure, residents
			; 2 business, non-residents            4 pleasure, non-residents

		ZDATI[1] = NWTAZ{year}G.PRN, z = #1, const = #2, manuf = #3, TCU1 = #4,
			whole = #5, retail1 = #6, FIRE1 = #7, service1 = #8, totpriv = #9, gov1 = #10,
			gov2 = #11, totemp = #12, pop1 = #13, hh = #14, unienr = #15, acres1 = #16
		ZDATI[2] = HSHLD{year}G.DAT, z=#1, i1s1=#2, i1s2=#3, i1s3=#4, i1s4=#5, i1s5=#6, i1s6=#7,
			i2s1=#8, i2s2=#9, i2s3=#10, i2s4=#11, i2s5=#12, i2s6=#13,
			i3s1=#14, i3s2=#15, i3s3=#16, i3s4=#17, i3s5=#18, i3s6=#19,
			i4s1=#20, i4s2=#21, i4s3=#22, i4s4=#23, i4s5=#24, i4s6=#25
		PAO = airPassAttr.txt, form=10.4, list = z(5),a[1],a[2],a[3],a[4]

		; Lookup table for zone/district equivalency for adjustment factor districts
		lookup name = zd,
			r = ' 2  1-1296',
				' 3  1297-1943',
				' 1  1944-2508',
				' 3  2509-3006',
				' 4  3007-5922'

		; Lookup table for adjustment factors by district
		lookup interpolate = n, fail = 1,1,1, name=afact,
			lookup[1] = 1, result = 2,
			lookup[2] = 1, result = 3,
			;     dist    hh   emp
			r = '1  0.70  0.13',
				'2  1.48  1.28',
				'3  0.90  0.21',
				'4  0.62  0.10'

		ZONES = {lastin}

		; Start ZONES loop on origin zones
		PHASE = ILOOP
			; Total trip generation by purpose is calculated only once, while on
			IF(i == 1)
				trips = 2.0 * @arc.enplanements@*(1.0-@pctxfer@)/365

				; Arbitrarily call the desired totals "Productions"
				p[1] = trips * @pbusres@
				p[2] = trips * @pbusnres@
				p[3] = trips * @pplsres@
				p[4] = trips * @pplsnres@
			ENDIF

			; Now back to the regular ZONES loop
			; Sum HHs by income
			hh1 = i1s1 + i1s2 + i1s3 + i1s4 + i1s5 + i1s6
			hh2 = i2s1 + i2s2 + i2s3 + i2s4 + i2s5 + i2s6
			hh3 = i3s1 + i3s2 + i3s3 + i3s4 + i3s5 + i3s6
			hh4 = i4s1 + i4s2 + i4s3 + i4s4 + i4s5 + i4s6

			; Get adjustment district and factors
			district = zd(i)
			hhfac    = afact(1,district)
			empfac   = afact(2,district)

			; Don't calculate trips for the airport zone itself
			IF(i == {airpt}) continue

			; Calculate trip ends by purpose; arbitrarily call these "attractions"
			a[1] = (0.001032*hh1 + 0.006525*hh2 + 0.008314*hh3 + 0.012414*hh4) * hhfac 
			a[2] = 0.008748*totemp * empfac
			a[3] = (0.0042177*hh1 + 0.009454*hh2 + 0.015035*hh3 + 0.018057*hh4) * hhfac
			a[4] = (0.001107*hh1 + 0.002131*hh2 + 0.008232*hh3 + 0.01187*hh4) * hhfac + 0.005138*totemp * empfac
		ENDPHASE

		PHASE = ADJUST
			; Normalize zonal "attractions" to match the production grand total by purpose
			a[1] = a[1] * p[1][0]/a[1][0]
			a[2] = a[2] * p[2][0]/a[2][0]
			a[3] = a[3] * p[3][0]/a[3][0]
			a[4] = a[4] * p[4][0]/a[4][0]

			; Report normalized zonal attractions
			report A = y
		ENDPHASE
	ENDRUN

	;Create transit skims for air passenger
	RUN PGM=MATRIX
		MATI[1]=WLK_ALLTRN_WLK_MD.SKM
		MATI[2]=PNR_ALLTRN_WLK_MD.SKM
		MATO[1]=OFFPRETG.SKM,FORMAT=TRANPLAN,MO=101-108,NAME=walkt,autot,iwait,xwait,locivt,preivt,blank,xfers
		MATO[2]=OFFAUTPRETG.SKM,FORMAT=TRANPLAN,MO=201-208,NAME=walkt,autot,iwait,xwait,locivt,preivt,blank,xfers
		MATO[3]=FAREWE_OP.FAR,MO=1,FORMAT=TRANPLAN,NAME=FARE
		MATO[4]=FAREAP_OP.FAR,MO=2,FORMAT=TRANPLAN,NAME=FARE
		ZONEMSG=100
		ZONES={lastin}
		
		; Cube Cluster Controls
		DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

		MW[1]=MI.1.11*100
		MW[2]=MI.2.12*100

		;off-peak walk all transit (formerly offpre.skm)
		MW[101]=MI.1.1*100             ;walk
		MW[102]=0                      ;auto
		MW[103]=MI.1.2*100             ;iwait
		MW[104]=MI.1.3*100             ;xwait
		MW[105]=MI.1.4*100             ;local
		MW[106]=(MI.1.5+MI.1.6+MI.1.7+MI.1.8+MI.1.9)*100  ;premium
		MW[107]=0                      ;blank
		MW[108]=MAX(MI.1.10-1,0)       ;transfers
		;off-peak pnr all transit (formerly offautpre.skm)
		MW[201]=MI.2.1*100             ;walk
		MW[202]=MI.2.2*100             ;auto
		MW[203]=MI.2.3*100             ;iwait
		MW[204]=MI.2.4*100             ;xwait
		MW[205]=MI.2.5*100             ;local
		MW[206]=(MI.2.6+MI.2.7+MI.2.8+MI.2.9+MI.2.10)*100  ;premium
		MW[207]=0                      ;blank
		MW[208]=MAX(MI.2.11-1,0)       ;transfers
	ENDRUN

	RUN PGM=MATRIX msg = "Air Pass mode choice"
		id = "Air Pass mode choice

		; Purposes:
			; 1 business, residents                3 pleasure, residents
			; 2 business, non-residents            4 pleasure, non-residents

		; Modes: 1=drive self, 2=dropped off, 3=rental car, 4=transit, 5=taxi

		; Model structure:
		;                         Non-Residents (purp 2,4)
		;         +---------------------|----------------+
		;    Dropped Off           Rental Car         Non-Auto
		;                                         +------+------+
		;                                       Transit        Taxi
		;
		;                           Residents (purp 1,3)
		;         +----------------------+--------------+
		;      Pvt Auto                              Non-Auto
		;  +------+-----+                        +------+------+
		; Drive      Dropped                  Transit         Taxi
		; Self         Off

		; Input highway and transit skims (computed previously)
		; NOTE: all skims (except fare) are assumed to be input in hundredths;
		;  fare is in cents
		MATI[1] = sov_toll_MD.skm
		MATI[2] = WLK_PRMTRN_WLK_MD.skm
		MATI[3] = PNR_PRMTRN_WLK_MD.skm
		MATI[4] = KNR_PRMTRN_WLK_MD.skm	
		; Air passenger trip vectors (computed above)
		ZDATI[1] = airPassAttr.txt, z=#1, TrpBR=#2, TrpBN=#3, TrpPR=#4, TrpPN=#5

		; Output vehicle trips by purpose and total
		MATO[1] = vehout{year}.tmp, MO=1-5, DEC=5*0, NAME=BusRes,BusNRes,PlsRes,PlsNRes,TotVeh
		; Output transit trips by purpose, then total walk-transit and total drive-transit
		MATO[2] = trnout{year}.tmp, MO=6-12, DEC=7*0, NAME=BusRes,BusNRes,PlsRes,PlsNRes,TotWTrn,TotPnRTrn,TotKnrTrn
		; Output user benefit Cube matrix files
		MATO[3] = APubenBR.mtx, MO=21-27, DEC=D,D,D,0,D,0,D
		MATO[4] = APubenBN.mtx, MO=31-37, DEC=D,D,D,0,D,0,D
		MATO[5] = APubenPR.mtx, MO=41-47, DEC=D,D,D,0,D,0,D
		MATO[6] = APubenPN.mtx, MO=51-57, DEC=D,D,D,0,D,0,D

		; Mode choice system and nesting coefficients
		lookup interpolate=n, fail=0,0,0, name=syst,
			lookup[1] = 1, result = 2,
			lookup[2] = 1, result = 3,
			lookup[3] = 1, result = 4,
			lookup[4] = 1, result = 5,
		;      coef       BR      BNR        PR       PNR
			r = ' 1 -0.09300,-0.08900,-0.051000,-0.045000',	; trn walk	
				' 2 -0.10700,-0.09600,-0.077000,-0.071000',	; trn wait
				' 3 -0.05300,-0.05000,-0.031000,-0.029000',	; trn run
				' 4 -0.00277,-0.00256,-0.002105,-0.001969',	; trn fare
				' 5 -0.07100,-0.06800,-0.044000,-0.039000',	; taxi run
				' 6 -0.00277,-0.00256,-0.002105,-0.001969',	; taxi fare
				' 7 -0.07100,-0.06800,-0.044000,-0.039000',	; auto run
				' 8 -0.00277,-0.00256,-0.002105,-0.001969',	; auto cost
				' 9  0.30,    0.30,    0.30,     0.30',		; non-auto nest
				'10  0.30,    1.00,    0.30,     1.00'		; auto nest

		; Mode choice modal bias coefficients
		lookup interpolate=n, fail=0,0,0, name=bias,
			lookup[1] = 1, result = 2,
			lookup[2] = 1, result = 3,
			lookup[3] = 1, result = 4,
			lookup[4] = 1, result = 5,
		;     purp      BR     BNR      PR     PNR	
			r = '1  -4.672, -6.250, -3.355, -3.851',	; transit
				'2   5.706,  0.0,    5.423,  0.0',	  ; drive self
				'3   4.341,  9.164,  3.665   3.252',	; non-auto nest
				'4   0.0,   -2.917,  0.0,   -2.154',  ; rental car 	
				'5   1.53,   0.0,    2.44,   0.0',    ; Park and ride constant	
				'6  -2.40,   0.0,   -2.37,   0.0'	    ; kiss and ride constant

		; Arrays for total modal share and trips, transit trips by type,
		array mshare1=5,mshare2=5,mshare3=5,mshare4=5,
					mtrips1=5,mtrips2=5,mtrips3=5,mtrips4=5,
					shrBR=5,shrBN=5,shrPR=5,shrPN=5,
					modBR=6,modBN=6,modPR=6,modPN=6,
					shrTT=5,wtrntot=4,pnrtrntot=4,knrtrntot=4

		; KONN is a very, very small positive number used to protect against
		;  impossibly tiny values in the exp(utile) calculation.
		konn = pow(10,-40)

		; Start implied ZONES loop
		; First, do the resident trips, from home to the airport
		IF(i != {airpt})
			jz = {airpt}

			; Initialize
			set val=0,vars=outab1,outab2,outab3,outab4,outab5,outab6,outab7,
				outab8,outab9,outab10,outab11,outab12

			; Get walk-transit variables
			wtwalk = MI.2.walk[jz]
			wtwait = MI.2.iwait[jz] + MI.2.xwait[jz]
			wtrun  = MI.2.ivt[jz]
			wtfare = MI.2.fare[jz]*100

			; Transit utiles for business residents (purp 1)
			; Walk-transit utile
			; If there's no run time, there's no legitimate transit path.
			IF(wtrun < 0.1)
				expWT = konn
			ELSE
				uWT = (syst(1,1)*wtwalk + syst(1,2)*wtwait + syst(1,3)*wtrun +
						syst(1,4)*wtfare + bias(1,1)) / syst(1,9)
				expWT = max(exp(uWT),konn)
			ENDIF

			; Get pnr-transit variables (include PNR-access time in the "walk" time)
			pnrtwalk = MI.3.walk[jz] + MI.3.auto[jz]
			pnrtwait = MI.3.iwait[jz] + MI.3.xwait[jz]
			pnrtrun  = MI.3.ivt[jz]

			; For the pnr-transit utilities, add in the transit parking cost: cost/day
			;  times parking duration.  Fare and costs are in cents.
			pnrtfare = MI.3.fare[jz]*100 + @mprkcst@ * @busparkdur@

			IF(pnrtrun < 0.1 || MI.3.auto[jz] < 0.1)
				expPNRT = konn
			ELSE
				uPNRT = (syst(1,1)*pnrtwalk + syst(1,2)*pnrtwait + syst(1,3)*pnrtrun +
						syst(1,4)*pnrtfare + bias(1,5) + bias(1,1)) / syst(1,9)
				expPNRT = max(exp(uPNRT),konn)
			ENDIF

			; Get knr-transit variables (include KNR-access time in the "walk" time)
			knrtwalk = MI.4.walk[jz] + MI.4.auto[jz]
			knrtwait = MI.4.iwait[jz] + MI.4.xwait[jz]
			knrtrun  = MI.4.ivt[jz]

			; For the knr-transit utilities, DON'T add in the transit parking cost: cost/day
			;  times parking duration.  Fare and costs are in cents.
			knrtfare = MI.4.fare[jz]*100

			IF(knrtrun < 0.1 || MI.4.auto[jz] < 0.1)
				expKNRT = konn
			ELSE
				uKNRT = (syst(1,1)*knrtwalk + syst(1,2)*knrtwait + syst(1,3)*knrtrun +
						syst(1,4)*knrtfare + bias(1,6) + bias(1,1)) / syst(1,9)
				expKNRT = max(exp(uKNRT),konn)
			ENDIF  		

			; Compare walk-trn, pnr-trn and knr-trn utiles and pick the best one
			bsttrn = 1                                                  ;best transit is walk access
			IF((expPNRT > expWT) & (expPNRT > expKNRT)) bsttrn = 2     ;best transit is pnr access
			IF((expKNRT > expWT) & (expKNRT > expPNRT)) bsttrn = 3     ;best transit is knr access
				
			IF(bsttrn == 1)
				euTR1 = expWT
			ELSEIF(bsttrn == 2)
				euTR1 = expPNRT
			ELSE
				euTR1 = expKNRT
			ENDIF

			; Transit utiles for pleasure residents (purp 3)
			; Use the better utile (walk/pnr/knr) as calculated above
			; Walk-transit utile
			; If there's no run time, there's no legitimate transit path.
			IF(bsttrn == 1)
				IF(wtrun < 0.1)
					expWT = konn
				ELSE
					uWT = (syst(3,1)*wtwalk + syst(3,2)*wtwait + syst(3,3)*wtrun +
						syst(3,4)*wtfare + bias(3,1)) / syst(3,9)
					expWT = max(exp(uWT),konn)
				ENDIF
				euTR3 = expWT
			ELSEIF(bsttrn == 2)
				IF(pnrtrun < 0.1 || MI.3.auto[jz] < 0.1)
					expPNRT = konn
				ELSE
			; For pleasure residents, re-calculate the transit parking cost
					pnrtfare = MI.3.fare[jz]*100 + @mprkcst@ * @plsparkdur@
					uPNRT = (syst(3,1)*pnrtwalk + syst(3,2)*pnrtwait + syst(3,3)*pnrtrun +
						syst(3,4)*pnrtfare + bias(3,5) + bias(3,1)) / syst(3,9)
					expPNRT = max(exp(uPNRT),konn)
				ENDIF
				euTR3 = expPNRT
			ELSE
				IF(knrtrun < 0.1 || MI.4.auto[jz] < 0.1)
					expKNRT = konn
				ELSE
			; For pleasure residents, re-calculate the transit parking cost
					knrtfare = MI.4.fare[jz]*100
					uKNRT = (syst(3,1)*knrtwalk + syst(3,2)*knrtwait + syst(3,3)*knrtrun +
						syst(3,4)*knrtfare + bias(3,6) + bias(3,1)) / syst(3,9)
					expKNRT = max(exp(uKNRT),konn)
				ENDIF
				euTR3 = expKNRT			
			ENDIF

			; Get the highway variables (auto and taxi)
			autime = MI.1.3[jz]
			audist = MI.1.2[jz]
			autoll = MI.1.1[jz]*100
			aucost = audist*@autocostmi@ + autoll
			pcostBs= 0.5*@busparkcost@*@busparkdur@
			pcostPl= 0.5*@plsparkcost@*@plsparkdur@

			txrun  = autime
			txfare = @flagdrop@ + @taxifaremi@*audist

			; Taxi utiles for business and pleasure residents
			uTX   = (syst(1,5)*txrun + syst(1,6)*txfare) / syst(1,9)
			euTX1 = max(exp(uTX),konn)

			uTX   = (syst(3,5)*txrun + syst(3,6)*txfare) / syst(3,9)
			euTX3 = max(exp(uTX),konn)

			; Get probabilities and log sum for non-auto nest
			totEU = euTR1 + euTX1
			IF(totEU > konn)
				pTR1 = euTR1/totEU
				pTX1 = euTX1/totEU
				lsNA1= ln(totEU)
			ENDIF

			totEU = euTR3 + euTX3
			IF(totEU > konn)
				pTR3 = euTR3/totEU
				pTX3 = euTX3/totEU
				lsNA3= ln(totEU)
			ENDIF

			; Drive self auto utile
			uDS = (syst(1,7)*autime + syst(1,8)*(aucost+pcostBs) + bias(1,2)) / syst(1,10)
			euDS1 = max(exp(uDS),konn)

			uDS = (syst(3,7)*autime + syst(3,8)*(aucost+pcostPl) + bias(3,2)) / syst(3,10)
			euDS3 = max(exp(uDS),konn)

			; Drop off auto utile (bias is defined as zero)
			uDO = (syst(1,7)*autime + syst(1,8)*aucost) / syst(1,10)
			euDO1 = max(exp(uDO),konn)

			uDO = (syst(3,7)*autime + syst(3,8)*aucost) / syst(3,10)
			euDO3 = max(exp(uDO),konn)

			; Get probabilities and log sum for auto nest
			totEU = euDS1 + euDO1
			IF(totEU > konn)
				pDS1 = euDS1/totEU
				pDO1 = euDO1/totEU
				lsAU1= ln(totEU)
			ENDIF

			totEU = euDS3 + euDO3
			IF(totEU > konn)
				pDS3 = euDS3/totEU
				pDO3 = euDO3/totEU
				lsAU3= ln(totEU)
			ENDIF

			; Top level probabilities for business and pleasure residents
			uAU   = syst(1,10) * lsAU1
			euAU1 = max(exp(uAU),konn)
			uNA   = syst(1,9) * lsNA1 + bias(1,3)
			euNA1 = max(exp(uNA),konn)
			totEU = euAU1 + euNA1
			IF(totEU > konn)
				pAU1 = euAU1/totEU
				pNA1 = euNA1/totEU
			ELSE
				pAU1 = 0
				pNA1 = 0
			ENDIF

			uAU   = syst(3,10) * lsAU3
			euAU3 = max(exp(uAU),konn)
			uNA   = syst(3,9) * lsNA3 + bias(3,3)
			euNA3 = max(exp(uNA),konn)
			totEU = euAU3 + euNA3
			IF(totEU > konn)
				pAU3 = euAU3/totEU
				pNA3 = euNA3/totEU
			ELSE
				pAU3 = 0
				pNA3 = 0
			ENDIF

			; Final modal shares and trips for business and pleasure residents
			;  (they don't use rental cars)
			mshare1[1] = pAU1 * pDS1
			mshare1[2] = pAU1 * pDO1
			mshare1[3] = 0
			mshare1[4] = pNA1 * pTR1
			mshare1[5] = pNA1 * pTX1

			mshare3[1] = pAU3 * pDS3
			mshare3[2] = pAU3 * pDO3
			mshare3[3] = 0
			mshare3[4] = pNA3 * pTR3
			mshare3[5] = pNA3 * pTX3

			LOOP m = 1,5
				mtrips1[m] = mshare1[m] * TrpBR
				mtrips3[m] = mshare3[m] * TrpPR
			ENDLOOP

			; Summarize transit trips by mode separately
			IF(bsttrn == 1)
				wtrntot[1] = wtrntot[1] + mtrips1[4]
				wtrntot[3] = wtrntot[3] + mtrips3[4]
			ELSEIF(bsttrn == 2)
				pnrtrntot[1] = pnrtrntot[1] + mtrips1[4]
				pnrtrntot[3] = pnrtrntot[3] + mtrips3[4]
			ELSE
				knrtrntot[1] = knrtrntot[1] + mtrips1[4]
				knrtrntot[3] = knrtrntot[3] + mtrips3[4]			
			ENDIF

			; Output vehicle and transit trips.  Divide auto trips by average
			;  occupancies and multiply DO trips by 2 (driver leaves the airport).
			outab1 = mtrips1[1]/@occds@ + 2*mtrips1[2]/@busresoccdo@ + mtrips1[5]/@occtx@	; BR veh
			outab3 = mtrips3[1]/@occds@ + 2*mtrips3[2]/@plsresoccdo@ + mtrips3[5]/@occtx@	; PR veh
			outab6 = mtrips1[4]								; BR trn
			outab8 = mtrips3[4]								; PR trn
			IF(bsttrn == 1)
				outab10 = mtrips1[4] + mtrips3[4]
			ELSEIF(bsttrn == 2)
				outab11 = mtrips1[4] + mtrips3[4]
			ELSE
				outab12 = mtrips1[4] + mtrips3[4]			
			ENDIF

			; Multiply output trips by 100 and round to integer
			MW[1][jz]  = int(100*outab1 + 0.5)
			MW[3][jz]  = int(100*outab3 + 0.5)
			MW[6][jz]  = int(100*outab6 + 0.5)
			MW[8][jz]  = int(100*outab8 + 0.5)
			MW[10][jz] = int(100*outab10 + 0.5)
			MW[11][jz] = int(100*outab11 + 0.5)
			MW[12][jz] = int(100*outab12 + 0.5)		

			; Summarize
			modBR[1] = modBR[1] + mtrips1[1]
			modBR[2] = modBR[2] + mtrips1[2]
			modBR[4] = modBR[4] + mtrips1[4]
			modBR[5] = modBR[5] + mtrips1[5]

			modPR[1] = modPR[1] + mtrips3[1]
			modPR[2] = modPR[2] + mtrips3[2]
			modPR[4] = modPR[4] + mtrips3[4]
			modPR[5] = modPR[5] + mtrips3[5]

			; Output user benefit file.  Table order:
			; purp income totpsn motpsn e(au) wkacc% trnwk% drvacc% trndrv%
			; BsRs all    21     22     23    24     25     26      27
			; PlRs all    41     42     43    44     45     46      47
			MW[21][jz] = trpBR
			MW[22][jz] = trpBR
			MW[23][jz] = euAU1
			MW[41][jz] = trpPR
			MW[42][jz] = trpPR
			MW[43][jz] = euAU3
			IF(bsttrn == 1)
				MW[24][jz] = 1
				MW[25][jz] = mshare1[4]
				MW[26][jz] = 0
				MW[27][jz] = 0
				MW[44][jz] = 1
				MW[45][jz] = mshare3[4]
				MW[46][jz] = 0
				MW[47][jz] = 0			
			ELSE                ;PNR and KNR access go into the same drive access matrix
				MW[24][jz] = 0
				MW[25][jz] = 0
				MW[26][jz] = 1
				MW[27][jz] = mshare1[4]
				MW[44][jz] = 0
				MW[45][jz] = 0
				MW[46][jz] = 1
				MW[47][jz] = mshare3[4]		
			ENDIF

		; All done with resident trips from non-airport zones.
		ELSE
			; Here, we're on the airport zone -- now do the non-resident trips.
			;  We have one origin zone (the airport) but many destination zones,
			;  so loop on J.
			JLOOP
				; Get walk-transit variables
				wtwalk = MI.2.walk[j]
				wtwait = MI.2.iwait[j] + MI.2.xwait[j]
				wtrun  = MI.2.ivt[j]
				wtfare = MI.2.fare[j]

				; Transit utiles for business non-residents (purp 2)
				; Walk-transit utile
				; If there's no run time, there's no legitimate transit path.  IF
				;  there is any auto access time in the walk-transit path, there's
				;  some other problem.  Kill the walk-transit option.
				IF(wtrun < 0.1)
					expWT = konn
				ELSE
					uWT = (syst(2,1)*wtwalk + syst(2,2)*wtwait + syst(2,3)*wtrun +
						syst(2,4)*wtfare + bias(2,1)) / syst(2,9)
					expWT = max(exp(uWT),konn)
				ENDIF

				;Non-residents can't drive to transit
				bsttrn = 1
				euTR2 = expWT

				; Now do pleasure non-residents
				IF(wtrun < 0.1)
					expWT = konn
				ELSE
					uWT = (syst(4,1)*wtwalk + syst(4,2)*wtwait + syst(4,3)*wtrun +
						syst(4,4)*wtfare + bias(4,1)) / syst(4,9)
					expWT = max(exp(uWT),konn)
				ENDIF
				euTR4 = expWT

				; Now highway (non-residents don't park at the airport)
				autime = MI.1.3[j]
				audist = MI.1.2[j]
				autoll = MI.1.1[j]*100
				aucost = audist*@autocostmi@ + autoll

				txrun  = autime
				txfare = @flagdrop@ + @taxifaremi@*audist

				; Taxi utiles for business and pleasure non-residents
				uTX   = (syst(2,5)*txrun + syst(2,6)*txfare) / syst(2,9)
				euTX2 = max(exp(uTX),konn)
				uTX2 = uTX

				uTX   = (syst(4,5)*txrun + syst(4,6)*txfare) / syst(4,9)
				euTX4 = max(exp(uTX),konn)

				; Get probabilities and log sum for non-auto nest
				totEU = euTR2 + euTX2
				IF(totEU > konn)
					pTR2 = euTR2/totEU
					pTX2 = euTX2/totEU
					lsNA2= ln(totEU)
				ENDIF

				totEU = euTR4 + euTX4
				IF(totEU > konn)
					pTR4 = euTR4/totEU
					pTX4 = euTX4/totEU
					lsNA4= ln(totEU)
				ENDIF

				; Drive Self mode not available for non-residents.
				euDS2 = 0
				euDS4 = 0

				; Drop Off auto utile (bias is defined as zero)
				uDO = (syst(2,7)*autime + syst(2,8)*aucost) / syst(2,10)
				euDO2 = max(exp(uDO),konn)
				uDO2 = uDO

				uDO = (syst(4,7)*autime + syst(4,8)*aucost) / syst(4,10)
				euDO4 = max(exp(uDO),konn)

				; Get probabilities and log sum for auto nest
				totEU = euDS2 + euDO2
				IF(totEU > konn)
					pDS2 = euDS2/totEU
					pDO2 = euDO2/totEU
					lsAU2= ln(totEU)
				ENDIF

				totEU = euDS4 + euDO4
				IF(totEU > konn)
					pDS4 = euDS4/totEU
					pDO4 = euDO4/totEU
					lsAU4= ln(totEU)
				ENDIF

				; Top level probabilities for business and pleasure non-residents.
				;  Now include the rental car mode.
				uAU   = syst(2,10) * lsAU2
				euAU2 = max(exp(uAU),konn)
				uNA   = syst(2,9) * lsNA2 + bias(2,3)
				euNA2 = max(exp(uNA),konn)
				uRC   = bias(2,4)
				euRC2 = exp(uRC)
				totEU = euAU2 + euNA2 + euRC2
				IF(totEU > konn)
					pAU2 = euAU2/totEU
					pNA2 = euNA2/totEU
					pRC2 = euRC2/totEU
				ELSE
					pAU2 = 0
					pNA2 = 0
					pRC2 = 0
				ENDIF
				
				uAU2 = uAU
				uNA2 = uNA

				uAU   = syst(4,10) * lsAU4
				euAU4 = max(exp(uAU),konn)
				uNA   = syst(4,9) * lsNA4 + bias(4,3)
				euNA4 = max(exp(uNA),konn)
				uRC   = bias(4,4)
				euRC4 = exp(uRC)
				totEU = euAU4 + euNA4 + euRC4
				IF(totEU > konn)
					pAU4 = euAU4/totEU
					pNA4 = euNA4/totEU
					pRC4 = euRC4/totEU
				ELSE
					pAU4 = 0
					pNA4 = 0
					pRC4 = 0
				ENDIF

				; Final modal shares and trips for business and pleasure non-residents
				;  (they can use rental cars but not drive self)
				mshare2[1] = 0
				mshare2[2] = pAU2 * pDO2
				mshare2[3] = pRC2
				mshare2[4] = pNA2 * pTR2
				mshare2[5] = pNA2 * pTX2

				mshare4[1] = 0
				mshare4[2] = pAU4 * pDO4
				mshare4[3] = pRC4
				mshare4[4] = pNA4 * pTR4
				mshare4[5] = pNA4 * pTX4

				mtrips2[2] = mshare2[2] * ZI.1.TrpBN[j]
				mtrips2[3] = mshare2[3] * ZI.1.TrpBN[j]
				mtrips2[4] = mshare2[4] * ZI.1.TrpBN[j]
				mtrips2[5] = mshare2[5] * ZI.1.TrpBN[j]

				mtrips4[2] = mshare4[2] * ZI.1.TrpPN[j]
				mtrips4[3] = mshare4[3] * ZI.1.TrpPN[j]
				mtrips4[4] = mshare4[4] * ZI.1.TrpPN[j]
				mtrips4[5] = mshare4[5] * ZI.1.TrpPN[j]

				; Summarize transit trips by mode separately
				wtrntot[2] = wtrntot[2] + mtrips2[4]
				wtrntot[4] = wtrntot[4] + mtrips4[4]
				
				; Output vehicle and transit trips.  Divide auto trips by average
				;  occupancies and multiply DO trips by 2 (driver leaves the airport).
				outab2  = 2*mtrips2[2]/@busnresoccdo@ + mtrips2[3]/@busnresoccrc@ + mtrips2[5]/@occtx@						; BN veh
				outab4  = 2*mtrips4[2]/@plsnresoccdo@ + mtrips4[3]/@plsnresoccrc@ + mtrips4[5]/@occtx@						; PN veh
				outab7  = mtrips2[4]							; BN trn
				outab9  = mtrips4[4]							; PN trn
				outab10 = mtrips2[4] + mtrips4[4]
					
				; Multiply output trips by 100 and round to integer
				MW[2][j]  = int(100*outab2 + 0.5)
				MW[4][j]  = int(100*outab4 + 0.5)
				MW[7][j]  = int(100*outab7 + 0.5)
				MW[9][j]  = int(100*outab9 + 0.5)
				MW[10][j] = int(100*outab10 + 0.5)

				; Summarize
				modBN[1] = modBN[1] + mtrips2[1]
				modBN[2] = modBN[2] + mtrips2[2]
				modBN[3] = modBN[3] + mtrips2[3]
				modBN[4] = modBN[4] + mtrips2[4]
				modBN[5] = modBN[5] + mtrips2[5]

				modPN[1] = modPN[1] + mtrips4[1]
				modPN[2] = modPN[2] + mtrips4[2]
				modPN[3] = modPN[3] + mtrips4[3]
				modPN[4] = modPN[4] + mtrips4[4]
				modPN[5] = modPN[5] + mtrips4[5]

				; Output user benefit file.  Table order:
				; purp income totpsn motpsn e(au) wkacc% trnwk% drvacc% trndrv%
				; BsRs all    31     32     33    34     35     36      37
				; PlRs all    51     52     53    54     55     56      57
				MW[31][j] = ZI.1.trpBN[j]
				MW[32][j] = ZI.1.trpBN[j]
				MW[33][j] = euAU2
				MW[51][j] = ZI.1.trpPN[j]
				MW[52][j] = ZI.1.trpPN[j]
				MW[53][j] = euAU4
				MW[34][j] = 1
				MW[35][j] = mshare2[4]
				MW[36][j] = 0
				MW[37][j] = 0
				MW[54][j] = 1
				MW[55][j] = mshare4[4]
				MW[56][j] = 0
				MW[57][j] = 0

				; Done with the non-resident trips
			ENDJLOOP
		ENDIF		; airport zone IF block

		; Sum total vehicle trips
		JLOOP
			MW[5] = MW[1] + MW[2] + MW[3] + MW[4]
		ENDJLOOP

		; Write mode choice report
		IF(i = {lastin})
			; Get row and column totals and overall mode shares
			modBR[6] = modBR[1] + modBR[2]            + modBR[4] + modBR[5]
			modPR[6] = modPR[1] + modPR[2]            + modPR[4] + modPR[5]
			modBN[6] = modBN[1] + modBN[2] + modBN[3] + modBN[4] + modBN[5]
			modPN[6] = modPN[1] + modPN[2] + modPN[3] + modPN[4] + modPN[5]
			GrTot = modBR[6] + modPR[6] + modBN[6] + modPN[6]

			totDS   = modBR[1] + modPR[1] + modBN[1] + modPN[1]
			totDO   = modBR[2] + modPR[2] + modBN[2] + modPN[2]
			totRC   =                       modBN[3] + modPN[3]
			totTR   = modBR[4] + modPR[4] + modBN[4] + modPN[4]
			totTX   = modBR[5] + modPR[5] + modBN[5] + modPN[5]
			totWT   = wtrntot[1] + wtrntot[2] + wtrntot[3] + wtrntot[4]
			totPNRT = pnrtrntot[1]            + pnrtrntot[3]
			totKNRT = knrtrntot[1]            + knrtrntot[3]

			LOOP m = 1,5
				shrBR[m] = modBR[m]/modBR[6]
				shrPR[m] = modPR[m]/modPR[6]
				shrBN[m] = modBN[m]/modBN[6]
				shrPN[m] = modPN[m]/modPN[6]
				shrTT[m] = (modBR[m]+modPR[m]+modBN[m]+modPN[m])/GrTot
			ENDLOOP

			list='                  Air Passenger Mode Choice Report\n\n',
				'                                M O D E\n',
				'Purp       DrvSlf  DrpOff  Rental  Trnsit   Taxi    Total   WkTrn  PnrTrn  KnrTrn\n\n',
				'BsRs  Trp',form=8.0c,list=modBR[1],modBR[2],modBR[3],modBR[4],
				modBR[5],modBR[6],wtrntot[1],pnrtrntot[1],knrtrntot[1],'\n','      Pct',form=8.4,list=shrBR[1],
				shrBR[2],shrBR[3],shrBR[4],shrBR[5],1.0,'\n\n', file=atlap{year}.rpt
			PRINT form=8.0c,list='BsNR  Trp',modBN[1],modBN[2],modBN[3],modBN[4],modBN[5],
				modBN[6],wtrntot[2],pnrtrntot[2],knrtrntot[2],'\n','      Pct',form=8.4,list=shrBN[1],
				shrBN[2],shrBN[3],shrBN[4],shrBN[5],1.0,'\n\n', file=atlap{year}.rpt
			PRINT form=8.0c,list='PlRs  Trp',modPR[1],modPR[2],modPR[3],modPR[4],modPR[5],
				modPR[6],wtrntot[3],pnrtrntot[3],knrtrntot[3],'\n','      Pct',form=8.4,list=shrPR[1],
				shrPR[2],shrPR[3],shrPR[4],shrPR[5],1.0,'\n\n', file=atlap{year}.rpt
			PRINT form=8.0c,list='PlNR  Trp',modPN[1],modPN[2],modPN[3],modPN[4],modPN[5],
				modPN[6],wtrntot[4],pnrtrntot[4],knrtrntot[4],'\n','      Pct',form=8.4,list=shrPN[1],
				shrPN[2],shrPN[3],shrPN[4],shrPN[5],1.0,'\n\n', file=atlap{year}.rpt
			PRINT form=8.0c,list='Totl  Trp',totDS,totDO,totRC,totTR,totTX,GrTot,totWT,totPNRT,totKNRT,
				'\n','      Pct',form=8.4,list=shrTT[1],shrTT[2],shrTT[3],shrTT[4],shrTT[5],1.0, file=atlap{year}.rpt
		ENDIF
	ENDRUN

; Convert User Benefit Files from Cube matrix to Summit binary
; Put the control files in-line so we can get the proper run title.
copy file = ub.ctl
	UBTRNCOEF  = -0.053
	UBAUTOCOEF = -0.071
	UBPURPOSE  = 'BusRes'
	UBTOD      = 'Daily'
	UBALTNAME  = '@altname@:AirBR'
endcopy

*tpp2ub APubenBR.mtx APubenBR.bin ub.ctl
*del ub.ctl

copy file = ub.ctl
	UBTRNCOEF  = -0.050
	UBAUTOCOEF = -0.068
	UBPURPOSE  = 'BsNRes'
	UBTOD      = 'Daily'
	UBALTNAME  = '@altname@:AirBN'
endcopy

*tpp2ub APubenBN.mtx APubenBN.bin ub.ctl
*del ub.ctl

copy file = ub.ctl
	UBTRNCOEF  = -0.031
	UBAUTOCOEF = -0.044
	UBPURPOSE  = 'PlsRes'
	UBTOD      = 'Daily'
	UBALTNAME  = '@altname@:AirPR'
endcopy

*tpp2ub APubenPR.mtx APubenPR.bin ub.ctl
*del ub.ctl

copy file = ub.ctl
	UBTRNCOEF  = -0.029
	UBAUTOCOEF = -0.039
	UBPURPOSE  = 'PlNRes'
	UBTOD      = 'Daily'
	UBALTNAME  = '@altname@:AirPN'
endcopy

*tpp2ub APubenPN.mtx APubenPN.bin ub.ctl
*del ub.ctl
*del APuben??.mtx
*del airPassAttr.txt

	; Read in air passenger model output tables and create in same format as before and convert to decimals.
	;convert trips back to real numbers
	RUN PGM = MATRIX
		MATI[1] = vehout{year}.tmp
		MATI[2] = trnout{year}.tmp

		MATO[1]=vehout{year}.mtt,MO=11-15,DEC=5*4,NAME=BusRes,BusNR,NBRes,NBNR,TotVeh
		MATO[2]=trnout{year}.mtt,MO=21-27,DEC=7*4,NAME=BusRes,BusNR,NBRes,NBNR,WlkTrn,PnrTrn,KnrTrn

		;Vehicle Trips - Air Passengers
		FILLMW MW[11] = MI.1.1(5)
		;convert back to real numbers
		VEHBUSRES = ROWFAC(11,0.01)   ;business residents
		VEHBUSNRS = ROWFAC(12,0.01)   ;business non-residents
		VEHNBSRES = ROWFAC(13,0.01)   ;non-business residents
		VEHNBSNRS = ROWFAC(14,0.01)   ;non-business non-residents
		TOTVEH    = ROWFAC(15,0.01)   ;total vehicles

		;Transit Trips - Air Passengers
		FILLMW MW[21]=MI.2.1(7)
		;convert back to real numbers
		TRNBUSRES = ROWFAC(21,0.01)   ;business residents
		TRNBUSNRS = ROWFAC(22,0.01)   ;business non-residents
		TRNNBSRES = ROWFAC(23,0.01)   ;non-business residents
		TRNNBSNRS = ROWFAC(24,0.01)   ;non-business non-residents
		WLKTRN = ROWFAC(25,0.01)      ;walk to transit
		PNRTRN = ROWFAC(26,0.01)      ;park-ride to transit	
		KNRTRN = ROWFAC(27,0.01)      ;kiss-ride to transit	
	ENDRUN
	;================== END OF AIR PASSENGER MODEL ===================

	; Time-of-Day Factors
	;HBO - SOV - for air passenger model
	hbosov_ea_pa=0.012
	hbosov_ea_ap=0.023
	hbosov_am_pa=0.137
	hbosov_am_ap=0.035
	hbosov_md_pa=0.135
	hbosov_md_ap=0.117
	hbosov_pm_pa=0.142
	hbosov_pm_ap=0.178
	hbosov_nt_pa=0.075
	hbosov_nt_ap=0.147

	;IE WORK - INTERSTATES
	iewkint_ea_pa=0.045
	iewkint_ea_ap=0.031
	iewkint_am_pa=0.211
	iewkint_am_ap=0.179
	iewkint_md_pa=0.085
	iewkint_md_ap=0.104
	iewkint_pm_pa=0.106
	iewkint_pm_ap=0.142
	iewkint_nt_pa=0.054
	iewkint_nt_ap=0.044

	;IE NONWORK - INTERSTATES
	ienwint_ea_pa=0.022
	ienwint_ea_ap=0.014
	ienwint_am_pa=0.116
	ienwint_am_ap=0.100
	ienwint_md_pa=0.150
	ienwint_md_ap=0.161
	ienwint_pm_pa=0.134
	ienwint_pm_ap=0.156
	ienwint_nt_pa=0.077
	ienwint_nt_ap=0.068

	;IE WORK - OTHER
	iewkoth_ea_pa=0.045
	iewkoth_ea_ap=0.031
	iewkoth_am_pa=0.211
	iewkoth_am_ap=0.179
	iewkoth_md_pa=0.085
	iewkoth_md_ap=0.104
	iewkoth_pm_pa=0.106
	iewkoth_pm_ap=0.142
	iewkoth_nt_pa=0.054
	iewkoth_nt_ap=0.044

	;IE NONWORK - OTHER
	ienwoth_ea_pa=0.022
	ienwoth_ea_ap=0.014
	ienwoth_am_pa=0.116
	ienwoth_am_ap=0.100
	ienwoth_md_pa=0.150
	ienwoth_md_ap=0.161
	ienwoth_pm_pa=0.134
	ienwoth_pm_ap=0.156
	ienwoth_nt_pa=0.077
	ienwoth_nt_ap=0.068

	;EE PASSENGER CARS
	eepc_ea_pa=0.021
	eepc_ea_ap=0.021
	eepc_am_pa=0.112
	eepc_am_ap=0.112
	eepc_md_pa=0.182
	eepc_md_ap=0.182
	eepc_pm_pa=0.121
	eepc_pm_ap=0.121
	eepc_nt_pa=0.064
	eepc_nt_ap=0.064

	RUN PGM=MATRIX
		MATI[4]=IEWRKM{year}.VTT ; 1=INTERSTATE, 2=OTHER
		MATI[5]=IENWKM{year}.VTT
		MATI[6]=EEPC20{YEAR}.VTT
		MATI[7]=VEHOUT{year}.MTT ; AIR PASSENGER MODEL VEH TRIPS - Tables: BusRes,BusNR,NBRes,NBNR,TotVeh

		MATO[1]=EXTEA{year}.VTT,MO=101,NAME=SOV_IE,DEC=2*4
		MATO[2]=EXTAM{year}.VTT,MO=102,NAME=SOV_IE,DEC=2*4
		MATO[3]=EXTMD{year}.VTT,MO=103,NAME=SOV_IE,DEC=2*4
		MATO[4]=EXTPM{year}.VTT,MO=104,NAME=SOV_IE,DEC=2*4
		MATO[5]=EXTEV{year}.VTT,MO=105,NAME=SOV_IE,DEC=2*4

		ZONEMSG=100

		; Cube Cluster Controls
		DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

		;----- CONVERT DAILY P/A MATRICES TO PERIOD OD VEHICLE TRIPS
		MW[51]= MI.4.1*@iewkint_ea_pa@+MI.4.1.t*@iewkint_ea_ap@   ; IEWK - EA - INT
		MW[52]= MI.4.1*@iewkint_am_pa@+MI.4.1.t*@iewkint_am_ap@   ; IEWK - AM - INT
		MW[53]= MI.4.1*@iewkint_md_pa@+MI.4.1.t*@iewkint_md_ap@   ; IEWK - MD - INT
		MW[54]= MI.4.1*@iewkint_pm_pa@+MI.4.1.t*@iewkint_pm_ap@   ; IEWK - PM - INT
		MW[55]= MI.4.1*@iewkint_nt_pa@+MI.4.1.t*@iewkint_nt_ap@   ; IEWK - NT - INT

		MW[56]= MI.5.1*@ienwint_ea_pa@+MI.5.1.t*@ienwint_ea_ap@   ; IENW - EA - INT
		MW[57]= MI.5.1*@ienwint_am_pa@+MI.5.1.t*@ienwint_am_ap@   ; IENW - AM - INT
		MW[58]= MI.5.1*@ienwint_md_pa@+MI.5.1.t*@ienwint_md_ap@   ; IENW - MD - INT
		MW[59]= MI.5.1*@ienwint_pm_pa@+MI.5.1.t*@ienwint_pm_ap@   ; IENW - PM - INT
		MW[60]= MI.5.1*@ienwint_nt_pa@+MI.5.1.t*@ienwint_nt_ap@   ; IENW - NT - INT

		MW[61]= MI.4.2*@iewkoth_ea_pa@+MI.4.2.t*@iewkoth_ea_ap@   ; IEWK - EA - OTH
		MW[62]= MI.4.2*@iewkoth_am_pa@+MI.4.2.t*@iewkoth_am_ap@   ; IEWK - AM - OTH
		MW[63]= MI.4.2*@iewkoth_md_pa@+MI.4.2.t*@iewkoth_md_ap@   ; IEWK - MD - OTH
		MW[64]= MI.4.2*@iewkoth_pm_pa@+MI.4.2.t*@iewkoth_pm_ap@   ; IEWK - PM - OTH
		MW[65]= MI.4.2*@iewkoth_nt_pa@+MI.4.2.t*@iewkoth_nt_ap@   ; IEWK - NT - OTH

		MW[66]= MI.5.2*@ienwoth_ea_pa@+MI.5.2.t*@ienwoth_ea_ap@   ; IENW - EA - OTH
		MW[67]= MI.5.2*@ienwoth_am_pa@+MI.5.2.t*@ienwoth_am_ap@   ; IENW - AM - OTH
		MW[68]= MI.5.2*@ienwoth_md_pa@+MI.5.2.t*@ienwoth_md_ap@   ; IENW - MD - OTH
		MW[69]= MI.5.2*@ienwoth_pm_pa@+MI.5.2.t*@ienwoth_pm_ap@   ; IENW - PM - OTH
		MW[70]= MI.5.2*@ienwoth_nt_pa@+MI.5.2.t*@ienwoth_nt_ap@   ; IENW - NT - OTH

		MW[71]= MI.6.1*@eepc_ea_pa@+MI.6.1.t*@eepc_ea_ap@   ; EEPC - EA
		MW[72]= MI.6.1*@eepc_am_pa@+MI.6.1.t*@eepc_am_ap@   ; EEPC - AM
		MW[73]= MI.6.1*@eepc_md_pa@+MI.6.1.t*@eepc_md_ap@   ; EEPC - MD
		MW[74]= MI.6.1*@eepc_pm_pa@+MI.6.1.t*@eepc_pm_ap@   ; EEPC - PM
		MW[75]= MI.6.1*@eepc_nt_pa@+MI.6.1.t*@eepc_nt_ap@   ; EEPC - NT

		; Air Passenger Vehicles - Assume factors for HBO - SOV
		MW[111]= MI.7.5*@hbosov_ea_pa@+MI.7.5.t*@hbosov_ea_ap@   ; HBO - EA - SOV
		MW[112]= MI.7.5*@hbosov_am_pa@+MI.7.5.t*@hbosov_am_ap@   ; HBO - AM - SOV
		MW[113]= MI.7.5*@hbosov_md_pa@+MI.7.5.t*@hbosov_md_ap@   ; HBO - MD - SOV
		MW[114]= MI.7.5*@hbosov_pm_pa@+MI.7.5.t*@hbosov_pm_ap@   ; HBO - PM - SOV
		MW[115]= MI.7.5*@hbosov_nt_pa@+MI.7.5.t*@hbosov_nt_ap@   ; HBO - NT - SOV

		; OUTPUT TRIP TABLES
		;EA
		MW[101]=MW[51]+MW[56]+MW[61]+MW[66]+MW[71]+MW[111]  ; SOV
		;AM
		MW[102]=MW[52]+MW[57]+MW[62]+MW[67]+MW[72]+MW[112]  ; SOV
		;MD
		MW[103]=MW[53]+MW[58]+MW[63]+MW[68]+MW[73]+MW[113]  ; SOV
		;PM
		MW[104]=MW[54]+MW[59]+MW[64]+MW[69]+MW[74]+MW[114]  ; SOV
		;NT
		MW[105]=MW[55]+MW[60]+MW[65]+MW[70]+MW[75]+MW[115]    ; SOV
	ENDRUN

	PROMPT QUESTION="Waiting for Cluster Nodes to Restart" ANSWER="Waiting" WAIT={waitTime}

	:CheckCTRAMP
	IF({chkCTRAMP.n}=0) goto :SkipTripTabs

	;launch java
	*start config\StartHHMgrForNonDist.cmd

	spIter = INT(uwslcSPMaxI + (Loopnum - 2) * {uwslcSPMaxI2p})

	;write java properties file for CT-RAMP
	RUN PGM=MATRIX
		ZONES=1

		FILEO PRINTO[1]={propFile}.properties
		PRINT LIST='#-----------------------------------------' PRINTO=1
		PRINT LIST='#ARC Tour Based Model Java Properties File' PRINTO=1
		PRINT LIST='#-----------------------------------------' PRINTO=1
		PRINT LIST='Project.Directory= ','{projDir}/' PRINTO=1

		PRINT LIST='TazData.File= ','@zoneDataCSV@' PRINTO=1
		PRINT LIST='ZonalAccessibilities.file= ','@ZoneAccess@' PRINTO=1

		PRINT LIST='Debug.Trace.HouseholdIdList= ','{HHIDTrace}' PRINTO=1

		PRINT LIST='Results.WriteDataToFiles= ','{writeToFile}' PRINTO=1
		PRINT LIST='Results.HouseholdDataFile= ','@hhDataFile@' PRINTO=1
		PRINT LIST='Results.PersonDataFile= ','@perDataFile@' PRINTO=1
		PRINT LIST='Results.IndivTourDataFile= ','@iTourDataFile@' PRINTO=1
		PRINT LIST='Results.JointTourDataFile= ','@jTourDataFile@' PRINTO=1
		PRINT LIST='Results.IndivTripDataFile= ','@iTripDataFile@' PRINTO=1
		PRINT LIST='Results.JointTripDataFile= ','@jTripDataFile@' PRINTO=1

		IF('{printTripsData}'= 'True') 
			PRINT LIST='Results.TripDataFile= ','@tripsDataFile@' PRINTO=1
		ENDIF

		PRINT LIST='Results.WriteDataToDatabase= ','{writeToDB}' PRINTO=1
		PRINT LIST='Results.HouseholdTable= ','@hhTable@' PRINTO=1
		PRINT LIST='Results.PersonTable= ','@perTable@' PRINTO=1
		PRINT LIST='Results.IndivTourTable= ','@iTourTable@' PRINTO=1
		PRINT LIST='Results.JointTourTable= ','@jTourTable@' PRINTO=1
		PRINT LIST='Results.IndivTripTable= ','@iTripTable@' PRINTO=1
		PRINT LIST='Results.JointTripTable= ','@jTripTable@' PRINTO=1
		PRINT LIST='Model.Random.Seed= ','{randomSeed}' PRINTO=1

		PRINT LIST='RunModel.HouseholdServerAddress= ','{hhSerAdd}' PRINTO=1
		PRINT LIST='RunModel.HouseholdServerPort= ','{hhSerPort}' PRINTO=1

		IF (@Loopnum@ = 1) 
			PRINT LIST='RunModel.RestartWithHhServer= ','@RestartCode@' PRINTO=1
		ELSE
			PRINT LIST='RunModel.RestartWithHhServer= ','@RestartCode2p@' PRINTO=1
		ENDIF

		PRINT LIST='RunModel.PopulationSynthesizer= ','@runPopSyn@' PRINTO=1
		PRINT LIST='RunModel.UsualWorkAndSchoolLocationChoice= ','{runUWSLC}' PRINTO=1
		PRINT LIST='RunModel.AutoOwnership= ','{runAO}' PRINTO=1
		PRINT LIST='RunModel.FreeParking= ','{runFP}' PRINTO=1
		PRINT LIST='RunModel.CoordinatedDailyActivityPattern= ','{runCDAP}' PRINTO=1
		PRINT LIST='RunModel.IndividualMandatoryTourFrequency= ','{runIMTF}' PRINTO=1
		PRINT LIST='RunModel.MandatoryTourModeChoice= ','{runMTMC}' PRINTO=1
		PRINT LIST='RunModel.MandatoryTourDepartureTimeAndDuration= ','{runMTDTAP}' PRINTO=1
		PRINT LIST='RunModel.JointTourFrequency= ','{runJTF}' PRINTO=1
		PRINT LIST='RunModel.JointTourLocationChoice= ','{runJTLC}' PRINTO=1
		PRINT LIST='RunModel.JointTourModeChoice= ','{runTMC}' PRINTO=1
		PRINT LIST='RunModel.JointTourDepartureTimeAndDuration= ','{runTDTAD}' PRINTO=1
		PRINT LIST='RunModel.IndividualNonMandatoryTourFrequency= ','{runINMTF}' PRINTO=1
		PRINT LIST='RunModel.IndividualNonMandatoryTourLocationChoice= ','{runINMTLC}' PRINTO=1
		PRINT LIST='RunModel.IndividualNonMandatoryTourModeChoice= ','{runNMTMC}' PRINTO=1
		PRINT LIST='RunModel.IndividualNonMandatoryTourDepartureTimeAndDuration= ','{runINMTDTAD}' PRINTO=1
		PRINT LIST='RunModel.AtWorkSubTourFrequency= ','{runAWSF}' PRINTO=1
		PRINT LIST='RunModel.AtWorkSubTourLocationChoice= ','{runAWSLC}' PRINTO=1
		PRINT LIST='RunModel.AtWorkSubTourModeChoice= ','{runAWSMC}' PRINTO=1
		PRINT LIST='RunModel.AtWorkSubTourDepartureTimeAndDuration= ','{runAWSDTAD}' PRINTO=1
		PRINT LIST='RunModel.StopFrequency= ','{runSF}' PRINTO=1
		PRINT LIST='RunModel.StopLocation= ','{runSL}' PRINTO=1
		PRINT LIST='RunModel.StopTiming= ','{runST}' PRINTO=1
		PRINT LIST='RunModel.TripModeChoice= ','{runSMC}' PRINTO=1

		PRINT LIST='UecFile.DestinationChoice= ','@uecDC@' PRINTO=1
		PRINT LIST='UecFile.SampleOfAlternativesChoice= ','@uecSOAC@' PRINTO=1
		PRINT LIST='UecFile.AutoOwnership= ','@uecAO@' PRINTO=1
		PRINT LIST='UecFile.FreeParking= ','@uecFP@' PRINTO=1
		PRINT LIST='UecFile.CoordinatedDailyActivityPattern= ','@uecCDAP@' PRINTO=1
		PRINT LIST='UecFile.TourModeChoice= ','@uecTMC@' PRINTO=1
		PRINT LIST='UecFile.IndividualMandatoryTourFrequency= ','@uecIMTF@' PRINTO=1
		PRINT LIST='UecFile.AtWorkSubtourFrequency= ','@uecAWSF@' PRINTO=1
		PRINT LIST='UecFile.JointTourFrequency= ','@uecJTF@' PRINTO=1
		PRINT LIST='UecFile.IndividualNonMandatoryTourFrequency= ','@uecINMTF@' PRINTO=1
		PRINT LIST='UecFile.StopFrequency= ','@uecSF@' PRINTO=1
		PRINT LIST='UecFile.StopLocation= ','@uecSL@' PRINTO=1
		PRINT LIST='UecFile.StopLocationSoa= ','@uecSLS@' PRINTO=1
		PRINT LIST='UecFile.StopTimingChoiceStageOne= ','@uecST1@' PRINTO=1 
		PRINT LIST='UecFile.StopTimingChoiceStageTwo= ','@uecST2@' PRINTO=1 
		PRINT LIST='UecFile.TripModeChoice= ','@uecTripMC@' PRINTO=1
		PRINT LIST='UecFile.ParkingLocationChoice= ','@uecPLC@' PRINTO=1
		PRINT LIST='UecFile.TravelTime= ','@uecSkims@' PRINTO=1

		; new properties for Tour TOD models
		PRINT LIST='UecFile.TourDepartureTime= ','@uecTDT@' PRINTO=1
		PRINT LIST='UecFile.TourArrivalTime= ','@uecTAT@' PRINTO=1
		PRINT LIST='UecFile.TourDuration= ','@uecTD@' PRINTO=1
		PRINT LIST='UecFile.TourDepartureAndArrival= ','@uecTDAA@' PRINTO=1

		PRINT LIST='distributed.task.packet.size= ','{packetSize}' PRINTO=1
		PRINT LIST='initialization.packet.size= ','{initPacSize}' PRINTO=1
		PRINT LIST='number.initialization.packets= ','{numInitPac}' PRINTO=1
		PRINT LIST='PopulationSynthesizer.InputToCTRAMP.HouseholdFile= ','{popsynHHFile}' PRINTO=1
		PRINT LIST='PopulationSynthesizer.InputToCTRAMP.PersonFile= ','{popsynPerFile}' PRINTO=1

		PRINT LIST='UsualWorkAndSchoolLocationChoice.RunFlag.Work= ','{uwslcRunWork}' PRINTO=1
		PRINT LIST='UsualWorkAndSchoolLocationChoice.RunFlag.University= ','{uwslcRunUniv}' PRINTO=1
		PRINT LIST='UsualWorkAndSchoolLocationChoice.RunFlag.School= ','{uwslcRunSch}' PRINTO=1
		PRINT LIST='UsualWorkAndSchoolLocationChoice.SizeCoefficients.InputFile= ','@uwslcSTCInF@' PRINTO=1
		PRINT LIST='UsualWorkAndSchoolLocationChoice.AlternativesList.InputFile= ','@uwslcALInF@' PRINTO=1
		PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPricing.OutputFile= ','@uwslcSPOutF@_@Loopnum@.csv' PRINTO=1

		IF (@Loopnum@ = 1) 
			IF('{restartWSP}'= 'True' | '{alwaysfirstWSP}'='True')
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPrice.Input.File= ','{uwslcSPInF}', PRINTO=1
			ENDIF
			PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPricing.MaximumIterations= ','{uwslcSPMaxI}' PRINTO=1
		ELSEIF (@Loopnum@ = 2)
			IF('{alwaysfirstWSP}'='True')
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPrice.Input.File= ','{uwslcSPInF}', PRINTO=1
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPricing.MaximumIterations= ','{uwslcSPMaxI}' PRINTO=1
			ELSE
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPrice.Input.File= ','@uwslcSPOutF@_@prevLoop@_@uwslcSPMaxI@.csv', PRINTO=1
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPricing.MaximumIterations= ','{uwslcSPMaxI2p}' PRINTO=1
			ENDIF
		ELSEIF (@Loopnum@ > 2) 
			IF('{alwaysfirstWSP}'='True')
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPrice.Input.File= ','{uwslcSPInF}', PRINTO=1
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPricing.MaximumIterations= ','{uwslcSPMaxI}' PRINTO=1
			ELSE
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPrice.Input.File= ','@uwslcSPOutF@_@prevLoop@_@spIter@.csv', PRINTO=1
				PRINT LIST='UsualWorkAndSchoolLocationChoice.ShadowPricing.MaximumIterations= ','{uwslcSPMaxI2p}' PRINTO=1
			ENDIF
		ENDIF

		PRINT LIST='StopDestinationChoice.SizeCoefficients.InputFile= ','@sDCSCInF@' PRINTO=1
		PRINT LIST='StopPurposeLookup.Proportions= ','@sPurpLkupProp@' PRINTO=1
		PRINT LIST='UsualWorkAndSchoolLocationChoice.SampleOfAlternatives.SampleSize= ','{uwslcSOASS}' PRINTO=1
		PRINT LIST='JointTourLocationChoice.SampleOfAlternatives.SampleSize= ','{jtlcSOASS}' PRINTO=1
		PRINT LIST='IndividualNonMandatoryTourLocationChoice.SampleOfAlternatives.SampleSize= ','{inmtlcSOASS}' PRINTO=1
		PRINT LIST='AtWorkSubtourLocationChoice.SampleOfAlternatives.SampleSize= ','{awstlcSOASS}' PRINTO=1
		PRINT LIST='StopLocationSoa.SampleSize= ','{sLocSOASS}' PRINTO=1
		PRINT LIST='CBDParkingAlternatives.file= ','@cdbdPAF@' PRINTO=1

		PRINT LIST='TourDepartureAndDuration.SkimAlternativesList.InputFile = ','@tssaeALInF@' PRINTO=1
		PRINT LIST='TourDepartureAndDuration.DepartureAlternativesList.InputFile = ','@tdtALInF@' PRINTO=1
		PRINT LIST='TourDepartureAndDuration.ArrivalAlternativesList.InputFile = ','@tatALInF@' PRINTO=1
		PRINT LIST='TourDepartureAndDuration.DurationAlternativesList.InputFile = ','@tdALInF@' PRINTO=1

		PRINT LIST='IndividualNonMandatoryTourFrequency.AlternativesList.InputFile= ','@inmtfALInF@' PRINTO=1
		PRINT LIST='IndividualNonMandatoryTour.FrequencyExtension.ProbabilityFile= ','@inmtFEProbF@' PRINTO=1

		PRINT LIST='StopDepartureAndDurationStage1.AlternativesList.InputFile= ','@st1ALInF@' PRINTO=1
		PRINT LIST='StopDepartureAndDurationStage2.AlternativesList.InputFile= ','@st2ALInF@' PRINTO=1

		;added for the new SOA model
		PRINT LIST='StopLocationSoa.useGenericSOAModel= ','@soaSwitch@' PRINTO=1

		PRINT LIST='Results.UsualWorkAndSchoolLocationChoice= ','{rUWSLC}' PRINTO=1
		PRINT LIST='Results.AutoOwnership= ','{rAO}' PRINTO=1
		PRINT LIST='Results.CoordinatedDailyActivityPattern= ','{rCDAP}' PRINTO=1
		PRINT LIST='TourModeChoice.Save.UtilsAndProbs= ','{tmcSUP}' PRINTO=1
	ENDRUN

	;get sampling percent for iteration
	;pop 1st item from iteration stack
	endComma = STRPOS(',',sampSizeArray)

	IF(endComma = 0) 
		sampPercent = 1
	ELSE
		sampPercent = VAL(SUBSTR(sampSizeArray,1, endComma))
		sampSizeArray = SUBSTR(sampSizeArray, endComma+1, STRLEN(sampSizeArray)) 
	ENDIF

	;run CT-RAMP model

	;--- delete CT-RAMP output file if found in working folder
	*del indivTripData_@Loopnum@.csv
	*del jointTripData_@Loopnum@.csv

	;--- copy network skims to worker nodes
	;extract the scenario folder name in which the skims and other files are to be copied from
	;the same folder name is used as the target folder on the drives mapped to the node computers 
	_pos = 0
	_projDir = '{projDir}'
	_dirLen = STRLEN(_projDir)

:StartFindFolderName
	_posNext1 = STRPOSEX('\',_projDir,_pos+1)

	IF(_posNext1!=0)  _pos = _posNext1
	_posNext2 = STRPOSEX('/',_projDir,_pos+1)

	IF(_posNext2!=0)  _pos = _posNext2

	IF((_posNext1+_posNext2)==0)
		GOTO EndFindFolderName
	ELSE
		GOTO StartFindFolderName
	ENDIF

:EndFindFolderName
	_folderName = SubStr(_projDir,_pos+1,_dirLen-_pos+1)

	;--- create batch file to run CT-RAMP model
	RUN PGM=MATRIX
		ZONES=1

		IF('{printTripsData}'= 'True') 
			;writing out the travel time for trips requires more RAM to load the skims 
			listStr = ' -Xms{javaMem} -Xmx60g'
		ELSE
			listStr = ' -Xms{javaMem} -Xmx{javaMem}'
		ENDIF

		listStr = ' -Dname=main -Xmx500g'
			
		PRINT FILE='runModel_@Loopnum@.cmd' APPEND=F LIST= '{jdk64}\bin\java', listStr, 
			' -cp "{projDir};{projDir}/config;{projDir}/config/JPPF-5.2.7-full-src/JPPF/lib/slf4j/*;exec\arc-all.jar"',
			' -Xdebug -Xrunjdwp:transport=dt_socket,address=1040,server=y,suspend=n',
			' -Dlog4j.configuration=log4j.xml',
			' -Djava.library.path="{projDir}"',
			' -server',
			' -Djppf.config=jppf-gui.properties',
			' com.pb.arc.tourBased.ArcTourBasedModel "{propFile}"',
			' -iteration @Loopnum@',
			' -sampleRate @sampPercent@',
			' -sampleSeed @sampleSeed@'
	ENDRUN

	*{projDir}\runModel_@Loopnum@.cmd

	;copy and save log files by iteration
	*copy logfiles\event.log logfiles\event_@Loopnum@.log
	*copy logfiles\event_hh.log logfiles\event_hh_@Loopnum@.log

	*start config\killjava.cmd

	;Generate trip matrices from CT-RAMP trip list
	RUN PGM=MATRIX
		RECI=indivTripData_@loopnum@.CSV, DELIMITER=',' ORIG=10,DEST=12,INBOUND=6,DEPART=15,MODE=16,SORT=ORIG,DEST
		RECO[1]=indivTripDataEA.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[2]=indivTripDataAM.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[3]=indivTripDataMD.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[4]=indivTripDataPM.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[5]=indivTripDataEV.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		IF(RECI.RECNO>1)
			RO.ORIG=RI.ORIG
			RO.DEST=RI.DEST
			DA = 0                                
			DATOLL = 0                                
			SR2 = 0                                
			SR2TOLL = 0                                
			SR3 = 0                                
			SR3TOLL = 0                                
			WALK = 0
			BIKE = 0
			WLKALLWLK = 0
			WLKPRMWLK = 0
			PNRALLWLK = 0
			WLKALLPNR = 0
			PNRPRMWLK = 0
			WLKPRMPNR = 0
			KNRALLWLK = 0
			WLKALLKNR = 0
			KNRPRMWLK = 0
			WLKPRMKNR = 0
			SCHLBUS = 0 
			
			IF(RI.MODE=1)
				DA = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=2)
				DATOLL = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=3)
				SR2 = 1/2 * 1/@sampPercent@
			ELSEIF(RI.MODE=4)
				SR2TOLL = 1/2 * 1/@sampPercent@
			ELSEIF(RI.MODE=5)
				SR3 = 1/3.3 * 1/@sampPercent@
			ELSEIF(RI.MODE=6)
				SR3TOLL = 1/3.3 * 1/@sampPercent@
			ELSEIF(RI.MODE=7)
				WALK = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=8)
				BIKE = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=9)
				WLKALLWLK = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=10)
				WLKPRMWLK = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=11 & RI.INBOUND=0)
				PNRALLWLK = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=11 & RI.INBOUND=1)
				WLKALLPNR = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=12 & RI.INBOUND=0)
				PNRPRMWLK = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=12 & RI.INBOUND=1)
				WLKPRMPNR = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=13 & RI.INBOUND=0)
				KNRALLWLK = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=13 & RI.INBOUND=1)
				WLKALLKNR = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=14 & RI.INBOUND=0)
				KNRPRMWLK = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=14 & RI.INBOUND=1)
				WLKPRMKNR = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=15)
				SCHLBUS = 1 * 1/@sampPercent@
			ENDIF
			
			IF(RI.DEPART<=6)    WRITE RECO=1
			IF(RI.DEPART=7-14)  WRITE RECO=2
			IF(RI.DEPART=15-24) WRITE RECO=3
			IF(RI.DEPART=25-32) WRITE RECO=4
			IF(RI.DEPART>=33)   WRITE RECO=5
		ENDIF
	ENDRUN

	LOOP N=1,5
		IF(N=1) PER='EA'
		IF(N=2) PER='AM'
		IF(N=3) PER='MD'
		IF(N=4) PER='PM'
		IF(N=5) PER='EV'
	
		;sort by orig/dest after flipping in previous step based on drive egress
		RUN PGM=MATRIX
			RECI=IndivTripData@PER@.TMP,SORT=ORIG,DEST
			RECO=IndivTripData@PER@.DBF,FIELDS=RECI.ALLFIELDS
			WRITE RECO=1
		ENDRUN
	ENDLOOP

	; distribute via cluster
	DistributeMultistep ProcessID="{ProcID}",ProcessNum=1
	RUN PGM=MATRIX
		MATI=IndivTripDataEA.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_indiv_EA.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=2
	RUN PGM=MATRIX
		MATI=IndivTripDataAM.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_indiv_AM.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=3
	RUN PGM=MATRIX
		MATI=IndivTripDataMD.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_indiv_MD.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=4
	RUN PGM=MATRIX
		MATI=IndivTripDataPM.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_indiv_PM.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=5
	RUN PGM=MATRIX
		MATI=IndivTripDataEV.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_indiv_EV.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	Wait4Files Files={ProcID}1.script.end, {ProcID}2.script.end, {ProcID}3.script.end,{ProcID}4.script.end, 
		{ProcID}5.script.end, checkreturncode=T,printfiles=MERGE,deldistribfiles=T

	RUN PGM=MATRIX
		RECI=jointTripData_@loopnum@.CSV, DELIMITER=',' ORIG=8,DEST=10,INBOUND=4,DEPART=13,MODE=14,NUMPAR=15,SORT=ORIG,DEST
		RECO[1]=jointTripDataEA.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[2]=jointTripDataAM.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[3]=jointTripDataMD.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[4]=jointTripDataPM.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		RECO[5]=jointTripDataEV.TMP,FIELDS=ORIG,DEST,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		IF(RECI.RECNO>1)
			RO.ORIG=RI.ORIG
			RO.DEST=RI.DEST
			DA = 0                                
			DATOLL = 0                                
			SR2 = 0                                
			SR2TOLL = 0                                
			SR3 = 0                                
			SR3TOLL = 0                                
			WALK = 0
			BIKE = 0
			WLKALLWLK = 0
			WLKPRMWLK = 0
			PNRALLWLK = 0
			WLKALLPNR = 0
			PNRPRMWLK = 0
			WLKPRMPNR = 0
			KNRALLWLK = 0
			WLKALLKNR = 0
			KNRPRMWLK = 0
			WLKPRMKNR = 0
			SCHLBUS = 0 
			
			IF(RI.MODE=1)
				DA = 0 * 1/@sampPercent@
			ELSEIF(RI.MODE=2)
				DATOLL = 0 * 1/@sampPercent@
			ELSEIF(RI.MODE=3)
				SR2 = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=4)
				SR2TOLL = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=5)
				SR3 = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=6)
				SR3TOLL = 1 * 1/@sampPercent@
			ELSEIF(RI.MODE=7)
				WALK = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=8)
				BIKE = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=9)
				WLKALLWLK = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=10)
				WLKPRMWLK = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=11 & RI.INBOUND=0)
				PNRALLWLK = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=11 & RI.INBOUND=1)
				WLKALLPNR = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=12 & RI.INBOUND=0)
				PNRPRMWLK = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=12 & RI.INBOUND=1)
				WLKPRMPNR = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=13 & RI.INBOUND=0)
				KNRALLWLK = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=13 & RI.INBOUND=1)
				WLKALLKNR = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=14 & RI.INBOUND=0)
				KNRPRMWLK = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=14 & RI.INBOUND=1)
				WLKPRMKNR = RI.NUMPAR * 1/@sampPercent@
			ELSEIF(RI.MODE=15)
				SCHLBUS = RI.NUMPAR * 1/@sampPercent@
			ENDIF
			
			IF(RI.DEPART<=6)    WRITE RECO=1
			IF(RI.DEPART=7-14)  WRITE RECO=2
			IF(RI.DEPART=15-24) WRITE RECO=3
			IF(RI.DEPART=25-32) WRITE RECO=4
			IF(RI.DEPART>=33)   WRITE RECO=5
		ENDIF
	ENDRUN

	LOOP N=1,5
		IF(N=1) PER='EA'
		IF(N=2) PER='AM'
		IF(N=3) PER='MD'
		IF(N=4) PER='PM'
		IF(N=5) PER='EV'

		RUN PGM=MATRIX
			RECI=JointTripData@PER@.TMP,SORT=ORIG,DEST
			RECO=JointTripData@PER@.DBF,FIELDS=RECI.ALLFIELDS
			WRITE RECO=1
		ENDRUN
	ENDLOOP

	; distribute via cluster
	DistributeMultistep ProcessID="{ProcID}",ProcessNum=1
	RUN PGM=MATRIX
		MATI=JointTripDataEA.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_joint_EA.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=2
	RUN PGM=MATRIX
		MATI=JointTripDataAM.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_joint_AM.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=3
	RUN PGM=MATRIX
		MATI=JointTripDataMD.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_joint_MD.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=4
	RUN PGM=MATRIX
		MATI=JointTripDataPM.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_joint_PM.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	DistributeMultistep ProcessID="{ProcID}",ProcessNum=5
	RUN PGM=MATRIX
		MATI=JointTripDataEV.DBF,PATTERN=IJM:V,FIELDS=ORIG,DEST,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		MATO=trips_joint_EV.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
										WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
										KNRPRMWLK,WLKPRMKNR,SCHLBUS
		ZONES={lastin}
		ZONEMSG=100
		FILLMW MW[1]=MI.1.1(19)
	ENDRUN
	EndDistributeMultiStep

	Wait4Files Files={ProcID}1.script.end, {ProcID}2.script.end, {ProcID}3.script.end,{ProcID}4.script.end, 
		{ProcID}5.script.end, checkreturncode=T,printfiles=MERGE,deldistribfiles=T

	LOOP X=1,5
		IF(X=1) PER='EA'
		IF(X=2) PER='AM'
		IF(X=3) PER='MD'
		IF(X=4) PER='PM'
		IF(X=5) PER='EV'
	
	; merge indiv and joint matrices
		RUN PGM = MATRIX
			FILEI MATI[1] = trips_indiv_@PER@.tpp
			FILEI MATI[2] = trips_joint_@PER@.tpp
			FILEO MATO[1] = trips@PER@.tpp, MO=1-19,
					NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,
					WALK, BIKE, WLK_ALL_WLK, WLK_PRM_WLK,
					PNR_ALL_WLK, WLK_ALL_PNR, PNR_PRM_WLK, WLK_PRM_PNR,
					KNR_ALL_WLK, WLK_ALL_KNR, KNR_PRM_WLK, WLK_PRM_KNR,
					SCHLBUS

			ZONES=@numZones@                 

			ZONEMSG=100
			MW[1] = MI.1.1  + MI.2.1      ; DA        
			MW[2] = MI.1.2  + MI.2.2      ; DATOLL    
			MW[3] = MI.1.3  + MI.2.3      ; SR2       
			MW[4] = MI.1.4  + MI.2.4      ; SR2TOLL   
			MW[5] = MI.1.5  + MI.2.5      ; SR3       
			MW[6] = MI.1.6  + MI.2.6      ; SR3TOLL   
			MW[7] = MI.1.7  + MI.2.7      ; WALK      
			MW[8] = MI.1.8  + MI.2.8      ; BIKE      
			MW[9] = MI.1.9  + MI.2.9      ; WLK_ALL_WLK
			MW[10]= MI.1.10 + MI.2.10     ; WLK_PRM_WLK
			MW[11]= MI.1.11 + MI.2.11     ; PNR_ALL_WLK
			MW[12]= MI.1.12 + MI.2.12     ; WLK_ALL_PNR
			MW[13]= MI.1.13 + MI.2.13     ; PNR_PRM_WLK
			MW[14]= MI.1.14 + MI.2.14     ; WLK_PRM_PNR
			MW[15]= MI.1.15 + MI.2.15     ; KNR_ALL_WLK
			MW[16]= MI.1.16 + MI.2.16     ; WLK_ALL_KNR
			MW[17]= MI.1.17 + MI.2.17     ; KNR_PRM_WLK
			MW[18]= MI.1.18 + MI.2.18     ; WLK_PRM_KNR
			MW[19]= MI.1.19 + MI.2.19     ; SCHLBUS  
		ENDRUN
	ENDLOOP

	;Track trip tables for each feedback loop
	RUN PGM=MATRIX
		MATI[1]=tripsEA.TPP
		MATI[2]=tripsAM.TPP
		MATI[3]=tripsMD.TPP
		MATI[4]=tripsPM.TPP
		MATI[5]=tripsEV.TPP
		MATO[1]=tripsEA_@Loopnum@.TPP,MO=101-119,
				NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,
					WALK, BIKE, WLK_ALL_WLK, WLK_PRM_WLK,
					PNR_ALL_WLK, WLK_ALL_PNR, PNR_PRM_WLK, WLK_PRM_PNR,
					KNR_ALL_WLK, WLK_ALL_KNR, KNR_PRM_WLK, WLK_PRM_KNR,
					SCHLBUS
		MATO[2]=tripsAM_@Loopnum@.TPP,MO=201-219,
				NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,
					WALK, BIKE, WLK_ALL_WLK, WLK_PRM_WLK,
					PNR_ALL_WLK, WLK_ALL_PNR, PNR_PRM_WLK, WLK_PRM_PNR,
					KNR_ALL_WLK, WLK_ALL_KNR, KNR_PRM_WLK, WLK_PRM_KNR,
					SCHLBUS
		MATO[3]=tripsMD_@Loopnum@.TPP,MO=301-319,
				NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,
					WALK, BIKE, WLK_ALL_WLK, WLK_PRM_WLK,
					PNR_ALL_WLK, WLK_ALL_PNR, PNR_PRM_WLK, WLK_PRM_PNR,
					KNR_ALL_WLK, WLK_ALL_KNR, KNR_PRM_WLK, WLK_PRM_KNR,
					SCHLBUS
		MATO[4]=tripsPM_@Loopnum@.TPP,MO=401-419,
				NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,
					WALK, BIKE, WLK_ALL_WLK, WLK_PRM_WLK,
					PNR_ALL_WLK, WLK_ALL_PNR, PNR_PRM_WLK, WLK_PRM_PNR,
					KNR_ALL_WLK, WLK_ALL_KNR, KNR_PRM_WLK, WLK_PRM_KNR,
					SCHLBUS
		MATO[5]=tripsEV_@Loopnum@.TPP,MO=501-519,
				NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,
					WALK, BIKE, WLK_ALL_WLK, WLK_PRM_WLK,
					PNR_ALL_WLK, WLK_ALL_PNR, PNR_PRM_WLK, WLK_PRM_PNR,
					KNR_ALL_WLK, WLK_ALL_KNR, KNR_PRM_WLK, WLK_PRM_KNR,
					SCHLBUS

		ZONEMSG=25
		FILLMW MW[101]=MI.1.1(19)
		FILLMW MW[201]=MI.2.1(19)
		FILLMW MW[301]=MI.3.1(19)
		FILLMW MW[401]=MI.4.1(19)
		FILLMW MW[501]=MI.5.1(19)
	ENDRUN

	;create daily trip table for each feedback loop
	RUN PGM=MATRIX
		MATI[1]=tripsEA_@Loopnum@.TPP
		MATI[2]=tripsAM_@Loopnum@.TPP
		MATI[3]=tripsMD_@Loopnum@.TPP
		MATI[4]=tripsPM_@Loopnum@.TPP
		MATI[5]=tripsEV_@Loopnum@.TPP
		MATO=tripsDY_@Loopnum@.TPP,MO=1-19,
				NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,
					WALK, BIKE, WLK_ALL_WLK, WLK_PRM_WLK,
					PNR_ALL_WLK, WLK_ALL_PNR, PNR_PRM_WLK, WLK_PRM_PNR,
					KNR_ALL_WLK, WLK_ALL_KNR, KNR_PRM_WLK, WLK_PRM_KNR,
					SCHLBUS

		ZONEMSG=25
		FILLMW MW[101]=MI.1.1(19)
		FILLMW MW[201]=MI.2.1(19)
		FILLMW MW[301]=MI.3.1(19)
		FILLMW MW[401]=MI.4.1(19)
		FILLMW MW[501]=MI.5.1(19)

		TOT1 = ROWADD(1,101,201,301,401,501)
		TOT2 = ROWADD(2,102,202,302,402,502)
		TOT3 = ROWADD(3,103,203,303,403,503)
		TOT4 = ROWADD(4,104,204,304,404,504)
		TOT5 = ROWADD(5,105,205,305,405,505)
		TOT6 = ROWADD(6,106,206,306,406,506)
		TOT7 = ROWADD(7,107,207,307,407,507)
		TOT8 = ROWADD(8,108,208,308,408,508)
		TOT9 = ROWADD(9,109,209,309,409,509)
		TOT10= ROWADD(10,110,210,310,410,510)
		TOT11= ROWADD(11,111,211,311,411,511)
		TOT12= ROWADD(12,112,212,312,412,512)
		TOT13= ROWADD(13,113,213,313,413,513)
		TOT14= ROWADD(14,114,214,314,414,514)
		TOT15= ROWADD(15,115,215,315,415,515)
		TOT16= ROWADD(16,116,216,316,416,516)
		TOT17= ROWADD(17,117,217,317,417,517)
		TOT18= ROWADD(18,118,218,318,418,518)
		TOT19= ROWADD(19,119,219,319,419,519)
	ENDRUN

	;copy CT-RAMP CSV file for use after model run
	*copy pctwkt{year}.csv pctwkt.csv
	*copy hhData_@Loopnum@.csv hhData.csv
	*copy personData_@Loopnum@.csv personData.csv
	*copy wsLocResults_@Loopnum@.csv wsLocResults.csv 
	*copy indivTourData_@Loopnum@.csv indivTourData.csv
	*copy jointTourData_@Loopnum@.csv jointTourData.csv
	*copy indivTripData_@Loopnum@.csv indivTripData.csv
	*copy jointTripData_@Loopnum@.csv jointTripData.csv
	*copy tripData_@Loopnum@.csv tripData.csv
	*copy travelTimeData_@Loopnum@.csv travelTimeData.csv

	LOOP TOD=1,5
		IF(TOD=1) PER='EA'
		IF(TOD=2) PER='AM'
		IF(TOD=3) PER='MD'
		IF(TOD=4) PER='PM'
		IF(TOD=5) PER='EV'

		;Apply toll diversion to external passenger car trips
		; Compute toll probability from time savings, toll value, and willingness-to-pay
		RUN PGM=MATRIX
			MATI[1]=SOV_1_FREE_@PER@.SKM  ; drive alone free skims
			MATI[2]=SOV_1_TOLL_@PER@.SKM  ; drive alone toll skims
			MATO[1]=TollProbability_@PER@.SKM,MO=1,2,13,23,21,101,NAME=PROB,FREE_TIME,TOLL_TIME,TOLL,SAVE
			ZONEMSG=100

			;Fill temporary tables
			FILLMW MW[11]=MI.1.1(3)  ; drive alone free = 11-toll 12-distance 13-time
			FILLMW MW[21]=MI.2.1(4)  ; drive alone toll = 21-toll 22-distance 23-time 24-tolldistance

			;Create toll probalities based on willingness to pay curve
			JLOOP
				IF(MW[21] > 0)  ;check for toll
					MW[101]=MW[13]-MW[23]  ;travel time savings
				ELSE
					MW[101]=0
				ENDIF
				
				IF(MW[21]>0 & MW[101]>0)  ;check for toll and travel time savings
					MW[1]=EXP(-1.65 * (MW[21]*60/25 / MW[101]))  ;estimate toll probability
				ELSE
					MW[1]=0
				ENDIF
				
				MW[2]=1-MW[1]  ;non-toll probability
			ENDJLOOP
		ENDRUN

		;apply toll probabilities to external passenger car trips
		RUN PGM=MATRIX
			MATI[1]=EXT@PER@{year}.VTT
			MATI[2]=TollProbability_@PER@.SKM
			MATO[1]=EXT@PER@{year}_TollNonToll.VTT,MO=1-2,NAME=SOV_FREE,SOV_TOLL
			ZONEMSG=100

			; Cube Cluster Controls
			DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

			;fill temporary tables
			FILLMW MW[11]=MI.1.1     ; 11-sov external trips
			FILLMW MW[21]=MI.2.1(2)  ; 21-toll share 22-free share

			MW[1]=MW[11] * MW[22]  ; free external trips
			MW[2]=MW[11] * MW[21]  ; toll external trips
		ENDRUN

		;convert CT-RAMP output trip matrix to SOV,HOV expected by assignment
		;save legacy TOD table format for model summary scripts (jln 04-14-14 revised code for externals split by free/willing-to-pay)
		RUN PGM=MATRIX
			MATI[1]=trips@per@.tpp
			MATI[2]=EXT@per@{year}_TollNonToll.VTT
			MATO[1]=TOD@per@{year}.VTT,MO=1-4,NAME=SOV,HOV,HOV2,HOV3,DEC=4*4
			MATO[2]=TOD@per@{year}_asgn.VTT,MO=11-16,NAME=SOVF,SOVT,HOV2F,HOV2T,HOV3F,HOV3T,DEC=6*4
			ZONEMSG=100
		  
			; Cube Cluster Controls
			DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

			MW[1]= MI.1.1 + MI.1.2 + MI.2.1 + MI.2.2  ; AM SOV + externals
			MW[2]= MI.1.3 + MI.1.4 + MI.1.5 + MI.1.6  ; AM HOV
			MW[3]= MI.1.3 + MI.1.4                    ; AM Shared Ride 2 (free + toll)
			MW[4]= MI.1.5 + MI.1.6                    ; AM Shared Ride 3+ (free + toll)
			MW[11] = MI.1.1 + MI.2.1                  ; sov free (internal & external)
			MW[12] = MI.1.2 + MI.2.2                  ; sov toll (internal & external - toll diversion)
			MW[13] = MI.1.3                           ; hov2 free
			MW[14] = MI.1.4                           ; hov2 toll
			MW[15] = MI.1.5                           ; hov3+ free
			MW[16] = MI.1.6                           ; hov3+ toll
		ENDRUN
	ENDLOOP
	PROMPT QUESTION="Waiting for Cluster Nodes to Restart" ANSWER="Waiting" WAIT={waitTime}

	;Highway Assignment
:SkipTripTabs
IF({chklod.n}=0) goto :EndFB

	LOOP TOD=1,5
		IF(TOD=1)
			PER='EA'
			CAPFAC=1.66
			MAXITER={iteration}
		ELSEIF(TOD=2)
			PER='AM'
			CAPFAC=3.66
			MAXITER={iteration}
		ELSEIF(TOD=3)
			PER='MD'
			CAPFAC=4.70
			MAXITER={iteration}
		ELSEIF(TOD=4)
			PER='PM'
			MAXITER={iteration}
			CAPFAC=3.66
		ELSEIF(TOD=5)
			PER='EV'
			MAXITER={iteration}
			CAPFAC=3.91
		ENDIF

		RUN PGM=HIGHWAY, PRNFILE=HwyAssign@per@.rpt
			id = "20{year} highway assignment, period @per@
			MATI[1] = TOD@per@{year}_asgn.VTT
			MATI[2] = com.trp
			MATI[3] = mtk.trp
			MATI[4] = htkbypass.trp
			MATI[5] = htknobypass.trp
			NETI=hwy{year}ff.NET 
			NETO=lod{year}@per@.tmp

			PARAMETERS MAXITERS = @maxiter@  ;Max numbers of iterations allowed
			PARAMETERS RELATIVEGAP=0.0001, GAP=0, AAD=0, RAAD=0  ;closure criteria
			PARAMETERS COMBINE=EQUI, MULTITHREAD={XCPU} ENHANCE=2, SMOOTH=0  ;bi-conjugate FW with multi-thread

			; Cube Cluster Controls
			DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

			PHASE=LINKREAD                                     ;read in link variables from input file
				C  = li.@per@capacity*@capfac@
				T0 = li.time1 
				linkclass=li.factype+1                         ;define linkclass by assignment group

				;make interstate more attractive for heavy trucks
				IF(li.factype=1)
					lw.trkdist = 0.70 * li.distance
				ELSE
					lw.trkdist = li.distance
				ENDIF
				
				IF(li.WeaveFlag=1)                                ;linkclass for major interchanges
					linkclass=16
				ENDIF
				
			   ; Set Prohibitions
				IF(li.factype> 49)    ADDTOGROUP=1    ; Transit only
				IF((li.TOLL@per@>0) & (li.prohibit!=3 && li.prohibit!=7 && li.prohibit!=8 && li.prohibit!=9 && li.prohibit!=10 && li.prohibit!=11 && li.prohibit!=12))
					ADDTOGROUP=15   ; Toll - All Vehicles Allowed and Tolled
				ENDIF
				IF(li.prohibit= 1) ADDTOGROUP=3    ; No Trucks
				IF(li.prohibit= 2) ADDTOGROUP=4    ; HOV 2+
				IF(li.prohibit= 3) ADDTOGROUP=5    ; Managed Lanes - SOV Toll - HOV 2+ Free - No Trucks
				IF(li.prohibit= 4) ADDTOGROUP=6    ; Truck Only Lanes
				IF(li.prohibit= 5) ADDTOGROUP=7    ; I-285 Bypass
				IF(li.prohibit= 6) ADDTOGROUP=8    ; HOV 3+
				IF(li.prohibit= 7) ADDTOGROUP=9    ; Managed Lanes - SOV & HOV2 Toll - HOV 3+ Free - No Trucks
				IF(li.prohibit= 8) ADDTOGROUP=10   ; Managed Lanes - SOV & Truck Toll - HOV 2+ Free
				IF(li.prohibit= 9) ADDTOGROUP=11   ; Managed Lanes - SOV, HOV2 and Truck Toll - HOV 3+ Free
				IF(li.prohibit=10) ADDTOGROUP=12   ; Truck Only Toll
				IF(li.prohibit=11) ADDTOGROUP=13   ; Managed Lanes - HOV2 Toll - HOV 3+ Free - No Trucks or SOV
				IF(li.prohibit=12) ADDTOGROUP=14   ; Managed Lanes - SOV and HOV2+ Toll - No Trucks
				IF(li.prohibit=13) ADDTOGROUP=15   ; Managed Lanes - All Vehicles Allowed and Tolled
				IF(li.factype=1-49 & (li.lanes + li.lanes@per@ = 0)) ADDTOGROUP=32  ;links with zero lanes or period lanes

				; value of time
				votpc = {avot} / 60   ; $/min
				vottk = {tvot} / 60   ; $/min
				opcpc = {aoc}
				opctk = {toc}

				lw.fftime=li.time1
				lw.sovtoll=li.toll@per@
				
				IF(li.prohibit=3,8)  ; managed lanes - SOV toll, HOV2+ free
					lw.hov2toll=0
					lw.hov3toll=0
				ELSEIF(li.prohibit=7,9,11)  ; managed lanes - HOV2 toll, HOV3+ free
					lw.hov2toll = li.toll@per@
					lw.hov3toll=0
				ELSE
					lw.hov2toll = li.toll@per@
					lw.hov3toll = li.toll@per@
				ENDIF
			   
				; Add Time Penalty for Trucks at the Financial Center Tunnel (GA400)
				IF((a=269931 & b=57887) | (a=255012 & b=234098)) lw.trkpen=5
				lw.trktoll=li.toll@per@
			
				;calculate gen cost by user class
				; Re-label volumes:
					; 1 = SOV Free&Toll
					; 2 = HOV 2 Free&Toll
					; 3 = HOV 3+ Free&Toll
					; 4 = COM
					; 5 = MTK
					; 6 = HTK
				
				;compute generalized cost by user class
				IF(iteration=0)
					lw.sovcost  = lw.fftime*votpc + lw.sovtoll  + {distwgt}*li.distance*opcpc
					lw.hov2cost = lw.fftime*votpc + lw.hov2toll + {distwgt}*li.distance*opcpc
					lw.hov3cost = lw.fftime*votpc + lw.hov3toll + {distwgt}*li.distance*opcpc
					lw.htkcost  = (lw.fftime+lw.trkpen)*vottk + lw.trktoll + {distwgt}*lw.trkdist*opctk
					lw.mtkcost  = (lw.fftime+lw.trkpen)*vottk + lw.trktoll + {distwgt}*li.distance*opctk
				ENDIF
			ENDPHASE                         

			PHASE=ILOOP
				; Volume Sets: sov(1) hov2(2) hov3(3) com(4) mtk(5) htk(6)
				; Free trips (can not use toll paths)
				MW[1]=MI.1.sovf       ; SOV
				MW[2]=MI.1.hov2f      ; HOV2
				MW[3]=MI.1.hov3f      ; HOV3+
				MW[4]=0               ; COM
				MW[5]=0               ; MTK
				MW[6]=0               ; HTK I-285 BYPASS
				MW[7]=0               ; HTK NO I-285 BYPASS
				; Toll trips (can use free and toll paths)
				MW[11]=MI.1.sovt     ; SOV
				MW[12]=MI.1.hov2t    ; HOV2
				MW[13]=MI.1.hov3t    ; HOV3+
				MW[14]=MI.2.@per@COM   ; COM
				MW[15]=MI.3.@per@MTK   ; MTK
				MW[16]=MI.4.@per@HTK   ; HTK I-285 BYPASS
				MW[17]=MI.5.@per@HTK   ; HTK NO I-285 BYPASS
			
				;Assign Non-Toll Trips =======================
				;Assign SOV, COM
				pathload path=lw.sovcost,DEC=F2 vol[1]=MW[1], excludegrp=1,4,5,6,8,9,10,11,12,13,14,15,32
				;Assign HOV 2
				pathload path=lw.hov2cost,DEC=F2 vol[2]=MW[2],excludegrp=1,6,8,9,11,12,13,14,15,32
				;Assign HOV 3
				pathload path=lw.hov3cost,DEC=F2 vol[3]=MW[3],excludegrp=1,6,12,14,15,32
				;Assign some Heavy Trucks to a path that does not go inside I-285
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[6], excludegrp=1,3,4,5,7,8,9,13,14,15,32
				; Assign all Medium Trucks to no forced bypass path
				pathload path=lw.mtkcost,DEC=F2 vol[5]=MW[5], excludegrp=1,3,4,5,8,9,13,14,15,32
				; Assign other Heavy Trucks
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[7], excludegrp=1,3,4,5,8,9,13,14,15,32
				
				;Assign Toll Trips ===========================
				;Assign SOV, COM
				pathload path=lw.sovcost,DEC=F2 vol[1]=MW[11], excludegrp=1,4,6,8,12,13,32
				;Assign HOV 2
				pathload path=lw.hov2cost,DEC=F2 vol[2]=MW[12],excludegrp=1,6,8,12,32
				;Assign HOV 3
				pathload path=lw.hov3cost,DEC=F2 vol[3]=MW[13],excludegrp=1,6,12,32
				;Assign some Heavy Trucks to a path that does not go inside I-285
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[16], excludegrp=1,3,4,5,7,8,9,13,14,32
				;Assign Medium Trucks to no forced bypass path
				pathload path=lw.mtkcost,DEC=F2 vol[5]=MW[15], excludegrp=1,3,4,5,8,9,13,14,32
				;Assign other Heavy Trucks to no forced bypass path
				pathload path=lw.htkcost,DEC=F2 vol[6]=MW[17], excludegrp=1,3,4,5,8,9,13,14,32
				;Assign COM ===========================
				pathload path=lw.sovcost,DEC=F2 vol[4]=MW[14], excludegrp=1,3,4,5,8,9,13,14,32
			ENDPHASE
		  
			PHASE=ADJUST  
				;set volume delay functions
				FUNCTION {
					; Cent conn  
					TC[1]=  T0
					; Freeway
					TC[2]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway
					TC[5]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - HOV concurrent
					TC[6]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - HOV barrier
					TC[7]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - Truck
					TC[16]= T0 * (1 + 0.20 * V/C + 1.25 * ((V/C)^5.5))   ; Freeway weaving section
					; Ramp    
					TC[8]=  T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; sys-sys ramp
					TC[9]=  T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; exit ramp
					TC[10]= T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; entrance ramp
					; Expressway/Parkway    
					TC[3]=  T0 * (1 + 0.00 * V/C + 1.0 * ((V/C)^4))      ; Expressway
					TC[4]=  T0 * (1 + 0.00 * V/C + 1.25* ((V/C)^4))      ; Parkwy
					; Arterial
					TC[11]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Principal Arterial
					TC[12]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Minor Arterial
					TC[13]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Arterial HOV
					TC[14]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Arterial truck
					; Collector
					TC[15]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Collector
				}

				; Output link volume sets:
					; 1 = SOV ; 2 = HOV2 ; 3 = HOV3+
					; 4 = COM ; 5 = MTK ; 6 = HTK
		   
				;PCE factors are applied to medium duty trucks (1.5) and heavy duty trucks (2.0) in the vdf lookup.
				;The output VC ratios include the PCE factors, however, the volumes do not!!!
				;total volume function with PCE factors
				FUNCTION V = vol[1]+vol[2]+vol[3]+vol[4]+1.5*vol[5]+2.0*vol[6]
		   
				;update link costs by user class
				lw.sovcost  = time*votpc + lw.sovtoll  + {distwgt}*li.distance*opcpc
				lw.hov2cost = time*votpc + lw.hov2toll + {distwgt}*li.distance*opcpc
				lw.hov3cost = time*votpc + lw.hov3toll + {distwgt}*li.distance*opcpc
				lw.mtkcost  = (time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*li.distance*opctk
				lw.htkcost  = (time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*lw.trkdist*opctk
					 
				FUNCTION COST=((time*votpc + lw.sovtoll  + {distwgt}*li.distance*opcpc) * (V1+V4) +
					(time*votpc + lw.hov2toll + {distwgt}*li.distance*opcpc) * V2 +
					(time*votpc + lw.hov3toll + {distwgt}*li.distance*opcpc) * (V3) +
					((time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*li.distance*opctk) * (1.5*(V5)) +
					((time+lw.trkpen)*vottk + lw.trktoll + {distwgt}*lw.trkdist*opctk) * (2.0*(V6))) / CmpNumRetNum(V,'=',0,1,V)
			ENDPHASE
		  
			;ensure convergence on relative gap
			PHASE=CONVERGE
				IF(ITERATION < 6) BREAK         ; do not check if fewer than 6 iterations
				IF( (RGAP[ITERATION]<RGAPCUTOFF) && (RGAP[ITERATION-1]<RGAPCUTOFF) && (RGAP[ITERATION-2]<RGAPCUTOFF) )
					BALANCE=1
				ENDIF
			ENDPHASE
		ENDRUN
		PROMPT QUESTION="Waiting for Cluster Nodes to Restart" ANSWER="Waiting" WAIT={waitTime}

		RUN PGM=NETWORK            
			;Round volumes
			NETI=lod{year}@per@.tmp
			NETO=LOD{year}@per@_Loop@loopnum@.net,
				Exclude=VT_1,V1T_1,V2T_1,V3T_1,V4T_1,V5T_1,V6T_1,V_1,V1_1,V2_1,V3_1,V4_1,V5_1,V6_1,
					cspd_1,vdt_1,vht_1
			ZONES= {totzones}
			
			V_SOV@per@ = ROUND(V1_1)                          ;round SOV volumes
			V_HOV@per@ = ROUND(V2_1+V3_1)                     ;round HOV volumes
			V_HOV2@per@ = ROUND(V2_1)                         ;round HOV2 volumes
			V_HOV3@per@ = ROUND(V3_1)                         ;round HOV3+ volumes
			V_COM@per@ = ROUND(V4_1)                          ;round COM volumes
			V_MTK@per@ = ROUND(V5_1)                          ;round MTK volumes
			V_HTK@per@ = ROUND(V6_1)                          ;round HTK volumes
			V_TOT@per@ = ROUND(V1_1+V2_1+V3_1+V4_1+V5_1+V6_1) ;round total volumes
			V_TRK@per@ = ROUND(V4_1 + V5_1 + V6_1)            ;round COM, MTK and HTK volumes (for emissions)

			;estimate LOS
			IF(VC_1 < 0.5)
				LOS = 'A/B'
			ELSEIF(VC_1 < 0.7)
				LOS = 'C'
			ELSEIF(VC_1 < 0.84)
				LOS = 'D'
			ELSEIF(VC_1 < 1.0)
				LOS = 'E'
			ELSEIF(VC_1 >= 1.0)
				LOS = 'F'
			ENDIF
			
			IF(Time_1>0)
				CGSTDSPD=distance/time_1*60
			ELSE
				CGSTDSPD=0
			ENDIF
		ENDRUN
	ENDLOOP

	; Feedback Loop Convergence Section

	; Create skims for loop comparisons
	; Must do at least three loop assignments to determine convergence of link volumes
	IF({loops}=1) goto :Converged   ;1 feedback loop
	IF(Loopnum=1) goto :FirstLoop
	IF(Loopnum>1 & Loopnum<{minloop}) goto :MinLoop

	; Calculate %RMSE in volumes between loops (only AM / PM)
	RUN PGM=NETWORK
		NETI[1]=AVGLOAD_AM@prevloop@.NET            ; Previous Loaded AM network
		NETI[2]=LOD{year}AM_Loop@loopnum@.net    ; Current Loaded AM network
		NETI[3]=AVGLOAD_PM@prevloop@.NET            ; Previous Loaded AM network
		NETI[4]=LOD{year}PM_Loop@loopnum@.net    ; Current Loaded AM network

		;AM
		IF(li.1.factype=1-49)
			_vol1am=li.1.v_totam
			_vol2am=li.2.v_totam
			_sqdiffam=(_vol2am-_vol1am)^2
			_sumsqdiffam=_sumsqdiffam+_sqdiffam
			_linkcntam=_linkcntam+1
			_sumvol1am=_sumvol1am+_vol1am
		ENDIF

		;PM
		IF(li.3.factype=1-49)
			_vol1pm=li.3.v_totpm
			_vol2pm=li.4.v_totpm
			_sqdiffpm=(_vol2pm-_vol1pm)^2
			_sumsqdiffpm=_sumsqdiffpm+_sqdiffpm
			_linkcntpm=_linkcntpm+1
			_sumvol1pm=_sumvol1pm+_vol1pm
		ENDIF

		PHASE=SUMMARY
			_pct_rmse_vol_a=((_sumsqdiffam/_linkcntam)^0.5*100)/(_sumvol1am/_linkcntam)
			_pct_rmse_vol_p=((_sumsqdiffpm/_linkcntpm)^0.5*100)/(_sumvol1pm/_linkcntpm)
		  
			;overall model convergence criteria
			IF(_pct_rmse_vol_a<5.0 & _pct_rmse_vol_p<5.0)
				PRINT list='TRUE',FILE=converged.txt
			ENDIF

			IF(@loopnum@ = {minloop})                                   ;print out header only 1 time
				PRINT list='LoopNum  %RMSE',FILE=fdbconverge.prn
				PRINT list=@loopnum@(7.0),_pct_rmse_vol_a(7.2),_pct_rmse_vol_p(7.2),FILE=fdbconverge.prn
			ELSEIF(@loopnum@ > 2)                               ;print out %RMSE for each loop starting with #2
				PRINT list=@loopnum@(7.0),_pct_rmse_vol_a(7.2),_pct_rmse_vol_p(7.2),FILE=fdbconverge.prn,APPEND=T
			ENDIF
		ENDPHASE
	ENDRUN

	; Check convergence criteria and exit loop if converged
	*FINDSTR "TRUE" converged.txt
	IF(RETURNCODE=0)
		goto :Converged   ; End Feedback Loop
	ENDIF

	; If convergence criteria are not met produce skims for next loop
	; Use the average of times from the previous two assignments
:MinLoop     ; skip convergence checks on until minimum number of loops is run

	LOOP TOD=1,5
		IF(TOD=1)
			PER='EA'
			CAPFAC=1.66
		ELSEIF(TOD=2)
			PER='AM'
			CAPFAC=3.66
		ELSEIF(TOD=3)
			PER='MD'
			CAPFAC=4.70
		ELSEIF(TOD=4)
			PER='PM'
			CAPFAC=3.66
		ELSEIF(TOD=5)
			PER='EV'
			CAPFAC=3.91
		ENDIF
	
		RUN PGM=NETWORK
			NETI=LOD{year}@per@_Loop@loopnum@.net       ; Current Loaded Network
			NETI[2]=AVGLOAD_@per@@prevloop@.net            ; Previous Loaded Network (MSA AVG)
			NETO=AVGLOAD_@per@@loopnum@.NET,Exclude=V,T0,C,LINKCLASS,WEIGHT1,WEIGHT2,V_TOTVDF  ; Average Network Not to be overwritten

			weight1=(1/@loopnum@)
			weight2=(@loopnum@-1)/(@loopnum@)

			;Average volumes without PCE factor
			v_sov@per@ = (li.1.v_sov@per@ * weight1) + (li.2.v_sov@per@ * weight2)
			v_hov@per@ = (li.1.v_hov@per@ * weight1) + (li.2.v_hov@per@ * weight2)
			v_com@per@ = (li.1.v_com@per@ * weight1) + (li.2.v_com@per@ * weight2)
			v_mtk@per@ = (li.1.v_mtk@per@ * weight1) + (li.2.v_mtk@per@ * weight2)
			v_htk@per@ = (li.1.v_htk@per@ * weight1) + (li.2.v_htk@per@ * weight2)

			;Apply PCE factor in vdf lookup
			v_totvdf = v_sov@per@ + v_hov@per@ + v_com@per@ + v_mtk@per@*1.5 + v_htk@per@*2

			;Run through VDF curves to recaculate congested time
			C=@per@capacity*@capfac@
			T0=time1  ;jln 05-16-14
			linkclass=factype+1                         ;define linkclass by assignment group
				 
			V=v_totvdf   ;total volume function
			
			; Cent conn  
			IF(FACTYPE = 0) TIME_1 = TIME1

			IF(FACTYPE>0 & C=0)  ; in the case of managed lanes with time of day directionality
				TIME_1 = 0
			ELSE
				; Freeway    
				IF(FACTYPE = 1,4,5,6 & WEAVEFLAG=0) 
					TIME_1 = T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway
				; Freeway weaving section
				ELSEIF(FACTYPE = 1 & WEAVEFLAG=1) 
					TIME_1 = T0 * (1 + 0.20 * V/C + 1.25 * ((V/C)^5.5))   ; Freeway weaving section
				; Expressway
				ELSEIF(FACTYPE=2)
					TIME_1 = T0 * (1 + 0.00 * V/C + 1.0 * ((V/C)^4))      ; Expressway
				; Parkway
				ELSEIF(FACTYPE=3)
					TIME_1 = T0 * (1 + 0.00 * V/C + 1.25* ((V/C)^4))      ; Parkwy
				; Ramps
				ELSEIF(FACTYPE=7-9)
					TIME_1 = T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; sys-sys ramp
				; Arterial    
				ELSEIF(FACTYPE=10-13)
					TIME_1 = T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Principal Arterial
				ELSEIF(FACTYPE=14)
				; Collector    
					TIME_1 = T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Collector
				ENDIF
			ENDIF

			;Add transit only link speeds
			IF(FACTYPE= 50)
				BUSSPD=12
				BUSTIME=DISTANCE/BUSSPD*60
				Time_1=DISTANCE/BUSSPD*60
				EACapacity=0
				AMCapacity=0
				MDCapacity=0
				PMCapacity=0
				EVCapacity=0
			ELSEIF(FACTYPE = 51, 52,53)
				BUSSPD=20
				BUSTIME=DISTANCE/BUSSPD*60
				Time_1=DISTANCE/BUSSPD*60
				EACapacity=0
				AMCapacity=0
				MDCapacity=0
				PMCapacity=0
				EVCapacity=0
			ENDIF
		ENDRUN
	
		*del LOD{year}@per@.NET    ;delete current network

		;create file used for next feedback loop
		*copy AVGLOAD_@per@@loopnum@.NET LOD{year}@per@.NET
	ENDLOOP

:FirstLoop     ; skip convergence checks on first loop
	IF(Loopnum=1)   
		*copy LOD{year}EA_Loop1.NET LOD{year}EA.NET
		*copy LOD{year}EA_Loop1.NET AVGLOAD_EA1.NET
		*copy LOD{year}AM_Loop1.NET LOD{year}AM.NET
		*copy LOD{year}AM_Loop1.NET AVGLOAD_AM1.NET
		*copy LOD{year}MD_Loop1.NET LOD{year}MD.NET
		*copy LOD{year}MD_Loop1.NET AVGLOAD_MD1.NET
		*copy LOD{year}PM_Loop1.NET LOD{year}PM.NET
		*copy LOD{year}PM_Loop1.NET AVGLOAD_PM1.NET
		*copy LOD{year}EV_Loop1.NET LOD{year}EV.NET
		*copy LOD{year}EV_Loop1.NET AVGLOAD_EV1.NET
	ENDIF
:EndFB
ENDLOOP

:Converged
*del LOD{year}EA.NET    ;delete current network
*del LOD{year}AM.NET    ;delete current network
*del LOD{year}MD.NET    ;delete current network
*del LOD{year}PM.NET    ;delete current network
*del LOD{year}EV.NET    ;delete current network
*copy LOD{year}EA_Loop@loopnum@.net LOD{year}EA.NET   ;copy final feedloop network
*copy LOD{year}AM_Loop@loopnum@.net LOD{year}AM.NET   ;copy final feedloop network
*copy LOD{year}MD_Loop@loopnum@.net LOD{year}MD.NET   ;copy final feedloop network
*copy LOD{year}PM_Loop@loopnum@.net LOD{year}PM.NET   ;copy final feedloop network
*copy LOD{year}EV_Loop@loopnum@.net LOD{year}EV.NET   ;copy final feedloop network

; END MAIN FEEDBACK LOOP

:CheckTransit
IF({chkTrn.n}=0) goto :CheckTOD
IF({chktas.n}=0) goto :CheckTOD

;TRANSIT ASSIGNMENT
;early AM
; walk all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=1
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_WLK_EA.PRN
	NETI=PT_WLK_ALLTRN_WLK_EA.NET
	NETO=PT_WLK_ALLTRN_WLK_LOAD_EA.NET
	MATI[1]=TRIPSEA.TPP
	ROUTEI[1]=WLK_ALLTRN_WLK_EA.RTE
	LINKO=WLK_ALLTRN_WLK_EA.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_WLK_EA.RPT
	STOP2STOPO=WLK_ALLTRN_WLK_S2S_EA.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; walk premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=2
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_WLK_EA.PRN
	NETI=PT_WLK_PRMTRN_WLK_EA.NET
	NETO=PT_WLK_PRMTRN_WLK_LOAD_EA.NET
	MATI[1]=TRIPSEA.TPP
	ROUTEI[1]=WLK_PRMTRN_WLK_EA.RTE
	LINKO=WLK_PRMTRN_WLK_EA.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_WLK_EA.RPT
	STOP2STOPO=WLK_PRMTRN_WLK_S2S_EA.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=3
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_KNR_ALLTRN_WLK_EA.PRN
	NETI=PT_KNR_ALLTRN_WLK_EA.NET
	NETO=PT_KNR_ALLTRN_WLK_LOAD_EA.NET
	MATI[1]=TRIPSEA.TPP
	ROUTEI[1]=KNR_ALLTRN_WLK_EA.RTE
	LINKO=KNR_ALLTRN_WLK_EA.DBF,ONOFFS=T
	REPORTO=KNR_ALLTRN_WLK_EA.RPT
	STOP2STOPO=KNR_ALLTRN_WLK_S2S_EA.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.KNR_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=4
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_KNR_PRMTRN_WLK_EA.PRN
	NETI=PT_KNR_PRMTRN_WLK_EA.NET
	NETO=PT_KNR_PRMTRN_WLK_LOAD_EA.NET
	MATI[1]=TRIPSEA.TPP
	ROUTEI[1]=KNR_PRMTRN_WLK_EA.RTE
	LINKO=KNR_PRMTRN_WLK_EA.DBF,ONOFFS=T
	REPORTO=KNR_PRMTRN_WLK_EA.RPT
	STOP2STOPO=KNR_PRMTRN_WLK_S2S_EA.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.KNR_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=5
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_PNR_ALLTRN_WLK_EA.PRN
	NETI=PT_PNR_ALLTRN_WLK_EA.NET
	NETO=PT_PNR_ALLTRN_WLK_LOAD_EA.NET
	MATI[1]=TRIPSEA.TPP
	ROUTEI[1]=PNR_ALLTRN_WLK_EA.RTE
	LINKO=PNR_ALLTRN_WLK_EA.DBF,ONOFFS=T
	REPORTO=PNR_ALLTRN_WLK_EA.RPT
	STOP2STOPO=PNR_ALLTRN_WLK_S2S_EA.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.PNR_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=6
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_PNR_PRMTRN_WLK_EA.PRN
	NETI=PT_PNR_PRMTRN_WLK_EA.NET
	NETO=PT_PNR_PRMTRN_WLK_LOAD_EA.NET
	MATI[1]=TRIPSEA.TPP
	ROUTEI[1]=PNR_PRMTRN_WLK_EA.RTE
	LINKO=PNR_PRMTRN_WLK_EA.DBF,ONOFFS=T
	REPORTO=PNR_PRMTRN_WLK_EA.RPT
	STOP2STOPO=PNR_PRMTRN_WLK_S2S_EA.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.PNR_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP
;END EARLY AM

; AM
; walk all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=7
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_WLK_AM.PRN
	NETI=PT_WLK_ALLTRN_WLK_AM.NET
	NETO=PT_WLK_ALLTRN_WLK_LOAD_AM.NET
	MATI[1]=TRIPSAM.TPP
	ROUTEI[1]=WLK_ALLTRN_WLK_AM.RTE
	LINKO=WLK_ALLTRN_WLK_AM.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_WLK_AM.RPT
	STOP2STOPO=WLK_ALLTRN_WLK_S2S_AM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; walk premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=8
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_WLK_AM.PRN
	NETI=PT_WLK_PRMTRN_WLK_AM.NET
	NETO=PT_WLK_PRMTRN_WLK_LOAD_AM.NET
	MATI[1]=TRIPSAM.TPP
	ROUTEI[1]=WLK_PRMTRN_WLK_AM.RTE
	LINKO=WLK_PRMTRN_WLK_AM.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_WLK_AM.RPT
	STOP2STOPO=WLK_PRMTRN_WLK_S2S_AM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=9
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_KNR_ALLTRN_WLK_AM.PRN
	NETI=PT_KNR_ALLTRN_WLK_AM.NET
	NETO=PT_KNR_ALLTRN_WLK_LOAD_AM.NET
	MATI[1]=TRIPSAM.TPP
	ROUTEI[1]=KNR_ALLTRN_WLK_AM.RTE
	LINKO=KNR_ALLTRN_WLK_AM.DBF,ONOFFS=T
	REPORTO=KNR_ALLTRN_WLK_AM.RPT
	STOP2STOPO=KNR_ALLTRN_WLK_S2S_AM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.KNR_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=10
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_KNR_PRMTRN_WLK_AM.PRN
	NETI=PT_KNR_PRMTRN_WLK_AM.NET
	NETO=PT_KNR_PRMTRN_WLK_LOAD_AM.NET
	MATI[1]=TRIPSAM.TPP
	ROUTEI[1]=KNR_PRMTRN_WLK_AM.RTE
	LINKO=KNR_PRMTRN_WLK_AM.DBF,ONOFFS=T
	REPORTO=KNR_PRMTRN_WLK_AM.RPT
	STOP2STOPO=KNR_PRMTRN_WLK_S2S_AM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.KNR_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=11
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_PNR_ALLTRN_WLK_AM.PRN
	NETI=PT_PNR_ALLTRN_WLK_AM.NET
	NETO=PT_PNR_ALLTRN_WLK_LOAD_AM.NET
	MATI[1]=TRIPSAM.TPP
	ROUTEI[1]=PNR_ALLTRN_WLK_AM.RTE
	LINKO=PNR_ALLTRN_WLK_AM.DBF,ONOFFS=T
	REPORTO=PNR_ALLTRN_WLK_AM.RPT
	STOP2STOPO=PNR_ALLTRN_WLK_S2S_AM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.PNR_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=12
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_PNR_PRMTRN_WLK_AM.PRN
	NETI=PT_PNR_PRMTRN_WLK_AM.NET
	NETO=PT_PNR_PRMTRN_WLK_LOAD_AM.NET
	MATI[1]=TRIPSAM.TPP
	ROUTEI[1]=PNR_PRMTRN_WLK_AM.RTE
	LINKO=PNR_PRMTRN_WLK_AM.DBF,ONOFFS=T
	REPORTO=PNR_PRMTRN_WLK_AM.RPT
	STOP2STOPO=PNR_PRMTRN_WLK_S2S_AM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.PNR_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP
;END AM

; MIDDAY
; walk all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=13
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_WLK_MD.PRN
	NETI=PT_WLK_ALLTRN_WLK_MD.NET
	NETO=PT_WLK_ALLTRN_WLK_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=WLK_ALLTRN_WLK_MD.RTE
	LINKO=WLK_ALLTRN_WLK_MD.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_WLK_MD.RPT
	STOP2STOPO=WLK_ALLTRN_WLK_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; walk premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=14
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_WLK_MD.PRN
	NETI=PT_WLK_PRMTRN_WLK_MD.NET
	NETO=PT_WLK_PRMTRN_WLK_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=WLK_PRMTRN_WLK_MD.RTE
	LINKO=WLK_PRMTRN_WLK_MD.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_WLK_MD.RPT
	STOP2STOPO=WLK_PRMTRN_WLK_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=15
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_KNR_ALLTRN_WLK_MD.PRN
	NETI=PT_KNR_ALLTRN_WLK_MD.NET
	NETO=PT_KNR_ALLTRN_WLK_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=KNR_ALLTRN_WLK_MD.RTE
	LINKO=KNR_ALLTRN_WLK_MD.DBF,ONOFFS=T
	REPORTO=KNR_ALLTRN_WLK_MD.RPT
	STOP2STOPO=KNR_ALLTRN_WLK_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.KNR_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=16
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_KNR_PRMTRN_WLK_MD.PRN
	NETI=PT_KNR_PRMTRN_WLK_MD.NET
	NETO=PT_KNR_PRMTRN_WLK_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=KNR_PRMTRN_WLK_MD.RTE
	LINKO=KNR_PRMTRN_WLK_MD.DBF,ONOFFS=T
	REPORTO=KNR_PRMTRN_WLK_MD.RPT
	STOP2STOPO=KNR_PRMTRN_WLK_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.KNR_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=17
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_PNR_ALLTRN_WLK_MD.PRN
	NETI=PT_PNR_ALLTRN_WLK_MD.NET
	NETO=PT_PNR_ALLTRN_WLK_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=PNR_ALLTRN_WLK_MD.RTE
	LINKO=PNR_ALLTRN_WLK_MD.DBF,ONOFFS=T
	REPORTO=PNR_ALLTRN_WLK_MD.RPT
	STOP2STOPO=PNR_ALLTRN_WLK_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.PNR_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=18
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_PNR_PRMTRN_WLK_MD.PRN
	NETI=PT_PNR_PRMTRN_WLK_MD.NET
	NETO=PT_PNR_PRMTRN_WLK_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=PNR_PRMTRN_WLK_MD.RTE
	LINKO=PNR_PRMTRN_WLK_MD.DBF,ONOFFS=T
	REPORTO=PNR_PRMTRN_WLK_MD.RPT
	STOP2STOPO=PNR_PRMTRN_WLK_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.PNR_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr all transit (walk - trn - knr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=19
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_KNR_MD.PRN
	NETI=PT_WLK_ALLTRN_KNR_MD.NET
	NETO=PT_WLK_ALLTRN_KNR_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=WLK_ALLTRN_KNR_MD.RTE
	LINKO=WLK_ALLTRN_KNR_MD.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_KNR_MD.RPT
	STOP2STOPO=WLK_ALLTRN_KNR_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_KNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr premium (wlk - trn - knr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=20
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_KNR_MD.PRN
	NETI=PT_WLK_PRMTRN_KNR_MD.NET
	NETO=PT_WLK_PRMTRN_KNR_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=WLK_PRMTRN_KNR_MD.RTE
	LINKO=WLK_PRMTRN_KNR_MD.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_KNR_MD.RPT
	STOP2STOPO=WLK_PRMTRN_KNR_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_KNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr all transit (wlk - trn - pnr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=21
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_PNR_MD.PRN
	NETI=PT_WLK_ALLTRN_PNR_MD.NET
	NETO=PT_WLK_ALLTRN_PNR_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=WLK_ALLTRN_PNR_MD.RTE
	LINKO=WLK_ALLTRN_PNR_MD.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_PNR_MD.RPT
	STOP2STOPO=WLK_ALLTRN_PNR_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_PNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr premium (wlk - trn - pnr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=22
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_PNR_MD.PRN
	NETI=PT_WLK_PRMTRN_PNR_MD.NET
	NETO=PT_WLK_PRMTRN_PNR_LOAD_MD.NET
	MATI[1]=TRIPSMD.TPP
	ROUTEI[1]=WLK_PRMTRN_PNR_MD.RTE
	LINKO=WLK_PRMTRN_PNR_MD.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_PNR_MD.RPT
	STOP2STOPO=WLK_PRMTRN_PNR_S2S_MD.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_PNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP
;END MD

; PM
; walk all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=23
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_WLK_PM.PRN
	NETI=PT_WLK_ALLTRN_WLK_PM.NET
	NETO=PT_WLK_ALLTRN_WLK_LOAD_PM.NET
	MATI[1]=TRIPSPM.TPP
	ROUTEI[1]=WLK_ALLTRN_WLK_PM.RTE
	LINKO=WLK_ALLTRN_WLK_PM.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_WLK_PM.RPT
	STOP2STOPO=WLK_ALLTRN_WLK_S2S_PM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; walk premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=24
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_WLK_PM.PRN
	NETI=PT_WLK_PRMTRN_WLK_PM.NET
	NETO=PT_WLK_PRMTRN_WLK_LOAD_PM.NET
	MATI[1]=TRIPSPM.TPP
	ROUTEI[1]=WLK_PRMTRN_WLK_PM.RTE
	LINKO=WLK_PRMTRN_WLK_PM.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_WLK_PM.RPT
	STOP2STOPO=WLK_PRMTRN_WLK_S2S_PM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr all transit (walk - trn - knr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=25
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_KNR_PM.PRN
	NETI=PT_WLK_ALLTRN_KNR_PM.NET
	NETO=PT_WLK_ALLTRN_KNR_LOAD_PM.NET
	MATI[1]=TRIPSPM.TPP
	ROUTEI[1]=WLK_ALLTRN_KNR_PM.RTE
	LINKO=WLK_ALLTRN_KNR_PM.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_KNR_PM.RPT
	STOP2STOPO=WLK_ALLTRN_KNR_S2S_PM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_KNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; knr premium (wlk - trn - knr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=26
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_KNR_PM.PRN
	NETI=PT_WLK_PRMTRN_KNR_PM.NET
	NETO=PT_WLK_PRMTRN_KNR_LOAD_PM.NET
	MATI[1]=TRIPSPM.TPP
	ROUTEI[1]=WLK_PRMTRN_KNR_PM.RTE
	LINKO=WLK_PRMTRN_KNR_PM.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_KNR_PM.RPT
	STOP2STOPO=WLK_PRMTRN_KNR_S2S_PM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_KNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr all transit (wlk - trn - pnr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=27
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_PNR_PM.PRN
	NETI=PT_WLK_ALLTRN_PNR_PM.NET
	NETO=PT_WLK_ALLTRN_PNR_LOAD_PM.NET
	MATI[1]=TRIPSPM.TPP
	ROUTEI[1]=WLK_ALLTRN_PNR_PM.RTE
	LINKO=WLK_ALLTRN_PNR_PM.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_PNR_PM.RPT
	STOP2STOPO=WLK_ALLTRN_PNR_S2S_PM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_PNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; pnr premium (wlk - trn - pnr)
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=28
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_WLK_PM.PRN
	NETI=PT_WLK_PRMTRN_PNR_PM.NET
	NETO=PT_WLK_PRMTRN_PNR_LOAD_PM.NET
	MATI[1]=TRIPSPM.TPP
	ROUTEI[1]=WLK_PRMTRN_PNR_PM.RTE
	LINKO=WLK_PRMTRN_PNR_PM.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_PNR_PM.RPT
	STOP2STOPO=WLK_PRMTRN_PNR_S2S_PM.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_PNR
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; EV
; walk all transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=29
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_ALLTRN_WLK_EV.PRN
	NETI=PT_WLK_ALLTRN_WLK_EV.NET
	NETO=PT_WLK_ALLTRN_WLK_LOAD_EV.NET
	MATI[1]=TRIPSEV.TPP
	ROUTEI[1]=WLK_ALLTRN_WLK_EV.RTE
	LINKO=WLK_ALLTRN_WLK_EV.DBF,ONOFFS=T
	REPORTO=WLK_ALLTRN_WLK_EV.RPT
	STOP2STOPO=WLK_ALLTRN_WLK_S2S_EV.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_ALL_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

; walk premium
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=30
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_LOAD_WLK_PRMTRN_WLK_EV.PRN
	NETI=PT_WLK_PRMTRN_WLK_EV.NET
	NETO=PT_WLK_PRMTRN_WLK_LOAD_EV.NET
	MATI[1]=TRIPSEV.TPP
	ROUTEI[1]=WLK_PRMTRN_WLK_EV.RTE
	LINKO=WLK_PRMTRN_WLK_EV.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_WLK_EV.RPT
	STOP2STOPO=WLK_PRMTRN_WLK_S2S_EV.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLK_PRM_WLK
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP
;END EV

; AIR PASSENGER
; walk premium transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=31
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_WLK_LOAD_AIRPASS.PRN
	NETI=PT_WLK_PRMTRN_WLK_MD.NET
	NETO=PT_WLK_PRMTRN_WLK_LOAD_AIRPASS.NET
	MATI[1]=TRNOUT{year}.MTT
	ROUTEI[1]=WLK_PRMTRN_WLK_MD.RTE
	LINKO=WLK_PRMTRN_WLK_AIRPASS.DBF,ONOFFS=T
	REPORTO=WLK_PRMTRN_WLK_AIRPASS.RPT
	STOP2STOPO=WLK_PRMTRN_WLK_S2S_AIRPASS.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.WLKTRN
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

;pnr premium transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=32
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_PNR_LOAD_AIRPASS.PRN
	NETI=PT_PNR_PRMTRN_WLK_MD.NET
	NETO=PT_PNR_PRMTRN_WLK_LOAD_AIRPASS.NET
	MATI[1]=TRNOUT{year}.MTT
	ROUTEI[1]=PNR_PRMTRN_WLK_MD.RTE
	LINKO=PNR_PRMTRN_WLK_AIRPASS.DBF,ONOFFS=T
	REPORTO=PNR_PRMTRN_WLK_AIRPASS.RPT
	STOP2STOPO=PNR_PRMTRN_WLK_S2S_AIRPASS.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.PNRTRN
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

;knr prremium transit
DistributeMULTISTEP ProcessID='{ProcID}', ProcessNum=33
RUN PGM=PUBLIC TRANSPORT, PRNFILE=PT_KNR_LOAD_AIRPASS.PRN
	NETI=PT_KNR_PRMTRN_WLK_MD.NET
	NETO=PT_KNR_PRMTRN_WLK_LOAD_AIRPASS.NET
	MATI[1]=TRNOUT{year}.MTT
	ROUTEI[1]=KNR_PRMTRN_WLK_MD.RTE
	LINKO=KNR_PRMTRN_WLK_AIRPASS.DBF,ONOFFS=T
	REPORTO=KNR_PRMTRN_WLK_AIRPASS.RPT
	STOP2STOPO=KNR_PRMTRN_WLK_S2S_AIRPASS.DBF,ACCUMULATE=FIRSTLASTBYMODE,MODES=15,NODES=7000-999999

	PARAMETERS TRIPSIJ[1]=MI.1.KNRTRN
	REPORT LINES=T, SORT=MODE, LINEVOLS=T, STOPSONLY=T, SKIP0=T
ENDRUN
EndDistributeMULTISTEP

Wait4Files Files={ProcID}1.script.end, {ProcID}2.script.end, {ProcID}3.script.end, {ProcID}4.script.end,  {ProcID}5.script.end,  {ProcID}6.script.end,   {ProcID}7.script.end,
                {ProcID}8.script.end, {ProcID}9.script.end, {ProcID}10.script.end, {ProcID}11.script.end,  {ProcID}12.script.end,  {ProcID}13.script.end,   {ProcID}14.script.end,
                {ProcID}15.script.end, {ProcID}16.script.end, {ProcID}17.script.end, {ProcID}18.script.end,  {ProcID}19.script.end,  {ProcID}20.script.end,   {ProcID}21.script.end,
                {ProcID}22.script.end, {ProcID}23.script.end, {ProcID}24.script.end, {ProcID}25.script.end,  {ProcID}26.script.end,  {ProcID}27.script.end,   {ProcID}28.script.end,
                {ProcID}29.script.end, {ProcID}30.script.end, {ProcID}31.script.end, {ProcID}32.script.end,  {ProcID}33.script.end,
                checkreturncode=T,printfiles=MERGE,deldistribfiles=T

;PROCESS DRIVE ACCESS TO/FROM TRANSIT FOR ASSIGNMENT TO HIGHWAY NETWORKS
;dump network links with TAZ number
RUN PGM=NETWORK
	NETI=HWY{year}FF.NET
	LINKO=LINKDUMP.DBF,INCLUDE=A,B,TAZ2
	IF(FACTYPE=0) DELETE   ;centroid connectors are not needed
ENDRUN

;create node list from link dump with a-node and TAZ number
RUN PGM=MATRIX
	DBI[1]=LINKDUMP.DBF,SORT=A
	RECO=NODE_LOOKUP.DBF,FIELDS=A,B,TAZ
	ZONES=1
 
	LOOP K=1,DBI.1.NUMRECORDS
		X=DBIReadRecord(1,k)
		CURNODE=DI.1.A
		IF(DBI.1.RECNO=1)
			RO.A=DI.1.A
			RO.B=DI.1.B
			RO.TAZ=DI.1.TAZ2
			WRITE RECO=1
		ENDIF
    
		Y=DBIReadNext(1,1)
		NEWNODE=DI.1.A
		IF(NEWNODE<>CURNODE)
			RO.A=DI.1.A
			RO.B=DI.1.B
			RO.TAZ=DI.1.TAZ2
			WRITE RECO=1
		ENDIF
	ENDLOOP
ENDRUN

;loop through 20 PT assignment output dbfs
LOOP N=1,20
	IF(N=1)  FILE='KNR_ALLTRN_WLK_EA'
	IF(N=2)  FILE='KNR_PRMTRN_WLK_EA'
	IF(N=3)  FILE='PNR_ALLTRN_WLK_EA'
	IF(N=4)  FILE='PNR_PRMTRN_WLK_EA'
	IF(N=5)  FILE='KNR_ALLTRN_WLK_AM'
	IF(N=6)  FILE='KNR_PRMTRN_WLK_AM'
	IF(N=7)  FILE='PNR_ALLTRN_WLK_AM'
	IF(N=8)  FILE='PNR_PRMTRN_WLK_AM'
	IF(N=9)  FILE='KNR_ALLTRN_WLK_MD'
	IF(N=10) FILE='KNR_PRMTRN_WLK_MD'
	IF(N=11) FILE='PNR_ALLTRN_WLK_MD'
	IF(N=12) FILE='PNR_PRMTRN_WLK_MD'
	IF(N=13) FILE='WLK_ALLTRN_KNR_MD'
	IF(N=14) FILE='WLK_PRMTRN_KNR_MD'
	IF(N=15) FILE='WLK_ALLTRN_PNR_MD'
	IF(N=16) FILE='WLK_PRMTRN_PNR_MD'
	IF(N=17) FILE='WLK_ALLTRN_KNR_PM'
	IF(N=18) FILE='WLK_PRMTRN_KNR_PM'
	IF(N=19) FILE='WLK_ALLTRN_PNR_PM'
	IF(N=20) FILE='WLK_PRMTRN_PNR_PM'
 
	;remove non-knr/non-pnr links for run time
	RUN PGM=MATRIX
		RECI=@FILE@.DBF
		RECO=@FILE@_DRV.DBF,FIELDS=A,B,MODE,DIST,TIME,VOL
		
		IF(RI.MODE=2,3 | RECI.RECNO=1)
			;CREATE DUMMY RECORD TO ENSURE NO ERROR
			IF(RECI.RECNO=1)
				RO.A=1
				RO.B=1
				RO.MODE=0
				RO.DIST=0
				RO.TIME=0
				RO.VOL=1
			ELSE
				RO.A=RI.A
				RO.B=RI.B
				RO.MODE=RI.MODE
				RO.DIST=RI.DIST
				RO.TIME=RI.TIME
				RO.VOL=RI.VOL
			ENDIF
			
			WRITE RECO=1
		ENDIF
	ENDRUN

	IF(N=1-12) ;ACCESS MODE IS KNR/PNR
		;replace b-node of drive access connectors with nearest TAZ
		RUN PGM=MATRIX
			RECI=@FILE@_DRV.DBF
			LOOKUPI=NODE_LOOKUP.DBF
			RECO=@FILE@_TAZ.DBF,FIELDS=A,B,TAZ,MODE,DIST,TIME,VOL

			LOOKUP LOOKUPI=1,
				NAME=ZONE,
				LOOKUP[1]=A,RESULT=TAZ,FAIL=0,0,0,INTERPOLATE=F
			
			RO.A=RI.A
			RO.B=RI.B
			
			IF(RECI.RECNO=1)
				RO.TAZ=1
			ELSE
				RO.TAZ=ZONE(1,RI.B)
			ENDIF
			
			RO.MODE=RI.MODE
			RO.DIST=RI.DIST
			RO.TIME=RI.TIME
			RO.VOL=RI.VOL
			IF(RO.VOL>0) WRITE RECO=1
		ENDRUN

		;SORT BY A,TAZ
		RUN PGM=MATRIX
			RECI=@FILE@_TAZ.DBF,SORT=A,TAZ
			RECO=@FILE@_TAZ_SORT.DBF,FIELDS=RECI.ALLFIELDS
			WRITE RECO=1
		ENDRUN
	ELSEIF(N=13-20) ;EGRESS MODE IS KNR/PNR
		;replace a-node of drive access connectors with nearest TAZ
		RUN PGM=MATRIX
			RECI=@FILE@_DRV.DBF
			LOOKUPI=NODE_LOOKUP.DBF
			RECO=@FILE@_TAZ.DBF,FIELDS=A,B,TAZ,MODE,DIST,TIME,VOL

			LOOKUP LOOKUPI=1,
				NAME=ZONE,
				LOOKUP[1]=A,RESULT=TAZ,FAIL=0,0,0,INTERPOLATE=F
			
			RO.A=RI.A
			RO.B=RI.B
			
			IF(RECI.RECNO=1)
				RO.TAZ=1
			ELSE
				RO.TAZ=ZONE(1,RI.A)
			ENDIF
			
			RO.MODE=RI.MODE
			RO.DIST=RI.DIST
			RO.TIME=RI.TIME
			RO.VOL=RI.VOL
			IF(RO.VOL>0) WRITE RECO=1
		ENDRUN

		;SORT BY TAZ,B
		RUN PGM=MATRIX
			RECI=@FILE@_TAZ.DBF,SORT=TAZ,B
			RECO=@FILE@_TAZ_SORT.DBF,FIELDS=RECI.ALLFIELDS
			WRITE RECO=1
		ENDRUN
	ENDIF
ENDLOOP

;build trip tables by time period
RUN PGM=MATRIX
	MATI[1] =KNR_ALLTRN_WLK_EA_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[2] =KNR_PRMTRN_WLK_EA_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[3] =PNR_ALLTRN_WLK_EA_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[4] =PNR_PRMTRN_WLK_EA_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[5] =KNR_ALLTRN_WLK_AM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[6] =KNR_PRMTRN_WLK_AM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[7] =PNR_ALLTRN_WLK_AM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[8] =PNR_PRMTRN_WLK_AM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[9] =KNR_ALLTRN_WLK_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[10]=KNR_PRMTRN_WLK_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[11]=PNR_ALLTRN_WLK_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[12]=PNR_PRMTRN_WLK_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=A,TAZ,0,VOL
	MATI[13]=WLK_ALLTRN_KNR_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATI[14]=WLK_PRMTRN_KNR_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATI[15]=WLK_ALLTRN_PNR_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATI[16]=WLK_PRMTRN_PNR_MD_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATI[17]=WLK_ALLTRN_KNR_PM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATI[18]=WLK_PRMTRN_KNR_PM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATI[19]=WLK_ALLTRN_PNR_PM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATI[20]=WLK_PRMTRN_PNR_PM_TAZ_SORT.DBF,PATTERN=IJM:V,FIELDS=TAZ,B,0,VOL  ;B-NODE = DESTINATION TAZ
	MATO[1]=TransitDriveAccess_EA.TPP,MO=11-17,NAME=KNR_ALLTRN,KNR_PRMTRN,PNR_ALLTRN,PNR_PRMTRN,KNR,PNR,TOTAL
	MATO[2]=TransitDriveAccess_AM.TPP,MO=21-27,NAME=KNR_ALLTRN,KNR_PRMTRN,PNR_ALLTRN,PNR_PRMTRN,KNR,PNR,TOTAL
	MATO[3]=TransitDriveAccess_MD.TPP,MO=31-37,NAME=KNR_ALLTRN,KNR_PRMTRN,PNR_ALLTRN,PNR_PRMTRN,KNR,PNR,TOTAL
	MATO[4]=TransitDriveAccess_PM.TPP,MO=41-47,NAME=KNR_ALLTRN,KNR_PRMTRN,PNR_ALLTRN,PNR_PRMTRN,KNR,PNR,TOTAL

	ZONES={lastin}
	ZONEMSG=100

	;EARLY AM
	MW[11]=MI.1.1         ;KNR - ALLTRN
	MW[12]=MI.2.1         ;KNR - PRMTRN
	MW[13]=MI.3.1         ;PNR - ALLTRN
	MW[14]=MI.4.1         ;PNR - PRMTRN
	MW[15]=MW[11]+MW[12]  ;KNR
	MW[16]=MW[13]+MW[14]  ;PNR
	MW[17]=MW[15]+MW[16]  ;TOTAL
	;AM
	MW[21]=MI.5.1         ;KNR - ALLTRN
	MW[22]=MI.6.1         ;KNR - PRMTRN
	MW[23]=MI.7.1         ;PNR - ALLTRN
	MW[24]=MI.8.1         ;PNR - PRMTRN
	MW[25]=MW[21]+MW[22]  ;KNR
	MW[26]=MW[23]+MW[24]  ;PNR
	MW[27]=MW[25]+MW[26]  ;TOTAL
	;MD
	MW[31]=MI.9.1+MI.13.1   ;KNR - ALLTRN
	MW[32]=MI.10.1+MI.14.1  ;KNR - PRMTRN
	MW[33]=MI.11.1+MI.15.1  ;PNR - ALLTRN
	MW[34]=MI.12.1+MI.16.1  ;PNR - PRMTRN
	MW[35]=MW[31]+MW[32]    ;KNR
	MW[36]=MW[33]+MW[34]    ;PNR
	MW[37]=MW[35]+MW[36]    ;TOTAL
	;PM
	MW[41]=MI.17.1         ;KNR - ALLTRN
	MW[42]=MI.18.1         ;KNR - PRMTRN
	MW[43]=MI.19.1         ;PNR - ALLTRN
	MW[44]=MI.20.1         ;PNR - PRMTRN
	MW[45]=MW[41]+MW[42]   ;KNR
	MW[46]=MW[43]+MW[44]   ;PNR
	MW[47]=MW[45]+MW[46]   ;TOTAL

	;REMOVE DUMMY TRIPS FROM FINAL MATRIX
	JLOOP
		IF(I=1 & J=1)
			MW[11]=0
			MW[12]=0
			MW[13]=0
			MW[14]=0
			MW[15]=0
			MW[16]=0
			MW[17]=0
			MW[21]=0
			MW[22]=0
			MW[23]=0
			MW[24]=0
			MW[25]=0
			MW[26]=0
			MW[27]=0
			MW[31]=0
			MW[32]=0
			MW[33]=0
			MW[34]=0
			MW[35]=0
			MW[36]=0
			MW[37]=0
			MW[41]=0
			MW[42]=0
			MW[43]=0
			MW[44]=0
			MW[45]=0
			MW[46]=0
			MW[47]=0
		ENDIF
	ENDJLOOP
ENDRUN
 
:CheckTOD
IF({chkTOD.n}=0) goto :End

:Checktodlod
IF({chktrnlod.n}=0) goto :CheckLodmerge

LOOP TOD=1,4  ;no drive access/egress in evening time period
	IF(TOD=1)
		PER='EA'
		CAPFAC=1.66
	ELSEIF(TOD=2)
		PER='AM'
		CAPFAC=3.66
	ELSEIF(TOD=3)
		PER='MD'
		CAPFAC=4.70
	ELSEIF(TOD=4)
		PER='PM'
		CAPFAC=3.66
	ENDIF
 
	RUN PGM=HIGHWAY
		MATI[1] = TransitDriveAccess_@per@.TPP
		NETI=LOD{year}@per@.NET 
		NETO=lod{year}@per@_trn.tmp

		parameters maxiters = 1       ;perform one iteration: assign to shortest time path

		; Cube Cluster Controls
		DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

		PHASE=LINKREAD                                     ;read in link variables from input file
			C  = li.@per@capacity*@capfac@
			T0 = li.time_1
			linkclass=li.factype+1                         ;define linkclass by assignment group
			
			IF(li.WeaveFlag=1)                                ;linkclass for major interchanges
				linkclass=16
			ENDIF
			
			; Set Prohibitions
			IF(li.factype= 50,51,53,54,98,99)    ADDTOGROUP=1    ; Transit only (not associated with PNR lots)
			IF((li.TOLL@per@>0) & (li.prohibit!=3 && li.prohibit!=7 && li.prohibit!=8 && li.prohibit!=9 && li.prohibit!=10 && li.prohibit!=11 && li.prohibit!=12))
				ADDTOGROUP=15   ; Toll - All Vehicles Allowed and Tolled
			ENDIF
			IF(li.prohibit= 1) ADDTOGROUP=3    ; No Trucks
			IF(li.prohibit= 2) ADDTOGROUP=4    ; HOV 2+
			IF(li.prohibit= 3) ADDTOGROUP=5    ; Managed Lanes - SOV Toll - HOV 2+ Free - No Trucks
			IF(li.prohibit= 4) ADDTOGROUP=6    ; Truck Only Lanes
			IF(li.prohibit= 5) ADDTOGROUP=7    ; I-285 Bypass
			IF(li.prohibit= 6) ADDTOGROUP=8    ; HOV 3+
			IF(li.prohibit= 7) ADDTOGROUP=9    ; Managed Lanes - SOV & HOV2 Toll - HOV 3+ Free - No Trucks
			IF(li.prohibit= 8) ADDTOGROUP=10   ; Managed Lanes - SOV & Truck Toll - HOV 2+ Free
			IF(li.prohibit= 9) ADDTOGROUP=11   ; Managed Lanes - SOV, HOV2 and Truck Toll - HOV 3+ Free
			IF(li.prohibit=10) ADDTOGROUP=12   ; Truck Only Toll
			IF(li.prohibit=11) ADDTOGROUP=13   ; Managed Lanes - HOV2 Toll - HOV 3+ Free - No Trucks or SOV
			IF(li.prohibit=12) ADDTOGROUP=14   ; Managed Lanes - SOV and HOV2+ Toll - No Trucks
			IF(li.prohibit=13) ADDTOGROUP=15   ; Managed Lanes - All Vehicles Allowed and Tolled
			IF(li.factype=1-49 & (li.lanes + li.lanes@per@ = 0)) ADDTOGROUP=32  ;links with zero lanes or period lanes

			; value of time
			votpc = {avot} / 60   ; $/min
			vottk = {tvot} / 60   ; $/min
			opcpc = {aoc}
			opctk = {toc}
		 
			lw.fftime=li.time1 ;jln 05-16-14
			lw.sovtoll=li.toll@per@
			
			IF(li.prohibit=3,8)  ; managed lanes - SOV toll, HOV2+ free
				lw.hov2toll=0
				lw.hov3toll=0
			ELSEIF(li.prohibit=7,9,11)  ; managed lanes - HOV2 toll, HOV3+ free
				lw.hov2toll = li.toll@per@
				lw.hov3toll=0
			ELSE
				lw.hov2toll = li.toll@per@
				lw.hov3toll = li.toll@per@
			ENDIF

			; Add Time Penalty for Trucks at the Financial Center Tunnel (GA400)
			IF((a=269931 & b=57887) | (a=255012 & b=234098)) lw.trkpen=5
			lw.trktoll=li.toll@per@
		
			;calculate gen cost by user class
			; Re-label volumes:
				; 1 = SOV Free&Toll
				; 2 = HOV 2 Free&Toll
				; 3 = HOV 3+ Free&Toll
				; 4 = COM
				; 5 = MTK
				; 6 = HTK
			
			;compute generalized cost by user class
			IF(iteration=0)
				lw.sovcost  = li.time_1*votpc + lw.sovtoll  + {distwgt}*li.distance*opcpc
				lw.hov2cost = li.time_1*votpc + lw.hov2toll + {distwgt}*li.distance*opcpc
			ENDIF
		ENDPHASE                         

		PHASE=ILOOP
			; Volume Sets: PNR(1) KNR(2)
			MW[1]=MI.1.pnr       ; pnr trips - assume SOV
			MW[2]=MI.1.knr       ; knr trips - assume 2/car
		
			;Assign Toll Trips ===========================
			;Assign PNR trips
			pathload path=lw.sovcost,DEC=F2 vol[1]=MW[1], excludegrp=1,4,6,8,12,13,32
			;Assign KNR trips
			pathload path=lw.hov2cost,DEC=F2 vol[2]=MW[2],excludegrp=1,6,8,12,32
		ENDPHASE
	  
		PHASE=ADJUST  
			;set volume delay functions
			FUNCTION {
				; Cent conn  
				TC[1]=  T0
				; Freeway
				TC[2]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway
				TC[5]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - HOV concurrent
				TC[6]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - HOV barrier
				TC[7]=  T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway - Truck
				TC[16]= T0 * (1 + 0.20 * V/C + 1.25 * ((V/C)^5.5))   ; Freeway weaving section
				; Ramp    
				TC[8]=  T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; sys-sys ramp
				TC[9]=  T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; exit ramp
				TC[10]= T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; entrance ramp
				; Expressway/Parkway    
				TC[3]=  T0 * (1 + 0.00 * V/C + 1.0 * ((V/C)^4))      ; Expressway
				TC[4]=  T0 * (1 + 0.00 * V/C + 1.25* ((V/C)^4))      ; Parkwy
				; Arterial
				TC[11]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Principal Arterial
				TC[12]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Minor Arterial
				TC[13]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Arterial HOV
				TC[14]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Arterial truck
				; Collector
				TC[15]= T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Collector
			}

			; Output link volume sets:
			; 1 = PNR ; 2 = KNR
			FUNCTION V = vol[1]+vol[2]
		ENDPHASE
	ENDRUN

	RUN PGM=NETWORK
		NETI[1]=lod{year}@per@.net
		NETI[2]=lod{year}@per@_trn.tmp
		NETO=lod{year}@per@_final.NET,
			Exclude=VT_2,V1T_2,V2T_2,cspd_2,vdt_2,vht_2,v_2,time_2,vc_2,c,t0,v,v_totvdf,v1_2,v2_2

		V_PNR@per@ = LI.2.V1_2
		V_KNR@per@ = LI.2.V2_2

		;Apply PCE factor in vdf lookup
		v_totvdf = v_sov@per@ + v_hov@per@ + v_com@per@ + v_mtk@per@*1.5 + v_htk@per@*2 + v_pnr@per@ + v_knr@per@
		;revised total volume
		v_tot@per@ = v_sov@per@ + v_hov@per@ + v_com@per@ + v_mtk@per@ + v_htk@per@ + v_pnr@per@ + v_knr@per@

		;Run through VDF curves to recaculate congested time
		 C=@per@capacity*@capfac@
		
		IF(LI.1.HOVMERGE=1)
			T0=DISTANCE/SPEED*60 + @merge@/60  ;add penalty for HOV merge on slip ramps jln-05-16-14
		ELSE
			T0=DISTANCE/SPEED*60
		ENDIF

		linkclass=factype+1                         ;define linkclass by assignment group
			 
		V=v_totvdf   ;total volume function
		VC_1=v_totvdf / MAX(C,1)   ;VC RATIO
		
		; Cent conn  
		IF(FACTYPE = 0) TIME_1 = TIME1
		
		IF(c=0 & FACTYPE<>0)
			TIME_1=TIME1
		ELSE
			; Freeway    
			IF(FACTYPE = 1,4,5,6 & WEAVEFLAG=0) 
				TIME_1 = T0 * (1 + 0.10 * V/C + 0.60 * ((V/C)^6))     ; Freeway
			; Freeway weaving section
			ELSEIF(FACTYPE = 1 & WEAVEFLAG=1) 
				TIME_1 = T0 * (1 + 0.20 * V/C + 1.25 * ((V/C)^5.5))   ; Freeway weaving section
			; Expressway
			ELSEIF(FACTYPE=2)
				TIME_1 = T0 * (1 + 0.00 * V/C + 1.0 * ((V/C)^4))      ; Expressway
			; Parkway
			ELSEIF(FACTYPE=3)
				TIME_1 = T0 * (1 + 0.00 * V/C + 1.25* ((V/C)^4))      ; Parkwy
			; Ramps
			ELSEIF(FACTYPE=7-9)
				TIME_1 = T0 * (1 + 0.10 * V/C + 1.0 * ((V/C)^4))      ; sys-sys ramp
			; Arterial    
			ELSEIF(FACTYPE=10-13)
				TIME_1 = T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Principal Arterial
			ELSEIF(FACTYPE=14)
			; Collector    
				TIME_1 = T0 * (1 + 0.10 * V/C + 0.45* ((V/C)^4))      ; Collector
			ENDIF
		ENDIF
		
		IF(TIME_1>0)
			CGSTDSPD=distance/time_1*60
		ELSE
			CGSTDSPD=0
		ENDIF

		IF(C>0)
			VC_1 = V_TOT@per@ / C
		ELSE
			VC_1 = 0
		ENDIF

		;estimate LOS
		IF(VC_1 < 0.5)
			LOS = 'A/B'
		ELSEIF(VC_1 < 0.7)
			LOS = 'C'
		ELSEIF(VC_1 < 0.84)
			LOS = 'D'
		ELSEIF(VC_1 < 1.0)
			LOS = 'E'
		ELSEIF(VC_1 >= 1.0)
			LOS = 'F'
		ENDIF
	ENDRUN
ENDLOOP

:CheckLodMerge
IF({chkMrg.n}=0) goto :EndHwyMerge

; SUMMARIZE TIME OF DAY ASSIGNMENTS
RUN PGM=NETWORK
	NETI[1]=LOD{year}EA_FINAL.NET
	NETI[2]=LOD{year}AM_FINAL.NET     
	NETI[3]=LOD{year}MD_FINAL.NET
	NETI[4]=LOD{year}PM_FINAL.NET
	NETI[5]=LOD{year}EV.NET
	FILEO NETO=TOTAL{year}.NET,
		EXCLUDE=V_TOTEA,V_SOVEA,V_HOVEA,V_COMEA,V_MTKEA,V_HTKEA,V_TRKEA,
			V_TOTAM,V_SOVAM,V_HOVAM,V_COMAM,V_MTKAM,V_HTKAM,V_TRKAM,
			V_TOTMD,V_SOVMD,V_HOVMD,V_COMMD,V_MTKMD,V_HTKMD,V_TRKMD,
			V_TOTPM,V_SOVPM,V_HOVPM,V_COMPM,V_MTKPM,V_HTKPM,V_TRKPM,
			V_TOTEV,V_SOVEV,V_HOVEV,V_COMEV,V_MTKEV,V_HTKEV,V_TRKEV,
			V_HOV2EA,V_HOV2AM,V_HOV2MD,V_HOV2PM,V_HOV2EV,
			V_HOV3EA,V_HOV3AM,V_HOV3MD,V_HOV3PM,V_HOV3EV,
			V_PNREA,V_PNRAM,V_PNRMD,V_PNRPM,
			V_KNREA,V_KNRAM,V_KNRMD,V_KNRPM
			 
	;volumes
	V_EA=LI.1.V_TOTEA
	V_AM=LI.2.V_TOTAM
	V_MD=LI.3.V_TOTMD
	V_PM=LI.4.V_TOTPM
	V_EV=LI.5.V_TOTEV
	V_TOTDAY=V_EA+V_AM+V_MD+V_PM+V_EV
	V_SOV=LI.1.V_SOVEA+LI.2.V_SOVAM+LI.3.V_SOVMD+LI.4.V_SOVPM+LI.5.V_SOVEV
	V_HOV=LI.1.V_HOVEA+LI.2.V_HOVAM+LI.3.V_HOVMD+LI.4.V_HOVPM+LI.5.V_HOVEV
	V_HOV2=LI.1.V_HOV2EA+LI.2.V_HOV2AM+LI.3.V_HOV2MD+LI.4.V_HOV2PM+LI.5.V_HOV2EV
	V_HOV3=LI.1.V_HOV3EA+LI.2.V_HOV3AM+LI.3.V_HOV3MD+LI.4.V_HOV3PM+LI.5.V_HOV3EV
	V_COM=LI.1.V_COMEA+LI.2.V_COMAM+LI.3.V_COMMD+LI.4.V_COMPM+LI.5.V_COMEV
	V_MTK=LI.1.V_MTKEA+LI.2.V_MTKAM+LI.3.V_MTKMD+LI.4.V_MTKPM+LI.5.V_MTKEV
	V_HTK=LI.1.V_HTKEA+LI.2.V_HTKAM+LI.3.V_HTKMD+LI.4.V_HTKPM+LI.5.V_HTKEV
	V_TRK=LI.1.V_COMEA+LI.2.V_COMAM+LI.3.V_COMMD+LI.4.V_COMPM++LI.5.V_COMEV+
		LI.1.V_MTKEA+LI.2.V_MTKAM+LI.3.V_MTKMD+LI.4.V_MTKPM++LI.5.V_MTKEV+
		LI.1.V_HTKEA+LI.2.V_HTKAM+LI.3.V_HTKMD+LI.4.V_HTKPM+LI.5.V_HTKEV
	V_PNR=LI.1.V_PNREA+LI.2.V_PNRAM+LI.3.V_PNRMD+LI.4.V_PNRPM
	V_KNR=LI.1.V_KNREA+LI.2.V_KNRAM+LI.3.V_KNRMD+LI.4.V_KNRPM

	;TIME
	TIME_EA = LI.1.TIME_1
	TIME_AM = LI.2.TIME_1
	TIME_MD = LI.3.TIME_1
	TIME_PM = LI.4.TIME_1
	TIME_EV = LI.5.TIME_1

	;SPEED
	SPD_EA = LI.1.CGSTDSPD
	SPD_AM = LI.2.CGSTDSPD
	SPD_MD = LI.3.CGSTDSPD
	SPD_PM = LI.4.CGSTDSPD
	SPD_EV = LI.5.CGSTDSPD

	;V/C RATIO
	VC_EA = LI.1.VC_1
	VC_AM = LI.2.VC_1
	VC_MD = LI.3.VC_1
	VC_PM = LI.4.VC_1
	VC_EV = LI.5.VC_1

	; Calculate total VMT
	_vmtea=_vmtea+li.1.v_totea*LI.1.distance            ;vmt for EA
	_vmtam=_vmtam+li.2.v_totam*LI.2.distance            ;vmt for AM
	_vmtmd=_vmtmd+li.3.v_totmd*LI.3.distance            ;vmt for MD
	_vmtpm=_vmtpm+li.4.v_totpm*LI.4.distance            ;vmt for PM
	_vmtev=_vmtev+li.5.v_totev*LI.5.distance            ;vmt for EV
	_vmttotal=_vmtea+_vmtam+_vmtmd+_vmtpm+_vmtev        ;total vmt 
	VMT=V_TOTDAY*LI.1.DISTANCE          ; Add daily VMT as a link variable
	
	; Calculate volume WEIGHTED TIME_1 (24hr network)
	IF(V_TOTDAY>0)
		TIME_1=((V_EA*LI.1.TIME_1)+(V_AM*LI.2.TIME_1)+(V_MD*LI.3.TIME_1)+(V_PM*LI.4.TIME_1)+(V_EV*LI.5.TIME_1))/V_TOTDAY
	ELSE
		TIME_1=0
	ENDIF
	
	; CONGESTED SPEED BASED ON WEIGHTED CONGESTED TIME
	IF(TIME_1>0)
		CGSTDSPD=(LI.1.DISTANCE*60)/TIME_1
	ELSE
		CGSTDSPD=0
	ENDIF

	; Calculate "DAILY" VHT
	_VHTEA=_VHTEA+V_EA*(LI.1.TIME_1/60)                        ;vht ea
	_VHTAM=_VHTAM+V_AM*(LI.2.TIME_1/60)                        ;vht am 
	_VHTMD=_VHTMD+V_MD*(LI.3.TIME_1/60)                        ;vht md
	_VHTPM=_VHTPM+V_PM*(LI.4.TIME_1/60)                        ;vht pm
	_VHTEV=_VHTEV+V_EV*(LI.5.TIME_1/60)                        ;vht ev
	_vhttotal=_vhtea+_vhtam+_vhtmd+_vhtpm+_vhtev               ;total vht               
	VHT=(V_EA*LI.1.TIME_1+V_AM*LI.2.TIME_1+V_MD*LI.3.TIME_1+V_PM*LI.4.TIME_1+V_EV*LI.5.TIME_1)/60
ENDRUN

; Create loaded networks output geodatabase (temp.GDB must be stored in INPUTS folder)
; output = OUTPUTS.GDB
;  includes EA, AM, MD, PM, EV and daily networks
*XCOPY /E /I /Y INPUTS\TEMP.GDB TEMP.GDB
*RENAME temp.GDB OUTPUTS.GDB

LOOP N=1,6
	IF(N=1)
		NET='TOTAL{year}.NET'
		NAME='DAILY'
	ELSEIF(N=2)
		NET='LOD{year}EA_FINAL.NET'
		NAME='EA'
	ELSEIF(N=3)
		NET='LOD{year}AM_FINAL.NET'
		NAME='AM'
	ELSEIF(N=4)
		NET='LOD{year}MD_FINAL.NET'
		NAME='MD'
	ELSEIF(N=5)
		NET='LOD{year}PM_FINAL.NET'
		NAME='PM'
	ELSEIF(N=6)
		NET='LOD{year}EV.NET'
		NAME='EV'
	ENDIF

	RUN PGM=NETWORK
		FILEO NETO = "Outputs.gdb\@name@"
		FILEI LINKI[2] = "INPUTS\arc_20{year}.gdb\arc{year}hwy"
		FILEI LINKI[1] = "@net@"

		MERGE RECORD=F
		GEOMETRYSOURCE=2
	ENDRUN
ENDLOOP

; Export ARC Highway Network to CSV
RUN PGM=NETWORK
	NETI[1] = "lod{year}EA_FINAL.NET"
	NETI[2] = "lod{year}AM_FINAL.NET"
	NETI[3] = "lod{year}MD_FINAL.NET"
	NETI[4] = "lod{year}PM_FINAL.NET"
	NETI[5] = "lod{year}EV.NET"
	FILEO PRINTO[1] = "Links.csv" 
  
	PHASE=NODEMERGE
		IF(NI.1.n=1)
			PRINT PRINTO=1 CSV=T LIST= 'A','B','AXCOORD','AYCOORD','BXCOORD','BYCOORD','Distance','Factype','Prohibit','FCLASS','TOLLID','TAZ','LINKCLASS','SPEED',
									'LanesEA','TollEA','CapacityEA','FFTimeEA','AsgnTimeEA','EA_VC_1','SOVEA','HOVEA','HOV2EA','HOV3EA','COMEA','MTKEA','HTKEA','TOTEA','TRKEA','CGSTDSPD_EA','LOS_EA',
                                    'LanesAM','TollAM','CapacityAM','FFTimeAM','AsgnTimeAM','AM_VC_1','SOVAM','HOVAM','HOV2AM','HOV3AM','COMAM','MTKAM','HTKAM','TOTAM','TRKAM','CGSTDSPD_AM','LOS_AM',
                                    'LanesMD','TollMD','CapacityMD','FFTimeMD','AsgnTimeMD','MD_VC_1','SOVMD','HOVMD','HOV2MD','HOV3MD','COMMD','MTKMD','HTKMD','TOTMD','TRKMD','CGSTDSPD_MD','LOS_MD',
                                    'LanesPM','TollPM','CapacityPM','FFTimePM','AsgnTimePM','PM_VC_1','SOVPM','HOVPM','HOV2PM','HOV3PM','COMPM','MTKPM','HTKPM','TOTPM','TRKPM','CGSTDSPD_PM','LOS_PM',
                                    'LanesEV','TollEV','CapacityEV','FFTimeEV','AsgnTimeEV','EV_VC_1','SOVEV','HOVEV','HOV2EV','HOV3EV','COMEV','MTKEV','HTKEV','TOTEV','TRKEV','CGSTDSPD_EV','LOS_EV',
                                    'Lanes','Name' 
		ENDIF
	ENDPHASE

	_ax=a.x
	_ay=a.y
	_bx=b.x
	_by=b.y
  
	; Check for any V/c Ratios smaller than 0.0001 and convert them to 0 to prevent from printing in Scientific notation
	IF(li.1.vc_1 < 0.0001) vc_1=0
	IF(li.2.vc_1 < 0.0001) vc_2=0
	IF(li.3.vc_1 < 0.0001) vc_3=0
	IF(li.4.vc_1 < 0.0001) vc_4=0
	IF(li.5.vc_1 < 0.0001) vc_5=0

	IF(li.1.vc_1 >= 0.0001) vc_1=li.1.vc_1
	IF(li.2.vc_1 >= 0.0001) vc_2=li.2.vc_1
	IF(li.3.vc_1 >= 0.0001) vc_3=li.3.vc_1
	IF(li.4.vc_1 >= 0.0001) vc_4=li.4.vc_1
	IF(li.5.vc_1 >= 0.0001) vc_5=li.5.vc_1
  
	Name = ' ' + li.1.Name
  
    PRINT PRINTO=1 CSV=T FORM=10.0L LIST= li.1.A,li.1.B,_ax,_ay,_bx,_by, li.1.Distance(10.4L),li.1.Factype,li.1.prohibit,li.1.Fclass,li.1.tollid,li.1.taz,li.1.linkclass,li.1.speed,
			li.1.LANESEA,li.1.TollEA,li.1.EACapacity,li.1.TIME1(10.4L),li.1.TIME_1(10.4L),vc_1(10.4L),li.1.V_SOVEA,li.1.V_HOVEA,li.1.V_HOV2EA,li.1.V_HOV3EA,li.1.V_COMEA,li.1.V_MTKEA,li.1.V_HTKEA,li.1.V_TOTEA,li.1.V_TRKEA,li.1.CGSTDSPD(10.4L),li.1.LOS,
			li.2.LANESAM,li.2.TollAM,li.2.AMCapacity,li.2.TIME1(10.4L),li.2.TIME_1(10.4L),vc_2(10.4L),li.2.V_SOVAM,li.2.V_HOVAM,li.2.V_HOV2AM,li.2.V_HOV3AM,li.2.V_COMAM,li.2.V_MTKAM,li.2.V_HTKAM,li.2.V_TOTAM,li.2.V_TRKAM,li.2.CGSTDSPD(10.4L),li.2.LOS,
			li.3.LanesMD,li.3.TollMD,li.3.MDCapacity,li.3.TIME1(10.4L),li.3.TIME_1(10.4L),vc_3(10.4L),li.3.V_SOVMD,li.3.V_HOVMD,li.3.V_HOV2MD,li.3.V_HOV3MD,li.3.V_COMMD,li.3.V_MTKMD,li.3.V_HTKMD,li.3.V_TOTMD,li.3.V_TRKMD,li.3.CGSTDSPD(10.4L),li.3.LOS,
			li.4.LanesPM,li.4.TollPM,li.4.PMCapacity,li.4.TIME1(10.4L),li.4.TIME_1(10.4L),vc_4(10.4L),li.4.V_SOVPM,li.4.V_HOVPM,li.4.V_HOV2PM,li.4.V_HOV3PM,li.4.V_COMPM,li.4.V_MTKPM,li.4.V_HTKPM,li.4.V_TOTPM,li.4.V_TRKPM,li.4.CGSTDSPD(10.4L),li.4.LOS,
			li.5.LanesEV,li.5.TollEV,li.5.EVCapacity,li.5.TIME1(10.4L),li.5.TIME_1(10.4L),vc_5(10.4L),li.5.V_SOVEV,li.5.V_HOVEV,li.5.V_HOV2EV,li.5.V_HOV3EV,li.5.V_COMEV,li.5.V_MTKEV,li.5.V_HTKEV,li.5.V_TOTEV,li.5.V_TRKEV,li.5.CGSTDSPD(10.4L),li.5.LOS,
			li.1.lanes,name
ENDRUN

:EndHwyMerge
IF({chkTrnMrg.n}=0) goto :EndPostAssign

;Create transit summaries:
	; - individual line summaries
	; - station boardings
	; - station to station volumes
	; - transit stop boardings/exits
	; - transit merge

RUN PGM=MATRIX
	RECI=WLK_ALLTRN_WLK_AM.DBF,SORT=NAME
	RECO[1]=Eval\TLINKS.DBF,FIELDS=NAME(30.0)
	RECO[2]=Eval\STOP_NODES.TMP,FIELDS=N,STOP
	RECO[3]=Eval\ZonesHalfMile.TMP,FIELDS=N,STOP

	IF(RI.MODE>10)
		CHK2 = STRPOS('-',RI.NAME)
		IF(CHK2=0)
			RO.NAME=RI.NAME
			WRITE RECO=1
		ENDIF
	ENDIF

	IF(RI.STOPA=1)
		RO.N=RI.A
		RO.STOP=1
		WRITE RECO=2
	ENDIF
	
	IF(RI.DIST<=0.5 & RI.A<={lastin})
		RO.N=RI.A
		RO.STOP=1
		WRITE RECO=3
	ENDIF
ENDRUN

RUN PGM=MATRIX
	RECI=Eval\TLINKS.DBF
	RECO=Eval\ROUTES.DBF,FIELDS=LASTNAME(40.0)

	NAME=RI.NAME
	COUNT=COUNT+1
	
	IF(RECI.RECNO=RECI.NUMRECORDS)
		RO.LASTNAME=RI.NAME
		WRITE RECO=1
	ELSE
		IF(COUNT>1)
			IF(NAME=RO.LASTNAME)
				BREAK
			ELSE
				WRITE RECO=1
			ENDIF
		ENDIF
		RO.LASTNAME=NAME
	ENDIF
ENDRUN

LOOP N=1,33
	IF(N=1)  FILE='WLK_ALLTRN_WLK_EA'
	IF(N=2)  FILE='WLK_PRMTRN_WLK_EA'
	IF(N=3)  FILE='KNR_ALLTRN_WLK_EA'
	IF(N=4)  FILE='KNR_PRMTRN_WLK_EA'
	IF(N=5)  FILE='PNR_ALLTRN_WLK_EA'
	IF(N=6)  FILE='PNR_PRMTRN_WLK_EA'
	IF(N=7)  FILE='WLK_ALLTRN_WLK_AM'
	IF(N=8)  FILE='WLK_PRMTRN_WLK_AM'
	IF(N=9)  FILE='KNR_ALLTRN_WLK_AM'
	IF(N=10) FILE='KNR_PRMTRN_WLK_AM'
	IF(N=11) FILE='PNR_ALLTRN_WLK_AM'
	IF(N=12) FILE='PNR_PRMTRN_WLK_AM'
	IF(N=13) FILE='WLK_ALLTRN_WLK_MD'
	IF(N=14) FILE='WLK_PRMTRN_WLK_MD'
	IF(N=15) FILE='KNR_ALLTRN_WLK_MD'
	IF(N=16) FILE='KNR_PRMTRN_WLK_MD'
	IF(N=17) FILE='PNR_ALLTRN_WLK_MD'
	IF(N=18) FILE='PNR_PRMTRN_WLK_MD'
	IF(N=19) FILE='WLK_ALLTRN_KNR_MD'
	IF(N=20) FILE='WLK_PRMTRN_KNR_MD'
	IF(N=21) FILE='WLK_ALLTRN_PNR_MD'
	IF(N=22) FILE='WLK_PRMTRN_PNR_MD'
	IF(N=23) FILE='WLK_ALLTRN_WLK_PM'
	IF(N=24) FILE='WLK_PRMTRN_WLK_PM'
	IF(N=25) FILE='WLK_ALLTRN_KNR_PM'
	IF(N=26) FILE='WLK_PRMTRN_KNR_PM'
	IF(N=27) FILE='WLK_ALLTRN_PNR_PM'
	IF(N=28) FILE='WLK_PRMTRN_PNR_PM'
	IF(N=29) FILE='WLK_ALLTRN_WLK_EV'
	IF(N=30) FILE='WLK_PRMTRN_WLK_EV'
	IF(N=31) FILE='WLK_PRMTRN_WLK_AIRPASS'
	IF(N=32) FILE='PNR_PRMTRN_WLK_AIRPASS'
	IF(N=33) FILE='KNR_PRMTRN_WLK_AIRPASS'

	RUN PGM=MATRIX
		RECI="@FILE@.DBF"
		RECO[1]=EVAL\@FILE@_TMODES_RTE.DBF,FIELDS=RECI.ALLFIELDS
		RECO[2]=EVAL\@FILE@_TMODES_BRDS.DBF,FIELDS=RECI.ALLFIELDS
		RECO[3]=EVAL\@FILE@_TMODES.DBF,FIELDS=RECI.ALLFIELDS

		;create file for processing all route data
		IF(RI.MODE>9)
			CHK2 = STRPOS('-',RI.NAME)
			IF(CHK2=0)
				RO.NAME=RI.NAME
				WRITE RECO=1
			ENDIF
		ENDIF
		
		;create file for processing just nodes with non-zero boardings/exits
		IF(RI.MODE>6)
			IF(RI.ONA>0 | RI.OFFB>0)
				WRITE RECO=2
			ENDIF
		ENDIF
		
		;create file for all real transit modes
		IF(RI.MODE>9)
			WRITE RECO=3
		ENDIF
	ENDRUN
ENDLOOP

LOOP TOD=1,6
	IF(TOD=1)
		PER='EA'
		FILE1='WLK_ALLTRN_WLK_EA_TMODES_RTE.DBF'
		FILE2='WLK_PRMTRN_WLK_EA_TMODES_RTE.DBF'
		FILE3='KNR_ALLTRN_WLK_EA_TMODES_RTE.DBF'
		FILE4='KNR_PRMTRN_WLK_EA_TMODES_RTE.DBF'
		FILE5='PNR_ALLTRN_WLK_EA_TMODES_RTE.DBF'
		FILE6='PNR_PRMTRN_WLK_EA_TMODES_RTE.DBF'
		HDWY='_1'
	ELSEIF(TOD=2)
		PER='AM'
		FILE1='WLK_ALLTRN_WLK_AM_TMODES_RTE.DBF'
		FILE2='WLK_PRMTRN_WLK_AM_TMODES_RTE.DBF'
		FILE3='KNR_ALLTRN_WLK_AM_TMODES_RTE.DBF'
		FILE4='KNR_PRMTRN_WLK_AM_TMODES_RTE.DBF'
		FILE5='PNR_ALLTRN_WLK_AM_TMODES_RTE.DBF'
		FILE6='PNR_PRMTRN_WLK_AM_TMODES_RTE.DBF'
		HDWY='_2'
	ELSEIF(TOD=3)
		PER='PM'
		FILE1='WLK_ALLTRN_WLK_PM_TMODES_RTE.DBF'
		FILE2='WLK_PRMTRN_WLK_PM_TMODES_RTE.DBF'
		FILE3='WLK_ALLTRN_KNR_PM_TMODES_RTE.DBF'
		FILE4='WLK_PRMTRN_KNR_PM_TMODES_RTE.DBF'
		FILE5='WLK_ALLTRN_PNR_PM_TMODES_RTE.DBF'
		FILE6='WLK_PRMTRN_PNR_PM_TMODES_RTE.DBF'
		HDWY='_4'
	ELSEIF(TOD=4)
		PER='MD'
		FILE1='WLK_ALLTRN_WLK_MD_TMODES_RTE.DBF'
		FILE2='WLK_PRMTRN_WLK_MD_TMODES_RTE.DBF'
		FILE3='KNR_ALLTRN_WLK_MD_TMODES_RTE.DBF'
		FILE4='KNR_PRMTRN_WLK_MD_TMODES_RTE.DBF'
		FILE5='PNR_ALLTRN_WLK_MD_TMODES_RTE.DBF'
		FILE6='PNR_PRMTRN_WLK_MD_TMODES_RTE.DBF'
		FILE7='WLK_ALLTRN_KNR_MD_TMODES_RTE.DBF'
		FILE8='WLK_PRMTRN_KNR_MD_TMODES_RTE.DBF'
		FILE9='WLK_ALLTRN_PNR_MD_TMODES_RTE.DBF'
		FILE10='WLK_PRMTRN_PNR_MD_TMODES_RTE.DBF'
		HDWY='_3'
	ELSEIF(TOD=5)
		PER='EV'
		FILE1='WLK_ALLTRN_WLK_EV_TMODES_RTE.DBF'
		FILE2='WLK_PRMTRN_WLK_EV_TMODES_RTE.DBF'
		HDWY='_5'
	ELSEIF(TOD=6)
		PER='AIRPASS'
		FILE1='WLK_PRMTRN_WLK_AIRPASS_TMODES_RTE.DBF'
		FILE2='PNR_PRMTRN_WLK_AIRPASS_TMODES_RTE.DBF'
		FILE3='KNR_PRMTRN_WLK_AIRPASS_TMODES_RTE.DBF'
		HDWY='_3'
	ENDIF

	IF(TOD=1-3)  ;EA, AM, AND PM
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TOD
		RUN PGM=MATRIX
			DBI[1]=Eval\ROUTES.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			DBI[4]=Eval\@FILE3@
			DBI[5]=Eval\@FILE4@
			DBI[6]=Eval\@FILE5@
			DBI[7]=Eval\@FILE6@
			RECO[1]=Eval\@PER@_RouteLoads.DBF,FIELDS=NAME(30.0),MODE,BOARDS,HEADWAY,PASSMILES,PASSHOURS,TIME,DIST,SPEED
			ZONES=1

			LOOP RTE=1,DBI.1.NUMRECORDS
				X=DBIReadRecord(1,RTE)
				_BRD=0
				_PMLS=0
				_PHRS=0
				_TIME=0
				_DIST=0
				NAME = DI.1.LASTNAME
			
				LOOP WLKTRN=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKTRN)
					IF(NAME=DI.2.NAME)
						_BRD = _BRD + DI.2.ONA + DI.2.REV_ONB
						_PMLS = _PMLS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.DIST
						_PHRS = _PHRS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.TIME/60
						_TIME = _TIME + DI.2.TIME
						_DIST = _DIST + DI.2.DIST
						MODE=DI.2.MODE
						HEADWAY=DI.2.HEADWAY@HDWY@
					ENDIF
				ENDLOOP
			
				LOOP WLKPRE=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,WLKPRE)
					IF(NAME=DI.3.NAME)
						_BRD = _BRD + DI.3.ONA + DI.3.REV_ONB
						_PMLS = _PMLS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.DIST
						_PHRS = _PHRS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.TIME/60
					ENDIF
				ENDLOOP
			
				LOOP KNRTRN=1,DBI.4.NUMRECORDS
					Y=DBIReadRecord(4,KNRTRN)
					IF(NAME=DI.4.NAME)
						_BRD = _BRD + DI.4.ONA + DI.4.REV_ONB
						_PMLS = _PMLS + (DI.4.VOL + DI.4.REV_VOL) * DI.4.DIST
						_PHRS = _PHRS + (DI.4.VOL + DI.4.REV_VOL) * DI.4.TIME/60
					ENDIF
				ENDLOOP
			
				LOOP KNRPRE=1,DBI.5.NUMRECORDS
					Y=DBIReadRecord(5,KNRPRE)
					IF(NAME=DI.5.NAME)
						_BRD = _BRD + DI.5.ONA + DI.5.REV_ONB
						_PMLS = _PMLS + (DI.5.VOL + DI.5.REV_VOL) * DI.5.DIST
						_PHRS = _PHRS + (DI.5.VOL + DI.5.REV_VOL) * DI.5.TIME/60
					ENDIF
				ENDLOOP
			
				LOOP PNRTRN=1,DBI.6.NUMRECORDS
					Y=DBIReadRecord(6,PNRTRN)
					IF(NAME=DI.6.NAME)
						_BRD = _BRD + DI.6.ONA + DI.6.REV_ONB
						_PMLS = _PMLS + (DI.6.VOL + DI.6.REV_VOL) * DI.6.DIST
						_PHRS = _PHRS + (DI.6.VOL + DI.6.REV_VOL) * DI.6.TIME/60
					ENDIF
				ENDLOOP
			
				LOOP PNRPRE=1,DBI.7.NUMRECORDS
					Y=DBIReadRecord(7,PNRPRE)
					IF(NAME=DI.7.NAME)
						_BRD = _BRD + DI.7.ONA + DI.7.REV_ONB
						_PMLS = _PMLS + (DI.7.VOL + DI.7.REV_VOL) * DI.7.DIST
						_PHRS = _PHRS + (DI.7.VOL + DI.7.REV_VOL) * DI.7.TIME/60
					ENDIF
				ENDLOOP
			
				RO.NAME=DI.1.LASTNAME
				RO.MODE=MODE
				RO.BOARDS=_BRD
				RO.PASSMILES=_PMLS
				RO.PASSHOURS=_PHRS
				RO.TIME=_TIME
				RO.DIST=_DIST
				RO.SPEED=(RO.DIST/RO.TIME)*60
				WRITE RECO=1
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TOD=4)  ;MIDDAY
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TOD
		RUN PGM=MATRIX
			RECI=Eval\ROUTES.DBF
			DBI[1]=Eval\@FILE1@
			DBI[2]=Eval\@FILE2@
			DBI[3]=Eval\@FILE3@
			DBI[4]=Eval\@FILE4@
			DBI[5]=Eval\@FILE5@
			DBI[6]=Eval\@FILE6@
			DBI[7]=Eval\@FILE7@
			DBI[8]=Eval\@FILE8@
			DBI[9]=Eval\@FILE9@
			DBI[10]=Eval\@FILE10@
			RECO[1]=Eval\@PER@_RouteLoads.DBF,FIELDS=NAME(30.0),MODE,BOARDS,HEADWAY,PASSMILES,PASSHOURS,TIME,DIST,SPEED
			ZONES=1

			_BRD=0
			_PMLS=0
			_PHRS=0
			_TIME=0
			_DIST=0
			NAME = RI.LASTNAME
			
			LOOP WLKTRN=1,DBI.1.NUMRECORDS
				Y=DBIReadRecord(1,WLKTRN)
				IF(NAME=DI.1.NAME)
					_BRD = _BRD + DI.1.ONA + DI.1.REV_ONB
					_PMLS = _PMLS + (DI.1.VOL + DI.1.REV_VOL) * DI.1.DIST
					_PHRS = _PHRS + (DI.1.VOL + DI.1.REV_VOL) * DI.1.TIME/60
					_TIME = _TIME + DI.1.TIME
					_DIST = _DIST + DI.1.DIST
					HEADWAY=DI.1.HEADWAY@HDWY@
					MODE=DI.1.MODE
				ENDIF
			ENDLOOP
			
			LOOP WLKPRE=1,DBI.2.NUMRECORDS
				Y=DBIReadRecord(2,WLKPRE)
				IF(NAME=DI.2.NAME)
					_BRD = _BRD + DI.2.ONA + DI.2.REV_ONB
					_PMLS = _PMLS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.DIST
					_PHRS = _PHRS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP KNRTRN=1,DBI.3.NUMRECORDS
				Y=DBIReadRecord(3,KNRTRN)
				IF(NAME=DI.3.NAME)
					_BRD = _BRD + DI.3.ONA + DI.3.REV_ONB
					_PMLS = _PMLS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.DIST
					_PHRS = _PHRS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP KNRPRE=1,DBI.4.NUMRECORDS
				Y=DBIReadRecord(4,KNRPRE)
				IF(NAME=DI.4.NAME)
					_BRD = _BRD + DI.4.ONA + DI.4.REV_ONB
					_PMLS = _PMLS + (DI.4.VOL + DI.4.REV_VOL) * DI.4.DIST
					_PHRS = _PHRS + (DI.4.VOL + DI.4.REV_VOL) * DI.4.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP PNRTRN=1,DBI.5.NUMRECORDS
				Y=DBIReadRecord(5,PNRTRN)
				IF(NAME=DI.5.NAME)
					_BRD = _BRD + DI.5.ONA + DI.5.REV_ONB
					_PMLS = _PMLS + (DI.5.VOL + DI.5.REV_VOL) * DI.5.DIST
					_PHRS = _PHRS + (DI.5.VOL + DI.5.REV_VOL) * DI.5.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP PNRPRE=1,DBI.6.NUMRECORDS
				Y=DBIReadRecord(6,PNRPRE)
				IF(NAME=DI.6.NAME)
					_BRD = _BRD + DI.6.ONA + DI.6.REV_ONB
					_PMLS = _PMLS + (DI.6.VOL + DI.6.REV_VOL) * DI.6.DIST
					_PHRS = _PHRS + (DI.6.VOL + DI.6.REV_VOL) * DI.6.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP WLKTRNKNR=1,DBI.7.NUMRECORDS
				Y=DBIReadRecord(7,WLKTRNKNR)
				IF(NAME=DI.7.NAME)
					_BRD = _BRD + DI.7.ONA + DI.7.REV_ONB
					_PMLS = _PMLS + (DI.7.VOL + DI.7.REV_VOL) * DI.7.DIST
					_PHRS = _PHRS + (DI.7.VOL + DI.7.REV_VOL) * DI.7.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP WLKPRMKNR=1,DBI.8.NUMRECORDS
				Y=DBIReadRecord(8,WLKPRMKNR)
				IF(NAME=DI.8.NAME)
					_BRD = _BRD + DI.8.ONA + DI.8.REV_ONB
					_PMLS = _PMLS + (DI.8.VOL + DI.8.REV_VOL) * DI.8.DIST
					_PHRS = _PHRS + (DI.8.VOL + DI.8.REV_VOL) * DI.8.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP WLKTRNPNR=1,DBI.9.NUMRECORDS
				Y=DBIReadRecord(9,WLKTRNPNR)
				IF(NAME=DI.9.NAME)
					_BRD = _BRD + DI.9.ONA + DI.9.REV_ONB
					_PMLS = _PMLS + (DI.9.VOL + DI.9.REV_VOL) * DI.9.DIST
					_PHRS = _PHRS + (DI.9.VOL + DI.9.REV_VOL) * DI.9.TIME/60
				ENDIF
			ENDLOOP
			
			LOOP WLKPRMPNR=1,DBI.10.NUMRECORDS
				Y=DBIReadRecord(10,WLKPRMPNR)
				IF(NAME=DI.10.NAME)
					_BRD = _BRD + DI.10.ONA + DI.10.REV_ONB
					_PMLS = _PMLS + (DI.10.VOL + DI.10.REV_VOL) * DI.10.DIST
					_PHRS = _PHRS + (DI.10.VOL + DI.10.REV_VOL) * DI.10.TIME/60
				ENDIF
			ENDLOOP
			
			RO.NAME=RI.LASTNAME
			RO.MODE=MODE
			RO.BOARDS=_BRD
			RO.PASSMILES=_PMLS
			RO.PASSHOURS=_PHRS
			RO.TIME=_TIME
			RO.DIST=_DIST
			RO.SPEED=(RO.DIST/RO.TIME)*60
			WRITE RECO=1
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TOD=5)  ;EV
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TOD
		RUN PGM=MATRIX
			DBI[1]=Eval\ROUTES.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			RECO[1]=Eval\@PER@_RouteLoads.DBF,FIELDS=NAME(30.0),MODE,BOARDS,HEADWAY,PASSMILES,PASSHOURS,TIME,DIST,SPEED
			ZONES=1

			LOOP RTE=1,DBI.1.NUMRECORDS
				X=DBIReadRecord(1,RTE)
				_BRD=0
				_PMLS=0
				_PHRS=0
				_TIME=0
				_DIST=0
				NAME = DI.1.LASTNAME
			
				LOOP WLKTRN=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKTRN)
					IF(NAME=DI.2.NAME)
						_BRD = _BRD + DI.2.ONA + DI.2.REV_ONB
						_PMLS = _PMLS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.DIST
						_PHRS = _PHRS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.TIME/60
						_TIME = _TIME + DI.2.TIME
						_DIST = _DIST + DI.2.DIST
						HEADWAY=DI.2.HEADWAY@HDWY@
						MODE=DI.2.MODE
					ENDIF
				ENDLOOP
			
				LOOP WLKPRE=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,WLKPRE)
					IF(NAME=DI.3.NAME)
						_BRD = _BRD + DI.3.ONA + DI.3.REV_ONB
						_PMLS = _PMLS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.DIST
						_PHRS = _PHRS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.TIME/60
					ENDIF
				ENDLOOP
			
				RO.NAME=DI.1.LASTNAME
				RO.MODE=MODE
				RO.BOARDS=_BRD
				RO.PASSMILES=_PMLS
				RO.PASSHOURS=_PHRS
				RO.TIME=_TIME
				RO.DIST=_DIST
				RO.SPEED=(RO.DIST/RO.TIME)*60
				WRITE RECO=1
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TOD=6)  ;AIRPASS
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TOD
		RUN PGM=MATRIX
			DBI[1]=Eval\ROUTES.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			DBI[4]=Eval\@FILE3@
			RECO[1]=Eval\@PER@_RouteLoads.DBF,FIELDS=NAME(30.0),MODE,BOARDS,HEADWAY,PASSMILES,PASSHOURS,TIME,DIST,SPEED
			ZONES=1

			LOOP RTE=1,DBI.1.NUMRECORDS
				X=DBIReadRecord(1,RTE)
				_BRD=0
				_PMLS=0
				_PHRS=0
				_TIME=0
				_DIST=0
				NAME = DI.1.LASTNAME
			
				LOOP WLKTRN=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKTRN)
					IF(NAME=DI.2.NAME)
						_BRD = _BRD + DI.2.ONA + DI.2.REV_ONB
						_PMLS = _PMLS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.DIST
						_PHRS = _PHRS + (DI.2.VOL + DI.2.REV_VOL) * DI.2.TIME/60
						_TIME = _TIME + DI.2.TIME
						_DIST = _DIST + DI.2.DIST
						HEADWAY=DI.2.HEADWAY@HDWY@
						MODE=DI.2.MODE
					ENDIF
				ENDLOOP
			
				LOOP PNRTRN=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,PNRTRN)
					IF(NAME=DI.3.NAME)
						_BRD = _BRD + DI.3.ONA + DI.3.REV_ONB
						_PMLS = _PMLS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.DIST
						_PHRS = _PHRS + (DI.3.VOL + DI.3.REV_VOL) * DI.3.TIME/60
					ENDIF
				ENDLOOP
			
				LOOP KNRTRN=1,DBI.4.NUMRECORDS
					Y=DBIReadRecord(4,KNRTRN)
					IF(NAME=DI.4.NAME)
						_BRD = _BRD + DI.4.ONA + DI.4.REV_ONB
						_PMLS = _PMLS + (DI.4.VOL + DI.4.REV_VOL) * DI.4.DIST
						_PHRS = _PHRS + (DI.4.VOL + DI.4.REV_VOL) * DI.4.TIME/60
					ENDIF
				ENDLOOP
			
				RO.NAME=DI.1.LASTNAME
				RO.MODE=MODE
				RO.BOARDS=_BRD
				RO.PASSMILES=_PMLS
				RO.PASSHOURS=_PHRS
				RO.TIME=_TIME
				RO.DIST=_DIST
			   
				IF(RO.BOARDS>0)
					RO.SPEED=(RO.DIST/RO.TIME)*60
				ELSE
					RO.SPEED=0
				ENDIF
				WRITE RECO=1
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ENDIF
ENDLOOP

; Input highway network must contain node attributes:
;  STA_FLAG - set equal to 1 to flag station node (numeric field)
;  STATION - name of station (text field)

; Output file:
;  StationBoardings_@TimePeriod@.DBF

;Write out DBF file for Stations
RUN PGM=NETWORK
	NETI=INPUT.NET
	NODEO=Eval\TransitStations.DBF,INCLUDE=N,STAFLAG,STATION

	PHASE=NODEMERGE
		IF(NI.1.STAFLAG=0) DELETE
	ENDPHASE
ENDRUN

LOOP TP=7,12  ;LOOP THROUGH TIME PERIODS (start at 7 for multi-step processing)
	IF(TP=7)
		PER='EA'
		FILE1='WLK_ALLTRN_WLK_EA_TMODES.DBF'
		FILE2='WLK_PRMTRN_WLK_EA_TMODES.DBF'
		FILE3='KNR_ALLTRN_WLK_EA_TMODES.DBF'
		FILE4='KNR_PRMTRN_WLK_EA_TMODES.DBF'
		FILE5='PNR_ALLTRN_WLK_EA_TMODES.DBF'
		FILE6='PNR_PRMTRN_WLK_EA_TMODES.DBF'
	ELSEIF(TP=8)
		PER='AM'
		FILE1='WLK_ALLTRN_WLK_AM_TMODES.DBF'
		FILE2='WLK_PRMTRN_WLK_AM_TMODES.DBF'
		FILE3='KNR_ALLTRN_WLK_AM_TMODES.DBF'
		FILE4='KNR_PRMTRN_WLK_AM_TMODES.DBF'
		FILE5='PNR_ALLTRN_WLK_AM_TMODES.DBF'
		FILE6='PNR_PRMTRN_WLK_AM_TMODES.DBF'
	ELSEIF(TP=9)
		PER='PM'
		FILE1='WLK_ALLTRN_WLK_PM_TMODES.DBF'
		FILE2='WLK_PRMTRN_WLK_PM_TMODES.DBF'
		FILE3='WLK_ALLTRN_KNR_PM_TMODES.DBF'
		FILE4='WLK_PRMTRN_KNR_PM_TMODES.DBF'
		FILE5='WLK_ALLTRN_PNR_PM_TMODES.DBF'
		FILE6='WLK_PRMTRN_PNR_PM_TMODES.DBF'
	ELSEIF(TP=10)
		PER='MD'
		FILE1='WLK_ALLTRN_WLK_MD_TMODES.DBF'
		FILE2='WLK_PRMTRN_WLK_MD_TMODES.DBF'
		FILE3='KNR_ALLTRN_WLK_MD_TMODES.DBF'
		FILE4='KNR_PRMTRN_WLK_MD_TMODES.DBF'
		FILE5='PNR_ALLTRN_WLK_MD_TMODES.DBF'
		FILE6='PNR_PRMTRN_WLK_MD_TMODES.DBF'
		FILE7='WLK_ALLTRN_KNR_MD_TMODES.DBF'
		FILE8='WLK_PRMTRN_KNR_MD_TMODES.DBF'
		FILE9='WLK_ALLTRN_PNR_MD_TMODES.DBF'
		FILE10='WLK_PRMTRN_PNR_MD_TMODES.DBF'
	ELSEIF(TP=11)
		PER='EV'
		FILE1='WLK_ALLTRN_WLK_EV_TMODES.DBF'
		FILE2='WLK_PRMTRN_WLK_EV_TMODES.DBF'
	ELSEIF(TP=12)
		PER='AIR'
		FILE1='WLK_PRMTRN_WLK_AIRPASS_TMODES.DBF'
		FILE2='KNR_PRMTRN_WLK_AIRPASS_TMODES.DBF'
		FILE3='PNR_PRMTRN_WLK_AIRPASS_TMODES.DBF'
	ENDIF

	; Tabulate station boardings for each assignment output file
	IF(TP=7-9)  ;EA, AM, PM
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TP
		RUN PGM=MATRIX
			DBI[1]=Eval\TransitStations.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			DBI[4]=Eval\@FILE3@
			DBI[5]=Eval\@FILE4@
			DBI[6]=Eval\@FILE5@
			DBI[7]=Eval\@FILE6@
			RECO=Eval\StationBoardings_@per@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS
			ZONES=1
			
			; divide boardings + alightings by two at each node to convert from PA format to OD format
			; prints total daily boardings for each station (regardless of how many routes/lines serve station)
			LOOP STA=1,DBI.1.NUMRECORDS  ;loop through station lookup records
				X=DBIReadRecord(1,STA)
				NODE = DI.1.N
				NAME = DI.1.STATION
				_BRD=0            ;set boardings to zero each time through station loop
				_XIT=0            ;set exits to zero each time through station loop

				LOOP WLKTRN=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKTRN)
					IF(DI.2.A = NODE)
						_BRD = _BRD + DI.2.ONA
					ENDIF
					IF(DI.2.B = NODE)
						_XIT = _XIT + DI.2.OFFB
					ENDIF
				ENDLOOP
				
				LOOP WLKPRM=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,WLKPRM)
					IF(DI.3.A = NODE)
						_BRD = _BRD + DI.3.ONA
					ENDIF
					IF(DI.3.B = NODE)
						_XIT = _XIT + DI.3.OFFB
					ENDIF
				ENDLOOP
			   
				LOOP KNRTRN=1,DBI.4.NUMRECORDS
					Y=DBIReadRecord(4,KNRTRN)
					IF(DI.4.A = NODE)
						_BRD = _BRD + DI.4.ONA
					ENDIF
					IF(DI.4.B = NODE)
						_XIT = _XIT + DI.4.OFFB
					ENDIF
				ENDLOOP
			   
				LOOP KNRPRM=1,DBI.5.NUMRECORDS
					Y=DBIReadRecord(5,KNRPRM)
					IF(DI.5.A = NODE)
						_BRD = _BRD + DI.5.ONA
					ENDIF
					IF(DI.5.B = NODE)
						_XIT = _XIT + DI.5.OFFB
					ENDIF
				ENDLOOP
				
				LOOP PNRTRN=1,DBI.6.NUMRECORDS
					Y=DBIReadRecord(6,PNRTRN)
					IF(DI.6.A = NODE)
						_BRD = _BRD + DI.6.ONA
					ENDIF
					IF(DI.6.B = NODE)
						_XIT = _XIT + DI.6.OFFB
					ENDIF
				ENDLOOP
				
				LOOP PNRPRM=1,DBI.7.NUMRECORDS
					Y=DBIReadRecord(7,PNRPRM)
					IF(DI.7.A = NODE)
						_BRD = _BRD + DI.7.ONA
					ENDIF
					IF(DI.7.B = NODE)
						_XIT = _XIT + DI.7.OFFB
					ENDIF
					IF(DBI.7.RECNO=DBI.7.NUMRECORDS)  ;last assignment record : print boarding results
						RO.NODE=NODE
						RO.NAME=NAME
						RO.BOARDS=_BRD
						RO.EXITS=_XIT
						WRITE RECO=1
					ENDIF
				ENDLOOP
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TP=10)  ;MIDDAY
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TP
		RUN PGM=MATRIX
			RECI=Eval\TransitStations.DBF
			DBI[1]=Eval\@FILE1@
			DBI[2]=Eval\@FILE2@
			DBI[3]=Eval\@FILE3@
			DBI[4]=Eval\@FILE4@
			DBI[5]=Eval\@FILE5@
			DBI[6]=Eval\@FILE6@
			DBI[7]=Eval\@FILE7@
			DBI[8]=Eval\@FILE8@
			DBI[9]=Eval\@FILE9@
			DBI[10]=Eval\@FILE10@
			RECO=Eval\StationBoardings_@PER@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS
			ZONES=1

			; divide boardings + alightings by two at each node to convert from PA format to OD format
			; prints total daily boardings for each station (regardless of how many routes/lines serve station)
			NODE = RI.N
			NAME = RI.STATION
			_BRD=0            ;set boardings to zero each time through station loop
			_XIT=0            ;set exits to zero each time through station loop

			LOOP WLKTRN=1,DBI.1.NUMRECORDS
				Y=DBIReadRecord(1,WLKTRN)
				IF(DI.1.A = NODE)
					_BRD = _BRD + DI.1.ONA
				ENDIF
				IF(DI.1.B = NODE)
					_XIT = _XIT + DI.1.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKPRM=1,DBI.2.NUMRECORDS
				Y=DBIReadRecord(2,WLKPRM)
				IF(DI.2.A = NODE)
					_BRD = _BRD + DI.2.ONA
				ENDIF
				IF(DI.2.B = NODE)
					_XIT = _XIT + DI.2.OFFB
				ENDIF
			ENDLOOP
			
			LOOP KNRTRN=1,DBI.3.NUMRECORDS
				Y=DBIReadRecord(3,KNRTRN)
				IF(DI.3.A = NODE)
					_BRD = _BRD + DI.3.ONA
				ENDIF
				IF(DI.3.B = NODE)
					_XIT = _XIT + DI.3.OFFB
				ENDIF
			ENDLOOP
			
			LOOP KNRPRM=1,DBI.4.NUMRECORDS
				Y=DBIReadRecord(4,KNRPRM)
				IF(DI.4.A = NODE)
					_BRD = _BRD + DI.4.ONA
				ENDIF
				IF(DI.4.B = NODE)
					_XIT = _XIT + DI.4.OFFB
				ENDIF
			ENDLOOP
			
			LOOP PNRTRN=1,DBI.5.NUMRECORDS
				Y=DBIReadRecord(5,PNRTRN)
				IF(DI.5.A = NODE)
					_BRD = _BRD + DI.5.ONA
				ENDIF
				IF(DI.5.B = NODE)
					_XIT = _XIT + DI.5.OFFB
				ENDIF
			ENDLOOP
			
			LOOP PNRPRM=1,DBI.6.NUMRECORDS
				Y=DBIReadRecord(6,PNRPRM)
				IF(DI.6.A = NODE)
					_BRD = _BRD + DI.6.ONA
				ENDIF
				IF(DI.6.B = NODE)
					_XIT = _XIT + DI.6.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKTRNKNR=1,DBI.7.NUMRECORDS
				Y=DBIReadRecord(7,WLKTRNKNR)
				IF(DI.7.A = NODE)
					_BRD = _BRD + DI.7.ONA
				ENDIF
				IF(DI.7.B = NODE)
					_XIT = _XIT + DI.7.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKPRMKNR=1,DBI.8.NUMRECORDS
				Y=DBIReadRecord(8,WLKPRMKNR)
				IF(DI.8.A = NODE)
					_BRD = _BRD + DI.8.ONA
				ENDIF
				IF(DI.8.B = NODE)
					_XIT = _XIT + DI.8.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKTRNPNR=1,DBI.9.NUMRECORDS
				Y=DBIReadRecord(9,WLKTRNPNR)
				IF(DI.9.A = NODE)
					_BRD = _BRD + DI.9.ONA
				ENDIF
				IF(DI.9.B = NODE)
					_XIT = _XIT + DI.9.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKPRMPNR=1,DBI.10.NUMRECORDS
				Y=DBIReadRecord(10,WLKPRMPNR)
				IF(DI.10.A = NODE)
					_BRD = _BRD + DI.10.ONA
				ENDIF
				IF(DI.10.B = NODE)
					_XIT = _XIT + DI.10.OFFB
				ENDIF
				IF(DBI.10.RECNO=DBI.10.NUMRECORDS)  ;last assignment record : print boarding results
					RO.NODE=NODE
					RO.NAME=NAME
					RO.BOARDS=_BRD
					RO.EXITS=_XIT
					WRITE RECO=1
				ENDIF
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TP=11)  ;EVEVNING
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TP
		RUN PGM=MATRIX
			DBI[1]=Eval\TransitStations.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			RECO=Eval\StationBoardings_@per@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS
			ZONES=1
			
			; divide boardings + alightings by two at each node to convert from PA format to OD format
			; prints total daily boardings for each station (regardless of how many routes/lines serve station)
			LOOP STA=1,DBI.1.NUMRECORDS  ;loop through station lookup records
				X=DBIReadRecord(1,STA)
				NODE = DI.1.N
				NAME = DI.1.STATION
				_BRD=0            ;set boardings to zero each time through station loop
				_XIT=0            ;set exits to zero each time through station loop

				LOOP WLKTRN=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKTRN)
					IF(DI.2.A = NODE)
						_BRD = _BRD + DI.2.ONA
					ENDIF
					IF(DI.2.B = NODE)
						_XIT = _XIT + DI.2.OFFB
					ENDIF
				ENDLOOP
				
				LOOP WLKPRM=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,WLKPRM)
					IF(DI.3.A = NODE)
						_BRD = _BRD + DI.3.ONA
					ENDIF
					IF(DI.3.B = NODE)
						_XIT = _XIT + DI.3.OFFB
					ENDIF
					IF(DBI.3.RECNO=DBI.3.NUMRECORDS)  ;last assignment record : print boarding results
						RO.NODE=NODE
						RO.NAME=NAME
						RO.BOARDS=_BRD
						RO.EXITS=_XIT
						WRITE RECO=1
					ENDIF
				ENDLOOP
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TP=12)  ;AIR PASSENGER
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TP
		RUN PGM=MATRIX
			DBI[1]=Eval\TransitStations.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			DBI[4]=Eval\@FILE3@
			RECO=Eval\StationBoardings_@per@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS
			ZONES=1

			; divide boardings + alightings by two at each node to convert from PA format to OD format
			; prints total daily boardings for each station (regardless of how many routes/lines serve station)
			LOOP STA=1,DBI.1.NUMRECORDS  ;loop through station lookup records
				X=DBIReadRecord(1,STA)
				NODE = DI.1.N
				NAME = DI.1.STATION
				_BRD=0            ;set boardings to zero each time through station loop
				_XIT=0            ;set exits to zero each time through station loop

				LOOP WLKPRM=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKPRM)
					IF(DI.2.A = NODE)
						_BRD = _BRD + DI.2.ONA
					ENDIF
					IF(DI.2.B = NODE)
						_XIT = _XIT + DI.2.OFFB
					ENDIF
				ENDLOOP
				
				LOOP PNRPRM=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,PNRPRM)
					IF(DI.3.A = NODE)
						_BRD = _BRD + DI.3.ONA
					ENDIF
					IF(DI.3.B = NODE)
						_XIT = _XIT + DI.3.OFFB
					ENDIF
				ENDLOOP
				
				LOOP KNRPRM=1,DBI.4.NUMRECORDS
					Y=DBIReadRecord(4,KNRPRM)
					IF(DI.4.A = NODE)
						_BRD = _BRD + DI.4.ONA
					ENDIF
					IF(DI.4.B = NODE)
						_XIT = _XIT + DI.4.OFFB
					ENDIF
					IF(DBI.4.RECNO=DBI.4.NUMRECORDS)  ;last assignment record : print boarding results
						RO.NODE=NODE
						RO.NAME=NAME
						RO.BOARDS=_BRD
						RO.EXITS=_XIT
						WRITE RECO=1
					ENDIF
				ENDLOOP
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ENDIF
ENDLOOP  ;END TIME PERIOD LOOP

;add stop flag as a node attribute
RUN PGM=NETWORK
	NETI=INPUT.NET
	NODEI[2]=Eval\STOP_NODES.TMP
	NODEO=Eval\STOPS_NODES.DBF,INCLUDE=N,STOP
	NETO=Eval\STOPS_NODES.NET
ENDRUN

RUN PGM=NETWORK
	NETI=Eval\STOPS_NODES.NET
	NODEO=Eval\TransitStops.DBF,INCLUDE=N,STOP,STAFLAG
	
	PHASE=NODEMERGE
		IF(NI.1.STOP=0) DELETE
	ENDPHASE
ENDRUN

LOOP TimePer=13,18  ;LOOP THROUGH TIME PERIODS
	IF(TimePer=13)
		PER='EA'
		FILE1='WLK_ALLTRN_WLK_EA_TMODES_brds.DBF'
		FILE2='WLK_PRMTRN_WLK_EA_TMODES_brds.DBF'
		FILE3='KNR_ALLTRN_WLK_EA_TMODES_brds.DBF'
		FILE4='KNR_PRMTRN_WLK_EA_TMODES_brds.DBF'
		FILE5='PNR_ALLTRN_WLK_EA_TMODES_brds.DBF'
		FILE6='PNR_PRMTRN_WLK_EA_TMODES_brds.DBF'
	ELSEIF(TimePer=14)
		PER='AM'
		FILE1='WLK_ALLTRN_WLK_AM_TMODES_brds.DBF'
		FILE2='WLK_PRMTRN_WLK_AM_TMODES_brds.DBF'
		FILE3='KNR_ALLTRN_WLK_AM_TMODES_brds.DBF'
		FILE4='KNR_PRMTRN_WLK_AM_TMODES_brds.DBF'
		FILE5='PNR_ALLTRN_WLK_AM_TMODES_brds.DBF'
		FILE6='PNR_PRMTRN_WLK_AM_TMODES_brds.DBF'
	ELSEIF(TimePer=15)
		PER='PM'
		FILE1='WLK_ALLTRN_WLK_PM_TMODES_brds.DBF'
		FILE2='WLK_PRMTRN_WLK_PM_TMODES_brds.DBF'
		FILE3='WLK_ALLTRN_KNR_PM_TMODES_brds.DBF'
		FILE4='WLK_PRMTRN_KNR_PM_TMODES_brds.DBF'
		FILE5='WLK_ALLTRN_PNR_PM_TMODES_brds.DBF'
		FILE6='WLK_PRMTRN_PNR_PM_TMODES_brds.DBF'
	ELSEIF(TimePer=16)
		PER='MD'
		FILE1='WLK_ALLTRN_WLK_MD_TMODES_brds.DBF'
		FILE2='WLK_PRMTRN_WLK_MD_TMODES_brds.DBF'
		FILE3='KNR_ALLTRN_WLK_MD_TMODES_brds.DBF'
		FILE4='KNR_PRMTRN_WLK_MD_TMODES_brds.DBF'
		FILE5='PNR_ALLTRN_WLK_MD_TMODES_brds.DBF'
		FILE6='PNR_PRMTRN_WLK_MD_TMODES_brds.DBF'
		FILE7='WLK_ALLTRN_KNR_MD_TMODES_brds.DBF'
		FILE8='WLK_PRMTRN_KNR_MD_TMODES_brds.DBF'
		FILE9='WLK_ALLTRN_PNR_MD_TMODES_brds.DBF'
		FILE10='WLK_PRMTRN_PNR_MD_TMODES_brds.DBF'
	ELSEIF(TimePer=17)
		PER='EV'
		FILE1='WLK_ALLTRN_WLK_EV_TMODES_brds.DBF'
		FILE2='WLK_PRMTRN_WLK_EV_TMODES_brds.DBF'
	ELSEIF(TimePer=18)
		PER='AIR'
		FILE1='WLK_PRMTRN_WLK_AIRPASS_TMODES_brds.DBF'
		FILE2='KNR_PRMTRN_WLK_AIRPASS_TMODES_brds.DBF'
		FILE3='PNR_PRMTRN_WLK_AIRPASS_TMODES_brds.DBF'
	ENDIF

	; Tabulate stop boardings for each assignment output file
	IF(TimePer=13-15)  ;EA, AM, PM
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TimePer
		RUN PGM=MATRIX
			DBI[1]=Eval\TransitStops.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			DBI[4]=Eval\@FILE3@
			DBI[5]=Eval\@FILE4@
			DBI[6]=Eval\@FILE5@
			DBI[7]=Eval\@FILE6@
			RECO=Eval\StopBrdsXits_@per@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS,STAFLAG
			ZONES=1

			LOOP STOPS=1,DBI.1.NUMRECORDS  ;loop through stops
				X=DBIReadRecord(1,STOPS)
				NODE = DI.1.N
				STAFLAG = DI.1.STAFLAG
				_BRD=0            ;set boardings to zero each time through stops
				_XIT=0            ;set exits to zero each time through stops

				LOOP WLKTRN=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKTRN)
					IF(DI.2.A = NODE)
						_BRD = _BRD + DI.2.ONA
					ENDIF
					IF(DI.2.B = NODE)
						_XIT = _XIT + DI.2.OFFB
					ENDIF
				ENDLOOP
				
				LOOP WLKPRM=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,WLKPRM)
					IF(DI.3.A = NODE)
						_BRD = _BRD + DI.3.ONA
					ENDIF
					IF(DI.3.B = NODE)
						_XIT = _XIT + DI.3.OFFB
					ENDIF
				ENDLOOP
				
				LOOP KNRTRN=1,DBI.4.NUMRECORDS
					Y=DBIReadRecord(4,KNRTRN)
					IF(DI.4.A = NODE)
						_BRD = _BRD + DI.4.ONA
					ENDIF
					IF(DI.4.B = NODE)
						_XIT = _XIT + DI.4.OFFB
					ENDIF
				ENDLOOP
				
				LOOP KNRPRM=1,DBI.5.NUMRECORDS
					Y=DBIReadRecord(5,KNRPRM)
					IF(DI.5.A = NODE)
						_BRD = _BRD + DI.5.ONA
					ENDIF
					IF(DI.5.B = NODE)
						_XIT = _XIT + DI.5.OFFB
					ENDIF
				ENDLOOP
				
				LOOP PNRTRN=1,DBI.6.NUMRECORDS
					Y=DBIReadRecord(6,PNRTRN)
					IF(DI.6.A = NODE)
						_BRD = _BRD + DI.6.ONA
					ENDIF
					IF(DI.6.B = NODE)
						_XIT = _XIT + DI.6.OFFB
					ENDIF
				ENDLOOP
				
				LOOP PNRPRM=1,DBI.7.NUMRECORDS
					Y=DBIReadRecord(7,PNRPRM)
					IF(DI.7.A = NODE)
						_BRD = _BRD + DI.7.ONA
					ENDIF
					IF(DI.7.B = NODE)
						_XIT = _XIT + DI.7.OFFB
					ENDIF
					IF(DBI.7.RECNO=DBI.7.NUMRECORDS)  ;last assignment record : print boarding results
						RO.NODE=NODE
						RO.STAFLAG=STAFLAG
						RO.BOARDS=_BRD
						RO.EXITS=_XIT
						WRITE RECO=1
					ENDIF
				ENDLOOP
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TimePer=16)  ;MIDDAY
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TimePer
		RUN PGM=MATRIX
			RECI=Eval\TransitStops.DBF
			DBI[1]=Eval\@FILE1@
			DBI[2]=Eval\@FILE2@
			DBI[3]=Eval\@FILE3@
			DBI[4]=Eval\@FILE4@
			DBI[5]=Eval\@FILE5@
			DBI[6]=Eval\@FILE6@
			DBI[7]=Eval\@FILE7@
			DBI[8]=Eval\@FILE8@
			DBI[9]=Eval\@FILE9@
			DBI[10]=Eval\@FILE10@
			RECO=Eval\StopBrdsXits_@PER@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS,STAFLAG
			ZONES=1

			NODE = RI.N
			STAFLAG = RI.STAFLAG
			_BRD=0            ;set boardings to zero each time through stops
			_XIT=0            ;set exits to zero each time through stops

			LOOP WLKTRN=1,DBI.1.NUMRECORDS
				Y=DBIReadRecord(1,WLKTRN)
				IF(DI.1.A = NODE)
					_BRD = _BRD + DI.1.ONA
				ENDIF
				IF(DI.1.B = NODE)
					_XIT = _XIT + DI.1.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKPRM=1,DBI.2.NUMRECORDS
				Y=DBIReadRecord(2,WLKPRM)
				IF(DI.2.A = NODE)
					_BRD = _BRD + DI.2.ONA
				ENDIF
				IF(DI.2.B = NODE)
					_XIT = _XIT + DI.2.OFFB
				ENDIF
			ENDLOOP
			
			LOOP KNRTRN=1,DBI.3.NUMRECORDS
				Y=DBIReadRecord(3,KNRTRN)
				IF(DI.3.A = NODE)
					_BRD = _BRD + DI.3.ONA
				ENDIF
				IF(DI.3.B = NODE)
					_XIT = _XIT + DI.3.OFFB
				ENDIF
			ENDLOOP
			
			LOOP KNRPRM=1,DBI.4.NUMRECORDS
				Y=DBIReadRecord(4,KNRPRM)
				IF(DI.4.A = NODE)
					_BRD = _BRD + DI.4.ONA
				ENDIF
				IF(DI.4.B = NODE)
					_XIT = _XIT + DI.4.OFFB
				ENDIF
			ENDLOOP
			
			LOOP PNRTRN=1,DBI.5.NUMRECORDS
				Y=DBIReadRecord(5,PNRTRN)
				IF(DI.5.A = NODE)
					_BRD = _BRD + DI.5.ONA
				ENDIF
				IF(DI.5.B = NODE)
					_XIT = _XIT + DI.5.OFFB
				ENDIF
			ENDLOOP
			
			LOOP PNRPRM=1,DBI.6.NUMRECORDS
				Y=DBIReadRecord(6,PNRPRM)
				IF(DI.6.A = NODE)
					_BRD = _BRD + DI.6.ONA
				ENDIF
				IF(DI.6.B = NODE)
					_XIT = _XIT + DI.6.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKTRNKNR=1,DBI.7.NUMRECORDS
				Y=DBIReadRecord(7,WLKTRNKNR)
				IF(DI.7.A = NODE)
					_BRD = _BRD + DI.7.ONA
				ENDIF
				IF(DI.7.B = NODE)
					_XIT = _XIT + DI.7.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKPRMKNR=1,DBI.8.NUMRECORDS
				Y=DBIReadRecord(8,WLKPRMKNR)
				IF(DI.8.A = NODE)
					_BRD = _BRD + DI.8.ONA
				ENDIF
				IF(DI.8.B = NODE)
					_XIT = _XIT + DI.8.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKTRNPNR=1,DBI.9.NUMRECORDS
				Y=DBIReadRecord(9,WLKTRNPNR)
				IF(DI.9.A = NODE)
					_BRD = _BRD + DI.9.ONA
				ENDIF
				IF(DI.9.B = NODE)
					_XIT = _XIT + DI.9.OFFB
				ENDIF
			ENDLOOP
			
			LOOP WLKPRMPNR=1,DBI.10.NUMRECORDS
				Y=DBIReadRecord(10,WLKPRMPNR)
				IF(DI.10.A = NODE)
					_BRD = _BRD + DI.10.ONA
				ENDIF
				IF(DI.10.B = NODE)
					_XIT = _XIT + DI.10.OFFB
				ENDIF
				IF(DBI.10.RECNO=DBI.10.NUMRECORDS)  ;last assignment record : print boarding results
					RO.NODE=NODE
					RO.STAFLAG=NODE
					RO.BOARDS=_BRD
					RO.EXITS=_XIT
					WRITE RECO=1
				ENDIF
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TimePer=17)  ;EV
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TimePer
		RUN PGM=MATRIX
			DBI[1]=Eval\TransitStops.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			RECO=Eval\StopBrdsXits_@per@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS,STAFLAG
			ZONES=1

			LOOP STOPS=1,DBI.1.NUMRECORDS  ;loop through stops
				X=DBIReadRecord(1,STOPS)
				NODE = DI.1.N
				STAFLAG = DI.1.STAFLAG
				_BRD=0            ;set boardings to zero each time through stops
				_XIT=0            ;set exits to zero each time through stops

				LOOP WLKTRN=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKTRN)
					IF(DI.2.A = NODE)
						_BRD = _BRD + DI.2.ONA
					ENDIF
					IF(DI.2.B = NODE)
						_XIT = _XIT + DI.2.OFFB
					ENDIF
				ENDLOOP
				
				LOOP WLKPRM=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,WLKPRM)
					IF(DI.3.A = NODE)
						_BRD = _BRD + DI.3.ONA
					ENDIF
					IF(DI.3.B = NODE)
						_XIT = _XIT + DI.3.OFFB
					ENDIF
					IF(DBI.3.RECNO=DBI.3.NUMRECORDS)  ;last assignment record : print boarding results
						RO.NODE=NODE
						RO.STAFLAG=STAFLAG
						RO.BOARDS=_BRD
						RO.EXITS=_XIT
						WRITE RECO=1
					ENDIF
				ENDLOOP
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ELSEIF(TimePer=18)  ;AIRPASS
		DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=TimePer
		RUN PGM=MATRIX
			DBI[1]=Eval\TransitStops.DBF
			DBI[2]=Eval\@FILE1@
			DBI[3]=Eval\@FILE2@
			DBI[4]=Eval\@FILE3@
			RECO=Eval\StopBrdsXits_@per@.DBF,FIELDS=NODE,NAME,BOARDS,EXITS,STAFLAG
			ZONES=1

			LOOP STOPS=1,DBI.1.NUMRECORDS  ;loop through stops
				X=DBIReadRecord(1,STOPS)
				NODE = DI.1.N
				STAFLAG = DI.1.STAFLAG
				_BRD=0            ;set boardings to zero each time through stops
				_XIT=0            ;set exits to zero each time through stops

				LOOP WLKPRM=1,DBI.2.NUMRECORDS
					Y=DBIReadRecord(2,WLKPRM)
					IF(DI.2.A = NODE)
						_BRD = _BRD + DI.2.ONA
					ENDIF
					IF(DI.2.B = NODE)
						_XIT = _XIT + DI.2.OFFB
					ENDIF
				ENDLOOP
				
				LOOP PNRPRM=1,DBI.3.NUMRECORDS
					Y=DBIReadRecord(3,PNRPRM)
					IF(DI.3.A = NODE)
						_BRD = _BRD + DI.3.ONA
					ENDIF
					IF(DI.3.B = NODE)
						_XIT = _XIT + DI.3.OFFB
					ENDIF
				ENDLOOP
				
				LOOP KNRPRM=1,DBI.4.NUMRECORDS
					Y=DBIReadRecord(4,KNRPRM)
					IF(DI.4.A = NODE)
						_BRD = _BRD + DI.4.ONA
					ENDIF
					IF(DI.4.B = NODE)
						_XIT = _XIT + DI.4.OFFB
					ENDIF
					IF(DBI.4.RECNO=DBI.4.NUMRECORDS)  ;last assignment record : print boarding results
						RO.NODE=NODE
						RO.STAFLAG=STAFLAG
						RO.BOARDS=_BRD
						RO.EXITS=_XIT
						WRITE RECO=1
					ENDIF
				ENDLOOP
			ENDLOOP
		ENDRUN
		EndDistributeMULTISTEP
	ENDIF
ENDLOOP  ;END TIME PERIOD LOOP

;wait for steps before combining all transit summaries
Wait4Files Files={PROCID}1.script.end,{PROCID}2.script.end,{PROCID}3.script.end,{PROCID}4.script.end,{PROCID}5.script.end,{PROCID}6.script.end
Wait4Files Files={PROCID}7.script.end,{PROCID}8.script.end,{PROCID}9.script.end,{PROCID}10.script.end,{PROCID}11.script.end,{PROCID}12.script.end
Wait4Files Files={PROCID}13.script.end,{PROCID}14.script.end,{PROCID}15.script.end,{PROCID}16.script.end,{PROCID}17.script.end,{PROCID}18.script.end

;Merge results together
DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=1

RUN PGM=MATRIX
	RECI=Eval\ROUTES.DBF
	DBI[1]=Eval\EA_RouteLoads.DBF
	DBI[2]=Eval\AM_RouteLoads.DBF
	DBI[3]=Eval\MD_RouteLoads.DBF
	DBI[4]=Eval\PM_RouteLoads.DBF
	DBI[5]=Eval\EV_RouteLoads.DBF
	DBI[6]=Eval\AIRPASS_RouteLoads.DBF
	RECO[1]=Eval\Total_RouteLoads.DBF,FIELDS=NAME(30.0),MODE,EAHDWY,AMHDWY,MDHDWY,PMHDWY,EVHDWY,BOARDS,EABRDS,AMBRDS,MDBRDS,PMBRDS,EVBRDS,APBRDS,
											PASSMILES,EAPMILES,AMPMILES,MDPMILES,PMPMILES,EVPMILES,APPMILES,
											PASSHOURS,EAPHOURS,AMPHOURS,MDPHOURS,PMPHOURS,EVPHOURS,APPHOURS,
											EATIME,AMTIME,MDTIME,PMTIME,EVTIME,DIST,EASPD,AMSPD,MDSPD,PMSPD,EVSPD
	ZONES=1

	_BRD=0
	_PMLS=0
	_PHRS=0
	;EA
	_EABRD=0
	_EAPMLS=0
	_EAPHRS=0
	;AM
	_AMBRD=0
	_AMPMLS=0
	_AMPHRS=0
	;MD
	_MDBRD=0
	_MDPMLS=0
	_MDPHRS=0
	;PM
	_PMBRD=0
	_PMPMLS=0
	_PMPHRS=0
	;EV
	_EVBRD=0
	_EVPMLS=0
	_EVPHRS=0
	;AP
	_APBRD=0
	_APPMLS=0
	_APPHRS=0
	
	NAME = RI.LASTNAME
	
	LOOP EA=1,DBI.1.NUMRECORDS
		Y=DBIReadRecord(1,EA)
		IF(NAME=DI.1.NAME)
			_BRD = _BRD + DI.1.BOARDS
			_PMLS = _PMLS + DI.1.PASSMILES
			_PHRS = _PHRS + DI.1.PASSHOURS
			_EABRD = _EABRD + DI.1.BOARDS
			_EAPMLS = _EAPMLS + DI.1.PASSMILES
			_EAPHRS = _EAPHRS + DI.1.PASSHOURS
			MODE=DI.1.MODE
			EAHDWY=DI.1.HEADWAY
			EATIME=DI.1.TIME
			EASPD=DI.1.SPEED
			DIST=DI.1.DIST
		ENDIF
	ENDLOOP
	
	LOOP AM=1,DBI.2.NUMRECORDS
		Y=DBIReadRecord(2,AM)
		IF(NAME=DI.2.NAME)
			_BRD = _BRD + DI.2.BOARDS
			_PMLS = _PMLS + DI.2.PASSMILES
			_PHRS = _PHRS + DI.2.PASSHOURS
			_AMBRD = _AMBRD + DI.2.BOARDS
			_AMPMLS = _AMPMLS + DI.2.PASSMILES
			_AMPHRS = _AMPHRS + DI.2.PASSHOURS
			MODE=DI.2.MODE
			AMHDWY=DI.2.HEADWAY
			AMTIME=DI.2.TIME
			AMSPD=DI.2.SPEED
			DIST=DI.2.DIST
		ENDIF
	ENDLOOP
	
	LOOP MD=1,DBI.3.NUMRECORDS
		Y=DBIReadRecord(3,MD)
		IF(NAME=DI.3.NAME)
			_BRD = _BRD + DI.3.BOARDS
			_PMLS = _PMLS + DI.3.PASSMILES
			_PHRS = _PHRS + DI.3.PASSHOURS
			_MDBRD = _MDBRD + DI.3.BOARDS
			_MDPMLS = _MDPMLS + DI.3.PASSMILES
			_MDPHRS = _MDPHRS + DI.3.PASSHOURS
			MODE=DI.3.MODE
			MDHDWY=DI.3.HEADWAY
			MDTIME=DI.3.TIME
			MDSPD=DI.3.SPEED
			DIST=DI.3.DIST
		ENDIF
	ENDLOOP
	
	LOOP PM=1,DBI.4.NUMRECORDS
		Y=DBIReadRecord(4,PM)
		IF(NAME=DI.4.NAME)
			_BRD = _BRD + DI.4.BOARDS
			_PMLS = _PMLS + DI.4.PASSMILES
			_PHRS = _PHRS + DI.4.PASSHOURS
			_PMBRD = _PMBRD + DI.4.BOARDS
			_PMPMLS = _PMPMLS + DI.4.PASSMILES
			_PMPHRS = _PMPHRS + DI.4.PASSHOURS
			MODE=DI.4.MODE
			PMHDWY=DI.4.HEADWAY
			PMTIME=DI.4.TIME
			PMSPD=DI.4.SPEED
			DIST=DI.4.DIST
		ENDIF
	ENDLOOP
	
	LOOP EV=1,DBI.5.NUMRECORDS
		Y=DBIReadRecord(5,EV)
		IF(NAME=DI.5.NAME)
			_BRD = _BRD + DI.5.BOARDS
			_PMLS = _PMLS + DI.5.PASSMILES
			_PHRS = _PHRS + DI.5.PASSHOURS
			_EVBRD = _EVBRD + DI.5.BOARDS
			_EVPMLS = _EVPMLS + DI.5.PASSMILES
			_EVPHRS = _EVPHRS + DI.5.PASSHOURS
			MODE=DI.5.MODE
			EVHDWY=DI.5.HEADWAY
			EVTIME=DI.5.TIME
			EVSPD=DI.5.SPEED
			DIST=DI.5.DIST
		ENDIF
	ENDLOOP
	
	LOOP AIR=1,DBI.6.NUMRECORDS
		Y=DBIReadRecord(6,AIR)
		IF(NAME=DI.6.NAME)
			_BRD = _BRD + DI.6.BOARDS
			_PMLS = _PMLS + DI.6.PASSMILES
			_PHRS = _PHRS + DI.6.PASSHOURS
			_APBRD = _APBRD + DI.6.BOARDS
			_APPMLS = _APPMLS + DI.6.PASSMILES
			_APPHRS = _APPHRS + DI.6.PASSHOURS
		ENDIF
	ENDLOOP
	
	RO.NAME=RI.LASTNAME
	RO.MODE=MODE
	RO.BOARDS=_BRD
	RO.EABRDS=_EABRD
	RO.AMBRDS=_AMBRD
	RO.MDBRDS=_MDBRD
	RO.PMBRDS=_PMBRD
	RO.EVBRDS=_EVBRD
	RO.APBRDS=_APBRD
	RO.EAHDWY=EAHDWY
	RO.AMHDWY=AMHDWY
	RO.MDHDWY=MDHDWY
	RO.PMHDWY=PMHDWY
	RO.EVHDWY=EVHDWY
	RO.PASSMILES=_PMLS
	RO.EAPMILES=_EAPMLS
	RO.AMPMILES=_AMPMLS
	RO.MDPMILES=_MDPMLS
	RO.PMPMILES=_PMPMLS
	RO.EVPMILES=_EVPMLS
	RO.APPMILES=_APPMLS
	RO.PASSHOURS=_PHRS
	RO.EAPHOURS=_EAPHRS
	RO.AMPHOURS=_AMPHRS
	RO.MDPHOURS=_MDPHRS
	RO.PMPHOURS=_PMPHRS
	RO.EVPHOURS=_EVPHRS
	RO.APPHOURS=_APPHRS
	RO.EATIME=EATIME
	RO.AMTIME=AMTIME
	RO.MDTIME=MDTIME
	RO.PMTIME=PMTIME
	RO.EVTIME=EVTIME
	RO.DIST=DIST
	RO.EASPD=EASPD
	RO.AMSPD=AMSPD
	RO.MDSPD=MDSPD
	RO.PMSPD=PMSPD
	RO.EVSPD=EVSPD
	WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
	RECI=Eval\Total_RouteLoads.DBF

	IF(RI.MODE=14,16) _MARTABUS = _MARTABUS + RI.BOARDS
	IF(RI.MODE=24,26) _CCTBUS = _CCTBUS + RI.BOARDS
	IF(RI.MODE=34,36) _DOUGBUS = _DOUGBUS + RI.BOARDS
	IF(RI.MODE=44,46) _GCTBUS = _GCTBUS + RI.BOARDS
	IF(RI.MODE=54,56) _GRTABUS = _GRTABUS + RI.BOARDS
	IF(RI.MODE=64,66) _CATBUS = _CATBUS + RI.BOARDS
	IF(RI.MODE=74,76) _HATBUS = _HATBUS + RI.BOARDS
	IF(RI.MODE=84,86) _HENBUS = _HENBUS + RI.BOARDS

	IF(RECI.RECNO=RECI.NUMRECORDS)
		PRINT LIST='MARTA     ',_MARTABUS,FILE=Eval\BusOperatorBoardings.PRN
		PRINT LIST='CCT       ',_CCTBUS,FILE=Eval\BusOperatorBoardings.PRN
		PRINT LIST='DOUGLAS   ',_DOUGBUS,FILE=Eval\BusOperatorBoardings.PRN
		PRINT LIST='GCT       ',_GCTBUS,FILE=Eval\BusOperatorBoardings.PRN
		PRINT LIST='GRTA      ',_GRTABUS,FILE=Eval\BusOperatorBoardings.PRN
		PRINT LIST='CAT       ',_CATBUS,FILE=Eval\BusOperatorBoardings.PRN
		PRINT LIST='HAT       ',_HATBUS,FILE=Eval\BusOperatorBoardings.PRN
		PRINT LIST='HENRY     ',_HENBUS,FILE=Eval\BusOperatorBoardings.PRN
	ENDIF
ENDRUN

;Write line route summary to csv format as well
RUN PGM=MATRIX
	RECI=Eval\Total_RouteLoads.DBF 
	  
	count=count+1
	IF(count=1)
		PRINT LIST="NAME,MODE,EAHDWY,AMHDWY,MDHDWY,PMHDWY,EVHDWY,BOARDS,PASSMILES,PASSHOURS,EATIME,AMTIME,MDTIME,PMTIME,EVTIME,DIST,EASPD,AMSPD,MDSPD,PMSPD,EVSPD" FILE=TRNROUTESUM.CSV
	ENDIF
	
	PRINT FORM=10.0L LIST=ri.NAME(30.0),ri.MODE,ri.EAHDWY,ri.AMHDWY,ri.MDHDWY,ri.PMHDWY,ri.EVHDWY,ri.BOARDS,
		ri.PASSMILES,ri.PASSHOURS,ri.EATIME(10.4L),ri.AMTIME(10.4L),ri.MDTIME(10.4L),ri.PMTIME(10.4L),ri.EVTIME(10.4L),ri.DIST(10.4L),
		ri.EASPD(10.4L),ri.AMSPD(10.4L),ri.MDSPD(10.4L),ri.PMSPD(10.4L),ri.EVSPD(10.4L), CSV=T, FILE=TRNROUTESUM.CSV APPEND=T
ENDRUN
EndDistributeMULTISTEP

;merge Station Boardings
DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=2

;Merge all station boardings into one output
RUN PGM=MATRIX
	DBI[1]=Eval\TransitStations.DBF
	DBI[2]=Eval\StationBoardings_EA.DBF
	DBI[3]=Eval\StationBoardings_AM.DBF
	DBI[4]=Eval\StationBoardings_MD.DBF
	DBI[5]=Eval\StationBoardings_PM.DBF
	DBI[6]=Eval\StationBoardings_EV.DBF
	DBI[7]=Eval\StationBoardings_Air.DBF
	RECO[1]=Eval\StationBoardings_All.DBF,FIELDS=NODE,NAME(50),EABRD,EAXIT,AMBRD,AMXIT,MDBRD,MDXIT,PMBRD,PMXIT,EVBRD,EVXIT,APBRD,APXIT,TOTBRD,TOTXIT

	ZONES=1
	
	;loop through entire list of station nodes
	LOOP STA=1,DBI.1.NUMRECORDS
		X=DBIReadRecord(1,STA)
		_EABRD=0
		_AMBRD=0
		_MDBRD=0
		_PMBRD=0
		_EVBRD=0
		_APBRD=0
		_EAXIT=0
		_AMXIT=0
		_MDXIT=0
		_PMXIT=0
		_EVXIT=0
		_APXIT=0
	  
		NAME=DI.1.STATION
		NODE=DI.1.N
	
		;loop through EA period stations
		LOOP EAP=1,DBI.2.NUMRECORDS
			Y=DBIReadRecord(2,EAP)
			IF(NODE=DI.2.NODE)
				_EABRD = _EABRD + DI.2.BOARDS
				_EAXIT = _EAXIT + DI.2.EXITS
			ENDIF
		ENDLOOP
	
		;loop through AM period stations
		LOOP AMP=1,DBI.3.NUMRECORDS
			Y=DBIReadRecord(3,AMP)
			IF(NODE=DI.3.NODE)
				_AMBRD = _AMBRD + DI.3.BOARDS
				_AMXIT = _AMXIT + DI.3.EXITS
			ENDIF
		ENDLOOP
	
		;loop through MD period stations
		LOOP MDP=1,DBI.4.NUMRECORDS
			Y=DBIReadRecord(4,MDP)
			IF(NODE=DI.4.NODE)
				_MDBRD = _MDBRD + DI.4.BOARDS
				_MDXIT = _MDXIT + DI.4.EXITS
			ENDIF
		ENDLOOP
	
		;loop through PM period stations
		LOOP PMP=1,DBI.5.NUMRECORDS
			Y=DBIReadRecord(5,PMP)
			IF(NODE=DI.5.NODE)
				_PMBRD = _PMBRD + DI.5.BOARDS
				_PMXIT = _PMXIT + DI.5.EXITS
			ENDIF
		ENDLOOP
	
		;loop through EV period stations
		LOOP EVP=1,DBI.6.NUMRECORDS
			Y=DBIReadRecord(6,EVP)
			IF(NODE=DI.6.NODE)
				_EVBRD = _EVBRD + DI.6.BOARDS
				_EVXIT = _EVXIT + DI.6.EXITS
			ENDIF
		ENDLOOP
	
		;loop through AP period stations
		LOOP APP=1,DBI.7.NUMRECORDS
			Y=DBIReadRecord(7,APP)
			IF(NODE=DI.7.NODE)
				_APBRD = _APBRD + DI.7.BOARDS
				_APXIT = _APXIT + DI.7.EXITS
			ENDIF
		ENDLOOP
	
		;output results by period and total
		RO.NODE=DI.1.N
		RO.NAME=DI.1.STATION
		RO.EABRD=_EABRD
		RO.AMBRD=_AMBRD
		RO.MDBRD=_MDBRD
		RO.PMBRD=_PMBRD
		RO.EVBRD=_EVBRD
		RO.APBRD=_APBRD
		RO.TOTBRD=_EABRD+_AMBRD+_MDBRD+_PMBRD+_EVBRD+_APBRD
		RO.EAXIT=_EAXIT
		RO.AMXIT=_AMXIT
		RO.MDXIT=_MDXIT
		RO.PMXIT=_PMXIT
		RO.EVXIT=_EVXIT
		RO.APXIT=_APXIT
		RO.TOTXIT=_EAXIT+_AMXIT+_MDXIT+_PMXIT+_EVXIT+_APXIT
		WRITE RECO=1
	ENDLOOP
ENDRUN
EndDistributeMULTISTEP

;merge transit stop boardings
DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=3

;Merge all stops boardings into one output
RUN PGM=MATRIX
	RECI=Eval\TransitStops.DBF
	LOOKUPI[1]=Eval\StopBrdsXits_EA.DBF
	LOOKUPI[2]=Eval\StopBrdsXits_AM.DBF
	LOOKUPI[3]=Eval\StopBrdsXits_MD.DBF
	LOOKUPI[4]=Eval\StopBrdsXits_PM.DBF
	LOOKUPI[5]=Eval\StopBrdsXits_EV.DBF
	LOOKUPI[6]=Eval\StopBrdsXits_Air.DBF
	RECO[1]=Eval\StopBrdsXits_All.DBF,FIELDS=NODE,STAFLAG,EABRD,EAXIT,AMBRD,AMXIT,MDBRD,MDXIT,PMBRD,PMXIT,EVBRD,EVXIT,APBRD,APXIT,TOTBRD,TOTXIT

	;stop node lookup
	;EA
	LOOKUP NAME=StopEA,
		LOOKUP[1]=NODE,RESULT=BOARDS,
		LOOKUP[2]=NODE,RESULT=EXITS,
		INTERPOLATE=N,LOOKUPI=1
	;AM
	LOOKUP NAME=StopAM,
		LOOKUP[3]=NODE,RESULT=BOARDS,
		LOOKUP[4]=NODE,RESULT=EXITS,
		INTERPOLATE=N,LOOKUPI=2
	;MD
	LOOKUP NAME=StopMD,
		LOOKUP[5]=NODE,RESULT=BOARDS,
		LOOKUP[6]=NODE,RESULT=EXITS,
		INTERPOLATE=N,LOOKUPI=3
	;PM
	LOOKUP NAME=StopPM,
		LOOKUP[7]=NODE,RESULT=BOARDS,
		LOOKUP[8]=NODE,RESULT=EXITS,
		INTERPOLATE=N,LOOKUPI=4
	;EV
	LOOKUP NAME=StopEV,
		LOOKUP[9]=NODE,RESULT=BOARDS,
		LOOKUP[10]=NODE,RESULT=EXITS,
		INTERPOLATE=N,LOOKUPI=5
	;AP
	LOOKUP NAME=StopAP,
		LOOKUP[11]=NODE,RESULT=BOARDS,
		LOOKUP[12]=NODE,RESULT=EXITS,
		INTERPOLATE=N,LOOKUPI=6

	;output results by period and total
	RO.NODE=RI.N
	RO.STAFLAG=RI.STAFLAG
	RO.EABRD=StopEA(1,RI.N)
	RO.EAXIT=StopEA(2,RI.N)
	RO.AMBRD=StopAM(3,RI.N)
	RO.AMXIT=StopAM(4,RI.N)
	RO.MDBRD=StopMD(5,RI.N)
	RO.MDXIT=StopMD(6,RI.N)
	RO.PMBRD=StopPM(7,RI.N)
	RO.PMXIT=StopPM(8,RI.N)
	RO.EVBRD=StopEV(9,RI.N)
	RO.EVXIT=StopEV(10,RI.N)
	RO.APBRD=StopAP(11,RI.N)
	RO.APXIT=StopAP(12,RI.N)

	RO.TOTBRD=RO.EABRD+RO.AMBRD+RO.MDBRD+RO.PMBRD+RO.EVBRD+RO.APBRD
	RO.TOTXIT=RO.EAXIT+RO.AMXIT+RO.MDXIT+RO.PMXIT+RO.EVXIT+RO.APXIT
	WRITE RECO=1
ENDRUN

; write gdb network to binary network file
RUN PGM=NETWORK
	FILEI NETI=Eval\STOPS_NODES.NET
	FILEI GEOMI[2]="Inputs\arc_20{year}.gdb\arc{year}hwy"
	NODEO=Eval\TransitStopData.SHP FORMAT=SHP
	 
	PHASE=NODEMERGE
		IF(NI.1.STOP=0) DELETE
	ENDPHASE
ENDRUN

RUN PGM=MATRIX
	RECI=Eval\TransitStopData.DBF
	RECO=Eval\TransitStopDataCopy.DBF,FIELDS=RECI.ALLFIELDS

	WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
	RECI=Eval\TransitStopDataCopy.DBF
	LOOKUPI[1]=Eval\StopBrdsXits_All.DBF
	RECO=Eval\TransitStopData.DBF,FIELDS=N,X,Y,STATION,STAFLAG,PNR,PNR_MAJOR,EABRD,EAXIT,AMBRD,AMXIT,MDBRD,MDXIT,PMBRD,PMXIT,EVBRD,EVXIT,APBRD,APXIT,TOTBRD,TOTXIT

	;stop node lookup
	LOOKUP NAME=StopNodes,
	LOOKUP[1]=NODE,RESULT=EABRD,
	LOOKUP[2]=NODE,RESULT=EAXIT,
	LOOKUP[3]=NODE,RESULT=AMBRD,
	LOOKUP[4]=NODE,RESULT=AMXIT,
	LOOKUP[5]=NODE,RESULT=MDBRD,
	LOOKUP[6]=NODE,RESULT=MDXIT,
	LOOKUP[7]=NODE,RESULT=PMBRD,
	LOOKUP[8]=NODE,RESULT=PMXIT,
	LOOKUP[9]=NODE,RESULT=EVBRD,
	LOOKUP[10]=NODE,RESULT=EVXIT,
	LOOKUP[11]=NODE,RESULT=APBRD,
	LOOKUP[12]=NODE,RESULT=APXIT,
	LOOKUP[13]=NODE,RESULT=TOTBRD,
	LOOKUP[14]=NODE,RESULT=TOTXIT,
	INTERPOLATE=N,LOOKUPI=1

	RO.N=RI.N
	RO.X=RI.X
	RO.Y=RI.Y
	RO.STATION=RI.STATION
	RO.STAFLAG=RI.STAFLAG
	RO.PNR=RI.PNR
	RO.PNR_MAJOR=RI.PNR_MAJOR
	RO.EABRD=StopNodes(1,RI.N)
	RO.EAXIT=StopNodes(2,RI.N)
	RO.AMBRD=StopNodes(3,RI.N)
	RO.AMXIT=StopNodes(4,RI.N)
	RO.MDBRD=StopNodes(5,RI.N)
	RO.MDXIT=StopNodes(6,RI.N)
	RO.PMBRD=StopNodes(7,RI.N)
	RO.PMXIT=StopNodes(8,RI.N)
	RO.EVBRD=StopNodes(9,RI.N)
	RO.EVXIT=StopNodes(10,RI.N)
	RO.APBRD=StopNodes(11,RI.N)
	RO.APXIT=StopNodes(12,RI.N)
	RO.TOTBRD=StopNodes(13,RI.N)
	RO.TOTXIT=StopNodes(14,RI.N)
	WRITE RECO=1
ENDRUN
EndDistributeMULTISTEP
;Merge results together

DistributeMULTISTEP ProcessID='{PROCID}', ProcessNum=4

*DEL EVAL\EA_RECORDS.CSV
*DEL EVAL\AM_RECORDS.CSV
*DEL EVAL\MD_RECORDS.CSV
*DEL EVAL\PM_RECORDS.CSV
*DEL EVAL\EV_RECORDS.CSV
*DEL EVAL\AP_RECORDS.CSV
*DEL EVAL\ALL_RECORDS.CSV

; Loop through all transit assignments
LOOP N=1,33
	;early AM
	IF(N=1)  INFILE='WLK_ALLTRN_WLK_EA'
	IF(N=2)  INFILE='WLK_PRMTRN_WLK_EA'
	IF(N=3)  INFILE='KNR_ALLTRN_WLK_EA'
	IF(N=4)  INFILE='KNR_PRMTRN_WLK_EA'
	IF(N=5)  INFILE='PNR_ALLTRN_WLK_EA'
	IF(N=6)  INFILE='PNR_PRMTRN_WLK_EA'
	;AM
	IF(N=7)  INFILE='WLK_ALLTRN_WLK_AM'
	IF(N=8)  INFILE='WLK_PRMTRN_WLK_AM'
	IF(N=9)  INFILE='KNR_ALLTRN_WLK_AM'
	IF(N=10) INFILE='KNR_PRMTRN_WLK_AM'
	IF(N=11) INFILE='PNR_ALLTRN_WLK_AM'
	IF(N=12) INFILE='PNR_PRMTRN_WLK_AM'
	;MD
	IF(N=13) INFILE='WLK_ALLTRN_WLK_MD'
	IF(N=14) INFILE='WLK_PRMTRN_WLK_MD'
	IF(N=15) INFILE='KNR_ALLTRN_WLK_MD'
	IF(N=16) INFILE='WLK_ALLTRN_KNR_MD'
	IF(N=17) INFILE='KNR_PRMTRN_WLK_MD'
	IF(N=18) INFILE='WLK_PRMTRN_KNR_MD'
	IF(N=19) INFILE='PNR_ALLTRN_WLK_MD'
	IF(N=20) INFILE='WLK_ALLTRN_PNR_MD'
	IF(N=21) INFILE='PNR_PRMTRN_WLK_MD'
	IF(N=22) INFILE='WLK_PRMTRN_PNR_MD'
	;PM
	IF(N=23) INFILE='WLK_ALLTRN_WLK_PM'
	IF(N=24) INFILE='WLK_PRMTRN_WLK_PM'
	IF(N=25) INFILE='WLK_ALLTRN_KNR_PM'
	IF(N=26) INFILE='WLK_PRMTRN_KNR_PM'
	IF(N=27) INFILE='WLK_ALLTRN_PNR_PM'
	IF(N=28) INFILE='WLK_PRMTRN_PNR_PM'
	;EV
	IF(N=29) INFILE='WLK_ALLTRN_WLK_EV'
	IF(N=30) INFILE='WLK_PRMTRN_WLK_EV'
	;air passenger
	IF(N=31) INFILE='WLK_PRMTRN_WLK_AIRPASS'
	IF(N=32) INFILE='KNR_PRMTRN_WLK_AIRPASS'
	IF(N=33) INFILE='PNR_PRMTRN_WLK_AIRPASS'

	;set periods and headway period
	IF(N=1-6)
		HDWAY=1
		PER = 'EA'
	ELSEIF(N=7-12)
		HDWAY=2 
		PER = 'AM'
	ELSEIF(N=13-22)
		HDWAY=3
		PER = 'MD'
	ELSEIF(N=23-28)
		HDWAY=4
		PER = 'PM'
	ELSEIF(N=29-30)
		HDWAY=5
		PER = 'EV'
	ELSEIF(N=31-33)
		HDWAY=3
		PER = 'AP'
	ENDIF

	;only extract non-transit links with volumes for efficiency in processing
	RUN PGM=MATRIX
		FILEI RECI= @INFILE@.DBF
		FILEO RECO= Eval\@INFILE@_REV.TMP,FIELDS=RECI.ALLFIELDS,PERIOD

		IF(RI.OPERATOR>0)
			WRITE RECO=1
		ELSEIF(RI.OPERATOR=0 & RI.VOL>0)
			WRITE RECO=1
		ENDIF
	ENDRUN
	
	;print links to CSV (append = t)
	RUN PGM=MATRIX
		FILEI RECI = Eval\@INFILE@_REV.TMP
		FILEO PRINTO[1] = "Eval\@PER@_RECORDS.CSV",APPEND=T

		PRINT FORM=10 LIST=RI.A,',',RI.B,',',RI.MODE,',',RI.OPERATOR,,',',RI.NAME(T),',',RI.LONGNAME(T),',',RI.DIST(10.4),',',
						RI.TIME(10.4),',',RI.LINKSEQ,',',RI.HEADWAY_@HDWAY@,',',RI.STOPA,',',RI.STOPB,',',RI.VOL(15.4),',',
						RI.ONA(15.4),',',RI.OFFA(15.4),',',RI.ONB(15.4),',',RI.OFFB(15.4),',',RI.PERIOD,',',PRINTO=1  
	ENDRUN

	RUN PGM=MATRIX
		FILEI RECI= @INFILE@.DBF
		FILEO RECO= Eval\@INFILE@_REV1.TMP,FIELDS=RECI.ALLFIELDS,PERIOD,EAVOL,EAONA,EAOFFA,EAONB,EAOFFB,
												AMVOL,AMONA,AMOFFA,AMONB,AMOFFB,
												MDVOL,MDONA,MDOFFA,MDONB,MDOFFB,
												PMVOL,PMONA,PMOFFA,PMONB,PMOFFB,
												EVVOL,EVONA,EVOFFA,EVONB,EVOFFB,
												APVOL,APONA,APOFFA,APONB,APOFFB,
												EAHDWY,AMHDWY,MDHDWY,PMHDWY,EVHDWY,APHDWY
		
		;VOL
		EAVOL=0
		AMVOL=0
		MDVOL=0
		PMVOL=0
		EVVOL=0
		APVOL=0
		;ONA
		EAONA=0
		AMONA=0
		MDONA=0
		PMONA=0
		EVONA=0
		APONA=0
		;OFFA
		EAOFFA=0
		AMOFFA=0
		MDOFFA=0
		PMOFFA=0
		EVOFFA=0
		APOFFA=0
		;ONB
		EAONB=0
		AMONB=0
		MDONB=0
		PMONB=0
		EVONB=0
		APONB=0
		;OFFB
		EAOFFB=0
		AMOFFB=0
		MDOFFB=0
		PMOFFB=0
		EVOFFB=0
		APOFFB=0
		;HDWY
		EAHDWY=0
		AMHDWY=0
		MDHDWY=0
		PMHDWY=0
		EVHDWY=0
		APHDWY=0

		IF(@N@=1-6)   
			PERIOD=1
			EAVOL=RI.VOL
			EAONA=RI.ONA
			EAOFFA=RI.OFFA
			EAONB=RI.ONB
			EAOFFB=RI.OFFB
			EAHDWY=RI.HEADWAY_@HDWAY@
		ELSEIF(@N@=7-12)
			PERIOD=2
			AMVOL=RI.VOL
			AMONA=RI.ONA
			AMOFFA=RI.OFFA
			AMONB=RI.ONB
			AMOFFB=RI.OFFB
			AMHDWY=RI.HEADWAY_@HDWAY@
		ELSEIF(@N@=13-22)
			PERIOD=3
			MDVOL=RI.VOL
			MDONA=RI.ONA
			MDOFFA=RI.OFFA
			MDONB=RI.ONB
			MDOFFB=RI.OFFB
			MDHDWY=RI.HEADWAY_@HDWAY@
		ELSEIF(@N@=23-28)
			PERIOD=4
			PMVOL=RI.VOL
			PMONA=RI.ONA
			PMOFFA=RI.OFFA
			PMONB=RI.ONB
			PMOFFB=RI.OFFB
			PMHDWY=RI.HEADWAY_@HDWAY@
		ELSEIF(@N@=29-30)
			PERIOD=5
			EVVOL=RI.VOL
			EVONA=RI.ONA
			EVOFFA=RI.OFFA
			EVONB=RI.ONB
			EVOFFB=RI.OFFB
			EVHDWY=RI.HEADWAY_@HDWAY@
		ELSEIF(@N@=31-33)
			PERIOD=6
			APVOL=RI.VOL
			APONA=RI.ONA
			APOFFA=RI.OFFA
			APONB=RI.ONB
			APOFFB=RI.OFFB
			APHDWY=RI.HEADWAY_@HDWAY@
		ENDIF
		
		IF(RI.OPERATOR>0)
			WRITE RECO=1
		ELSEIF(RI.OPERATOR=0 & RI.VOL>0)
			WRITE RECO=1
		ENDIF
	ENDRUN

	RUN PGM=MATRIX
		FILEI RECI = Eval\@INFILE@_REV1.TMP
		FILEO PRINTO[1] = "Eval\All_Records.CSV",APPEND=T

		PRINT FORM=10 LIST=RI.A,',',RI.B,',',RI.MODE,',',RI.OPERATOR,,',',RI.NAME(T),',',RI.LONGNAME(T),',',RI.DIST(10.4),',',
						RI.TIME(10.4),',',RI.LINKSEQ,',',RI.HEADWAY_@HDWAY@,',',RI.STOPA,',',RI.STOPB,',',RI.VOL(15.4),',',
						RI.ONA(15.4),',',RI.OFFA(15.4),',',RI.ONB(15.4),',',RI.OFFB(15.4),',',RI.PERIOD,',',
						RI.EAVOL,',',RI.EAONA,',',RI.EAOFFA,',',RI.EAONB,',',RI.EAOFFB,',',
						RI.AMVOL,',',RI.AMONA,',',RI.AMOFFA,',',RI.AMONB,',',RI.AMOFFB,',',  
						RI.MDVOL,',',RI.MDONA,',',RI.MDOFFA,',',RI.MDONB,',',RI.MDOFFB,',',  
						RI.PMVOL,',',RI.PMONA,',',RI.PMOFFA,',',RI.PMONB,',',RI.PMOFFB,',',  
						RI.EVVOL,',',RI.EVONA,',',RI.EVOFFA,',',RI.EVONB,',',RI.EVOFFB,',',  
						RI.APVOL,',',RI.APONA,',',RI.APOFFA,',',RI.APONB,',',RI.APOFFB,',',
						RI.EAHDWY,',',RI.AMHDWY,',',RI.MDHDWY,',',RI.PMHDWY,',',RI.EVHDWY,',',RI.APHDWY,',',PRINTO=1  
	ENDRUN
ENDLOOP

; Loop through 5 time periods and air passenger 
LOOP N=1,6
	IF(N=1) PER='EA'
	IF(N=2) PER='AM'
	IF(N=3) PER='MD'
	IF(N=4) PER='PM'
	IF(N=5) PER='EV'
	IF(N=6) PER='AP'

	;read in all records and summarize by link and route
	RUN PGM=MATRIX
		FILEI RECI = "Eval\@PER@_RECORDS.CSV",
				DELIMITER=',',A=1,B=2,MODE=3,OPERATOR=4,NAME(C)=5,LONGNAME(C)=6,DIST=7,TIME=8,LINKSEQ=9,
				HEADWAY=10,STOPA=11,STOPB=12,VOL=13,ONA=14,OFFA=15,ONB=16,OFFB=17, SORT=NAME,LINKSEQ
		FILEO RECO[1] = "Eval\TransitLinksMerge@PER@.DBF",
				FORM=10.4, FIELDS=A(10),B(10),MODE(10),OPERATOR(10),NAME(28),LONGNAME(50),DIST,TIME,
				LINKSEQ(10),HEADWAY(10),STOPA(10),STOPB(10),VOL,ONA,OFFA,ONB,OFFB
		FILEO RECO[2] = "Eval\NonTransitLinksMerge@PER@.DBF",
				FORM=10.4, FIELDS=A(10),B(10),MODE(10),OPERATOR(10),NAME(28),LONGNAME(50),DIST,TIME,
				LINKSEQ(10),HEADWAY(10),STOPA(10),STOPB(10),VOL,ONA,OFFA,ONB,OFFB

		;--- initializing variables in the first record
		IF(RECI.RECNO=1)                    
			TRNLNAME=''                       ; transit line name
			ANODE=0                           ; A node number
			BNODE=0                           ; B node number
			NMODE=0                           ; mode number
			SUMVOL=0                          ; transit volume for the transit link
			SUMONA=0                          ; boardings  at transit stop A
			SUMOFFA=0                         ; alightings at transit stop A
			SUMONB=0                          ; boardings  at transit stop B
			SUMOFFB=0                         ; alightings at transit stop B
		ENDIF
					   
		;--- adding values for the same links (transit or non-transit)
		_FLAG=0                              ; checking existing or new
		IF(TRIM(RI.NAME)=TRIM(TRNLNAME) & STRLEN(RI.NAME)=STRLEN(TRNLNAME))                    
			IF(RI.A=ANODE & RI.B=BNODE & RI.MODE=NMODE)
				SUMVOL=SUMVOL+RI.VOL           ; adding transit volumes
				SUMONA=SUMONA+RI.ONA           ; adding boardings  at transit stop A
				SUMOFFA=SUMOFFA+RI.OFFA        ; adding alightings at transit stop A
				SUMONB=SUMONB+RI.ONB           ; adding boardings  at transit stop B
				SUMOFFB=SUMOFFB+RI.OFFB        ; adding alightings at transit stop B
				_FLAG=1
			ENDIF
		ENDIF

		;--- printing data and reinitializing data for each transit or non-transit
		IF(_FLAG=0 || RECI.RECNO=RECI.NUMRECORDS)
			IF(RECI.RECNO>1)
				RO.A=ANODE
				RO.B=BNODE
				RO.MODE=NMODE
				RO.OPERATOR=OPER
				RO.NAME=TRNLNAME
				RO.LONGNAME=TLNAME
				RO.DIST=VDIST
				RO.TIME=VTIME
				RO.LINKSEQ=VLINKSEQ
				RO.HEADWAY=VHEADWAY
				RO.STOPA=STOPA
				RO.STOPB=STOPB
				RO.VOL=SUMVOL
				RO.ONA=SUMONA
				RO.OFFA=SUMOFFA
				RO.ONB=SUMONB
				RO.OFFB=SUMOFFB
			  
				IF(LEFTSTR(TRNLNAME,1)='*')
					WRITE RECO=2                ; writing non-transit data
				ELSE
					IF(SUMONA>0 || SUMOFFA>0) RO.STOPA=1
					IF(SUMONB>0 || SUMOFFB>0) RO.STOPB=1
					WRITE RECO=1                ; writing transit data
				ENDIF
			ENDIF
			
			TRNLNAME=RI.NAME                  ; transit line name
			ANODE=RI.A                        ; A node number
			BNODE=RI.B                        ; B node number
			NMODE=RI.MODE                     ; mode number
			OPER=RI.OPERATOR                  ; operator number
			TLNAME=RI.LONGNAME                ; long name for transit line or non-transit link
			VDIST=RI.DIST                     ; link distance
			VTIME=RI.TIME                     ; link time
			VLINKSEQ=RI.LINKSEQ               ; link sequential number for transit line
			VHEADWAY=RI.HEADWAY               ; headway for transit line
			STOPA=RI.STOPA                    ; 0=non-stop node & 1=stop station node at transit stop A
			STOPB=RI.STOPB                    ; 0=non-stop node & 1=stop station node at transit stop B
			SUMVOL=RI.VOL                     ; transit volumes for the transit link
			SUMONA=RI.ONA                     ; boardings  at transit stop A
			SUMOFFA=RI.OFFA                   ; alightings at transit stop A
			SUMONB=RI.ONB                     ; boardings  at transit stop B
			SUMOFFB=RI.OFFB                   ; alightings at transit stop B
		ENDIF
	ENDRUN
ENDLOOP

RUN PGM=MATRIX
	FILEI RECI = "Eval\All_Records.CSV",
				DELIMITER=',',A=1,B=2,MODE=3,OPERATOR=4,NAME(C)=5,LONGNAME(C)=6,DIST=7,TIME=8,LINKSEQ=9,
				HEADWAY=10,STOPA=11,STOPB=12,VOL=13,ONA=14,OFFA=15,ONB=16,OFFB=17,PERIOD=18,
				EAVOL=19,EAONA=20,EAOFFA=21,EAONB=22,EAOFFB=23,
				AMVOL=24,AMONA=25,AMOFFA=26,AMONB=27,AMOFFB=28,
				MDVOL=29,MDONA=30,MDOFFA=31,MDONB=32,MDOFFB=33,
				PMVOL=34,PMONA=35,PMOFFA=36,PMONB=37,PMOFFB=38,
				EVVOL=39,EVONA=40,EVOFFA=41,EVONB=42,EVOFFB=43,
				APVOL=44,APONA=45,APOFFA=46,APONB=47,APOFFB=48,
				EAHDWY=49,AMHDWY=50,MDHDWY=51,PMHDWY=52,EVHDWY=53,APHDWY=54, SORT=NAME,LINKSEQ
	FILEO RECO[1] = "Eval\TransitLinksMerge.DBF",
				FORM=10.4, FIELDS=A(10),B(10),MODE(10),OPERATOR(10),NAME(28),LONGNAME(50),DIST,
				LINKSEQ(10),STOPA(10),STOPB(10),VOL,ONA,OFFA,ONB,OFFB,
				EAVOL,EAONA,EAOFFA,EAONB,EAOFFB,
				AMVOL,AMONA,AMOFFA,AMONB,AMOFFB,
				MDVOL,MDONA,MDOFFA,MDONB,MDOFFB,
				PMVOL,PMONA,PMOFFA,PMONB,PMOFFB,
				EVVOL,EVONA,EVOFFA,EVONB,EVOFFB,
				APVOL,APONA,APOFFA,APONB,APOFFB
	FILEO RECO[2] = "Eval\NonTransitLinksMerge.DBF",
				FORM=10.4, FIELDS=A(10),B(10),MODE(10),OPERATOR(10),NAME(28),LONGNAME(50),DIST,
				LINKSEQ(10),STOPA(10),STOPB(10),VOL,ONA,OFFA,ONB,OFFB,
				EAVOL,EAONA,EAOFFA,EAONB,EAOFFB,
				AMVOL,AMONA,AMOFFA,AMONB,AMOFFB,
				MDVOL,MDONA,MDOFFA,MDONB,MDOFFB,
				PMVOL,PMONA,PMOFFA,PMONB,PMOFFB,
				EVVOL,EVONA,EVOFFA,EVONB,EVOFFB,
				APVOL,APONA,APOFFA,APONB,APOFFB

	;--- initializing variables in the first record
	IF(RECI.RECNO=1)                    
		TRNLNAME=''                       ; transit line name
		ANODE=0                           ; A node number
		BNODE=0                           ; B node number
		NMODE=0                           ; mode number
		SUMVOL=0                          ; transit volume for the transit link
		SUMONA=0                          ; boardings  at transit stop A
		SUMOFFA=0                         ; alightings at transit stop A
		SUMONB=0                          ; boardings  at transit stop B
		SUMOFFB=0                         ; alightings at transit stop B
		;EA
		SUMVOLEA=0                        ; EA transit volume for the transit link
		SUMONAEA=0                        ; EA boardings  at transit stop A
		SUMOFFAEA=0                       ; EA alightings at transit stop A
		SUMONBEA=0                        ; EA boardings  at transit stop B
		SUMOFFBEA=0                       ; EA alightings at transit stop B
		;AM
		SUMVOLAM=0                        ; AM transit volume for the transit link
		SUMONAAM=0                        ; AM boardings  at transit stop A
		SUMOFFAAM=0                       ; AM alightings at transit stop A
		SUMONBAM=0                        ; AM boardings  at transit stop B
		SUMOFFBAM=0                       ; AM alightings at transit stop B
		;MD
		SUMVOLMD=0                        ; MD transit volume for the transit link
		SUMONAMD=0                        ; MD boardings  at transit stop A
		SUMOFFAMD=0                       ; MD alightings at transit stop A
		SUMONBMD=0                        ; MD boardings  at transit stop B
		SUMOFFBMD=0                       ; MD alightings at transit stop B
		;PM
		SUMVOLPM=0                        ; PM transit volume for the transit link
		SUMONAPM=0                        ; PM boardings  at transit stop A
		SUMOFFAPM=0                       ; PM alightings at transit stop A
		SUMONBPM=0                        ; PM boardings  at transit stop B
		SUMOFFBPM=0                       ; PM alightings at transit stop B
		;EV
		SUMVOLEV=0                        ; EV transit volume for the transit link
		SUMONAEV=0                        ; EV boardings  at transit stop A
		SUMOFFAEV=0                       ; EV alightings at transit stop A
		SUMONBEV=0                        ; EV boardings  at transit stop B
		SUMOFFBEV=0                       ; EV alightings at transit stop B
		;AP
		SUMVOLAP=0                        ; AP transit volume for the transit link
		SUMONAAP=0                        ; AP boardings  at transit stop A
		SUMOFFAAP=0                       ; AP alightings at transit stop A
		SUMONBAP=0                        ; AP boardings  at transit stop B
		SUMOFFBAP=0                       ; AP alightings at transit stop B
	ENDIF
					   
	;--- adding values for the same links (transit or non-transit)
	_FLAG=0                              ; checking existing or new
	IF(TRIM(RI.NAME)=TRIM(TRNLNAME) & STRLEN(RI.NAME)=STRLEN(TRNLNAME))                    
		IF(RI.A=ANODE & RI.B=BNODE & RI.MODE=NMODE)
			SUMVOL=SUMVOL+RI.VOL           ; adding transit volumes
			SUMONA=SUMONA+RI.ONA           ; adding boardings  at transit stop A
			SUMOFFA=SUMOFFA+RI.OFFA        ; adding alightings at transit stop A
			SUMONB=SUMONB+RI.ONB           ; adding boardings  at transit stop B
			SUMOFFB=SUMOFFB+RI.OFFB        ; adding alightings at transit stop B
			IF(RI.PERIOD=1)
				SUMVOLEA=SUMVOLEA+RI.EAVOL      ; adding transit volumes EA
				SUMONAEA=SUMONAEA+RI.EAONA      ; adding boardings  at transit stop A EA
				SUMOFFAEA=SUMOFFAEA+RI.EAOFFA   ; adding alightings at transit stop A EA
				SUMONBEA=SUMONBEA+RI.EAONB      ; adding boardings  at transit stop B EA
				SUMOFFBEA=SUMOFFBEA+RI.EAOFFB   ; adding alightings at transit stop B EA
			ELSEIF(RI.PERIOD=2)
				SUMVOLAM=SUMVOLAM+RI.AMVOL      ; adding transit volumes AM
				SUMONAAM=SUMONAAM+RI.AMONA      ; adding boardings  at transit stop A AM
				SUMOFFAAM=SUMOFFAAM+RI.AMOFFA   ; adding alightings at transit stop A AM
				SUMONBAM=SUMONBAM+RI.AMONB      ; adding boardings  at transit stop B AM
				SUMOFFBAM=SUMOFFBAM+RI.AMOFFB   ; adding alightings at transit stop B AM
			ELSEIF(RI.PERIOD=3)
				SUMVOLMD=SUMVOLMD+RI.MDVOL      ; adding transit volumes MD
				SUMONAMD=SUMONAMD+RI.MDONA      ; adding boardings  at transit stop A MD
				SUMOFFAMD=SUMOFFAMD+RI.MDOFFA   ; adding alightings at transit stop A MD
				SUMONBMD=SUMONBMD+RI.MDONB      ; adding boardings  at transit stop B MD
				SUMOFFBMD=SUMOFFBMD+RI.MDOFFB   ; adding alightings at transit stop B MD
			ELSEIF(RI.PERIOD=4)
				SUMVOLPM=SUMVOLPM+RI.PMVOL      ; adding transit volumes PM
				SUMONAPM=SUMONAPM+RI.PMONA      ; adding boardings  at transit stop A PM
				SUMOFFAPM=SUMOFFAPM+RI.PMOFFA   ; adding alightings at transit stop A PM
				SUMONBPM=SUMONBPM+RI.PMONB      ; adding boardings  at transit stop B PM
				SUMOFFBPM=SUMOFFBPM+RI.PMOFFB   ; adding alightings at transit stop B PM
			ELSEIF(RI.PERIOD=5)
				SUMVOLEV=SUMVOLEV+RI.EVVOL      ; adding transit volumes EV
				SUMONAEV=SUMONAEV+RI.EVONA      ; adding boardings  at transit stop A EV
				SUMOFFAEV=SUMOFFAEV+RI.EVOFFA   ; adding alightings at transit stop A EV
				SUMONBEV=SUMONBEV+RI.EVONB      ; adding boardings  at transit stop B EV
				SUMOFFBEV=SUMOFFBEV+RI.EVOFFB   ; adding alightings at transit stop B EV
			ELSEIF(RI.PERIOD=6)
				SUMVOLAP=SUMVOLAP+RI.APVOL      ; adding transit volumes AP
				SUMONAAP=SUMONAAP+RI.APONA      ; adding boardings  at transit stop A AP
				SUMOFFAAP=SUMOFFAAP+RI.APOFFA   ; adding alightings at transit stop A AP
				SUMONBAP=SUMONBAP+RI.APONB      ; adding boardings  at transit stop B AP
				SUMOFFBAP=SUMOFFBAP+RI.APOFFB   ; adding alightings at transit stop B AP
			ENDIF
			_FLAG=1
		ENDIF
	ENDIF

	;--- printing data and reinitializing data for each transit or non-transit
	IF(_FLAG=0 || RECI.RECNO=RECI.NUMRECORDS)
		IF(RECI.RECNO>1)
			RO.A=ANODE
			RO.B=BNODE
			RO.MODE=NMODE
			RO.OPERATOR=OPER
			RO.NAME=TRNLNAME
			RO.LONGNAME=TLNAME
			RO.DIST=VDIST
			RO.TIME=VTIME
			RO.LINKSEQ=VLINKSEQ
			
			IF(RI.PERIOD=1)
				RO.EAHDWY=VEAHDWY
			ELSEIF(RI.PERIOD=2)
				RO.AMHDWY=VAMHDWY
			ELSEIF(RI.PERIOD=3)
				RO.MDHDWY=VMDHDWY
			ELSEIF(RI.PERIOD=4)
				RO.PMHDWY=VPMHDWY
			ELSEIF(RI.PERIOD=5)
				RO.EVHDWY=VEVHDWY
			ELSEIF(RI.PERIOD=6)
				RO.APHDWY=VAPHDWY
			ENDIF
			
		    RO.STOPA=STOPA
		    RO.STOPB=STOPB
		    RO.VOL=SUMVOL
		    RO.ONA=SUMONA
		    RO.OFFA=SUMOFFA
		    RO.ONB=SUMONB
		    RO.OFFB=SUMOFFB
		    RO.EAVOL=SUMVOLEA
		    RO.EAONA=SUMONAEA
		    RO.EAOFFA=SUMOFFAEA
		    RO.EAONB=SUMONBEA
		    RO.EAOFFB=SUMOFFBEA
		    RO.AMVOL=SUMVOLAM
		    RO.AMONA=SUMONAAM
		    RO.AMOFFA=SUMOFFAAM
		    RO.AMONB=SUMONBAM
		    RO.AMOFFB=SUMOFFBAM
		    RO.MDVOL=SUMVOLMD
		    RO.MDONA=SUMONAMD
		    RO.MDOFFA=SUMOFFAMD
		    RO.MDONB=SUMONBMD
		    RO.MDOFFB=SUMOFFBMD
		    RO.PMVOL=SUMVOLPM
		    RO.PMONA=SUMONAPM
		    RO.PMOFFA=SUMOFFAPM
		    RO.PMONB=SUMONBPM
		    RO.PMOFFB=SUMOFFBPM
		    RO.EVVOL=SUMVOLEV
		    RO.EVONA=SUMONAEV
		    RO.EVOFFA=SUMOFFAEV
		    RO.EVONB=SUMONBEV
		    RO.EVOFFB=SUMOFFBEV
		    RO.APVOL=SUMVOLAP
		    RO.APONA=SUMONAAP
		    RO.APOFFA=SUMOFFAAP
			RO.APONB=SUMONBAP
			RO.APOFFB=SUMOFFBAP
		  
			IF(LEFTSTR(TRNLNAME,1)='*')
				WRITE RECO=2                ; writing non-transit data
			ELSE
				IF(SUMONA>0 || SUMOFFA>0) RO.STOPA=1
				IF(SUMONB>0 || SUMOFFB>0) RO.STOPB=1
				WRITE RECO=1                ; writing transit data
			ENDIF
		ENDIF
		
	    TRNLNAME=RI.NAME                  ; transit line name
	    ANODE=RI.A                        ; A node number
	    BNODE=RI.B                        ; B node number
	    NMODE=RI.MODE                     ; mode number
	    OPER=RI.OPERATOR                  ; operator number
	    TLNAME=RI.LONGNAME                ; long name for transit line or non-transit link
	    VDIST=RI.DIST                     ; link distance
	    VTIME=RI.TIME                     ; link time
	    VLINKSEQ=RI.LINKSEQ               ; link sequential number for transit line
	    VHEADWAY=RI.HEADWAY               ; headway for transit line
	    VEAHDWY=RI.EAHDWY                 ; headway for transit line EA
	    VAMHDWY=RI.AMHDWY                 ; headway for transit line AM
	    VMDHDWY=RI.MDHDWY                 ; headway for transit line MD
	    VPMHDWY=RI.PMHDWY                 ; headway for transit line PM
	    VEVHDWY=RI.EVHDWY                 ; headway for transit line EV
	    VAPHDWY=RI.APHDWY                 ; headway for transit line AP
	    STOPA=RI.STOPA                    ; 0=non-stop node & 1=stop station node at transit stop A
	    STOPB=RI.STOPB                    ; 0=non-stop node & 1=stop station node at transit stop B
	    SUMVOL=RI.VOL                     ; transit volumes for the transit link
	    SUMONA=RI.ONA                     ; boardings  at transit stop A
	    SUMOFFA=RI.OFFA                   ; alightings at transit stop A
	    SUMONB=RI.ONB                     ; boardings  at transit stop B
	    SUMOFFB=RI.OFFB                   ; alightings at transit stop B
		SUMVOLEA=RI.EAVOL                  ; EA transit volumes for the transit link
		SUMONAEA=RI.EAONA                  ; EA boardings  at transit stop A
		SUMOFFAEA=RI.EAOFFA                ; EA alightings at transit stop A
		SUMONBEA=RI.EAONB                  ; EA boardings  at transit stop B
		SUMOFFBEA=RI.EAOFFB                ; EA alightings at transit stop B
		SUMVOLAM=RI.AMVOL                  ; AM transit volumes for the transit link
		SUMONAAM=RI.AMONA                  ; AM boardings  at transit stop A
		SUMOFFAAM=RI.AMOFFA                ; AM alightings at transit stop A
		SUMONBAM=RI.AMONB                  ; AM boardings  at transit stop B
		SUMOFFBAM=RI.AMOFFB                ; AM alightings at transit stop B
		SUMVOLMD=RI.MDVOL                  ; MD transit volumes for the transit link
		SUMONAMD=RI.MDONA                  ; MD boardings  at transit stop A
		SUMOFFAMD=RI.MDOFFA                ; MD alightings at transit stop A
		SUMONBMD=RI.MDONB                  ; MD boardings  at transit stop B
		SUMOFFBMD=RI.MDOFFB                ; MD alightings at transit stop B
		SUMVOLPM=RI.PMVOL                  ; PM transit volumes for the transit link
		SUMONAPM=RI.PMONA                  ; PM boardings  at transit stop A
		SUMOFFAPM=RI.PMOFFA                ; PM alightings at transit stop A
		SUMONBPM=RI.PMONB                  ; PM boardings  at transit stop B
		SUMOFFBPM=RI.PMOFFB                ; PM alightings at transit stop B
		SUMVOLEV=RI.EVVOL                  ; EV transit volumes for the transit link
		SUMONAEV=RI.EVONA                  ; EV boardings  at transit stop A
		SUMOFFAEV=RI.EVOFFA                ; EV alightings at transit stop A
		SUMONBEV=RI.EVONB                  ; EV boardings  at transit stop B
		SUMOFFBEV=RI.EVOFFB                ; EV alightings at transit stop B
		SUMVOLAP=RI.APVOL                  ; AP transit volumes for the transit link
		SUMONAAP=RI.APONA                  ; AP boardings  at transit stop A
		SUMOFFAAP=RI.APOFFA                ; AP alightings at transit stop A
		SUMONBAP=RI.APONB                  ; AP boardings  at transit stop B
		SUMOFFBAP=RI.APOFFB                ; AP alightings at transit stop B
	ENDIF
ENDRUN

;Tabulate station access / egress using NonTransitLinksMerge.DBF
RUN PGM=MATRIX
	DBI[1]=PARAMETERS\MARTA_STATION_LOOKUP_{year}.DBF
	DBI[2]=Eval\NonTransitLinksMerge.DBF
	RECO[1]=Eval\StationAccessEgress.DBF,FIELDS=NODE,NAME,WLKACC,EAWLKACC,AMWLKACC,MDWLKACC,PMWLKACC,EVWLKACC,APWLKACC,
												KNRACC,EAKNRACC,AMKNRACC,MDKNRACC,PMKNRACC,EVKNRACC,APKNRACC,
												PNRACC,EAPNRACC,AMPNRACC,MDPNRACC,PMPNRACC,EVPNRACC,APPNRACC,
												XFRACC,EAXFRACC,AMXFRACC,MDXFRACC,PMXFRACC,EVXFRACC,APXFRACC,
												WLKEGR,EAWLKEGR,AMWLKEGR,MDWLKEGR,PMWLKEGR,EVWLKEGR,APWLKEGR,
												KNREGR,EAKNREGR,AMKNREGR,MDKNREGR,PMKNREGR,EVKNREGR,APKNREGR,
												PNREGR,EAPNREGR,AMPNREGR,MDPNREGR,PMPNREGR,EVPNREGR,APPNREGR,
												XFREGR,EAXFREGR,AMXFREGR,MDXFREGR,PMXFREGR,EVXFREGR,APXFREGR
													 
	ZONES=1

	LOOP STA=1,DBI.1.NUMRECORDS  ;loop through station lookup records
		X=DBIReadRecord(1,STA)
		NODE = DI.1.NODE
		NAME = DI.1.STATION

		;set values to zero each time through the station loop
		;wlk acc
		_WLKACC=0
		_EAWLKACC=0
		_AMWLKACC=0
		_MDWLKACC=0
		_PMWLKACC=0
		_EVWLKACC=0
		_APWLKACC=0
		;knr acc
		_KNRACC=0
		_EAKNRACC=0
		_AMKNRACC=0
		_MDKNRACC=0
		_PMKNRACC=0
		_EVKNRACC=0
		_APKNRACC=0
		;pnr acc
		_PNRACC=0
		_EAPNRACC=0
		_AMPNRACC=0
		_MDPNRACC=0
		_PMPNRACC=0
		_EVPNRACC=0
		_APPNRACC=0
		;xfr acc
		_XFRACC=0
		_EAXFRACC=0
		_AMXFRACC=0
		_MDXFRACC=0
		_PMXFRACC=0
		_EVXFRACC=0
		_APXFRACC=0
		;wlk egr
		_WLKEGR=0
		_EAWLKEGR=0
		_AMWLKEGR=0
		_MDWLKEGR=0
		_PMWLKEGR=0
		_EVWLKEGR=0
		_APWLKEGR=0
		;knr egr
		_KNREGR=0
		_EAKNREGR=0
		_AMKNREGR=0
		_MDKNREGR=0
		_PMKNREGR=0
		_EVKNREGR=0
		_APKNREGR=0
		;pnr egr
		_PNREGR=0
		_EAPNREGR=0
		_AMPNREGR=0
		_MDPNREGR=0
		_PMPNREGR=0
		_EVPNREGR=0
		_APPNREGR=0
		;xfr egr
		_XFREGR=0
		_EAXFREGR=0
		_AMXFREGR=0
		_MDXFREGR=0
		_PMXFREGR=0
		_EVXFREGR=0
		_APXFREGR=0
	
		;loop through non-transit link records
		LOOP NonTrn=1,DBI.2.NUMRECORDS
			Y=DBIReadRecord(2,NonTrn)
			IF(DI.2.B = NODE)
				IF(DI.2.MODE=1)
					_WLKACC = _WLKACC + DI.2.VOL
					_EAWLKACC = _EAWLKACC + DI.2.EAVOL
					_AMWLKACC = _AMWLKACC + DI.2.AMVOL
					_MDWLKACC = _MDWLKACC + DI.2.MDVOL
					_PMWLKACC = _PMWLKACC + DI.2.PMVOL
					_EVWLKACC = _EVWLKACC + DI.2.EVVOL
					_APWLKACC = _APWLKACC + DI.2.APVOL
				ELSEIF(DI.2.MODE=2)
					_KNRACC = _KNRACC + DI.2.VOL
					_EAKNRACC = _EAKNRACC + DI.2.EAVOL
					_AMKNRACC = _AMKNRACC + DI.2.AMVOL
					_MDKNRACC = _MDKNRACC + DI.2.MDVOL
					_PMKNRACC = _PMKNRACC + DI.2.PMVOL
					_EVKNRACC = _EVKNRACC + DI.2.EVVOL
					_APKNRACC = _APKNRACC + DI.2.APVOL
				ELSEIF(DI.2.MODE=3)
					_PNRACC = _PNRACC + DI.2.VOL
					_EAPNRACC = _EAPNRACC + DI.2.EAVOL
					_AMPNRACC = _AMPNRACC + DI.2.AMVOL
					_MDPNRACC = _MDPNRACC + DI.2.MDVOL
					_PMPNRACC = _PMPNRACC + DI.2.PMVOL
					_EVPNRACC = _EVPNRACC + DI.2.EVVOL
					_APPNRACC = _APPNRACC + DI.2.APVOL
				ELSEIF(DI.2.MODE=4-5)
					_XFRACC = _XFRACC + DI.2.VOL
					_EAXFRACC = _EAXFRACC + DI.2.EAVOL
					_AMXFRACC = _AMXFRACC + DI.2.AMVOL
					_MDXFRACC = _MDXFRACC + DI.2.MDVOL
					_PMXFRACC = _PMXFRACC + DI.2.PMVOL
					_EVXFRACC = _EVXFRACC + DI.2.EVVOL
					_APXFRACC = _APXFRACC + DI.2.APVOL
				ENDIF
			ENDIF
			
			IF(DI.2.A = NODE)
				IF(DI.2.MODE=1)
					_WLKEGR = _WLKEGR + DI.2.VOL
					_EAWLKEGR = _EAWLKEGR + DI.2.EAVOL
					_AMWLKEGR = _AMWLKEGR + DI.2.AMVOL
					_MDWLKEGR = _MDWLKEGR + DI.2.MDVOL
					_PMWLKEGR = _PMWLKEGR + DI.2.PMVOL
					_EVWLKEGR = _EVWLKEGR + DI.2.EVVOL
					_APWLKEGR = _APWLKEGR + DI.2.APVOL
				ELSEIF(DI.2.MODE=2)
					_KNREGR = _KNREGR + DI.2.VOL
					_EAKNREGR = _EAKNREGR + DI.2.EAVOL
					_AMKNREGR = _AMKNREGR + DI.2.AMVOL
					_MDKNREGR = _MDKNREGR + DI.2.MDVOL
					_PMKNREGR = _PMKNREGR + DI.2.PMVOL
					_EVKNREGR = _EVKNREGR + DI.2.EVVOL
					_APKNREGR = _APKNREGR + DI.2.APVOL
				ELSEIF(DI.2.MODE=3)
					_PNREGR = _PNREGR + DI.2.VOL
					_EAPNREGR = _EAPNREGR + DI.2.EAVOL
					_AMPNREGR = _AMPNREGR + DI.2.AMVOL
					_MDPNREGR = _MDPNREGR + DI.2.MDVOL
					_PMPNREGR = _PMPNREGR + DI.2.PMVOL
					_EVPNREGR = _EVPNREGR + DI.2.EVVOL
					_APPNREGR = _APPNREGR + DI.2.APVOL
				ELSEIF(DI.2.MODE=4-5)
					_XFREGR = _XFREGR + DI.2.VOL
					_EAXFREGR = _EAXFREGR + DI.2.EAVOL
					_AMXFREGR = _AMXFREGR + DI.2.AMVOL
					_MDXFREGR = _MDXFREGR + DI.2.MDVOL
					_PMXFREGR = _PMXFREGR + DI.2.PMVOL
					_EVXFREGR = _EVXFREGR + DI.2.EVVOL
					_APXFREGR = _APXFREGR + DI.2.APVOL
				ENDIF
			ENDIF
		  
			IF(DBI.2.RECNO=DBI.2.NUMRECORDS)  ;last assignment record : print boarding results
				RO.NODE=NODE
				RO.NAME=NAME
				;WLK ACC
				RO.WLKACC=_WLKACC
				RO.EAWLKACC=_EAWLKACC
				RO.AMWLKACC=_AMWLKACC
				RO.MDWLKACC=_MDWLKACC
				RO.PMWLKACC=_PMWLKACC
				RO.EVWLKACC=_EVWLKACC
				RO.APWLKACC=_APWLKACC
				;KNR ACC
				RO.KNRACC=_KNRACC
				RO.EAKNRACC=_EAKNRACC
				RO.AMKNRACC=_AMKNRACC
				RO.MDKNRACC=_MDKNRACC
				RO.PMKNRACC=_PMKNRACC
				RO.EVKNRACC=_EVKNRACC
				RO.APKNRACC=_APKNRACC
				;PNR ACC
				RO.PNRACC=_PNRACC
				RO.EAPNRACC=_EAPNRACC
				RO.AMPNRACC=_AMPNRACC
				RO.MDPNRACC=_MDPNRACC
				RO.PMPNRACC=_PMPNRACC
				RO.EVPNRACC=_EVPNRACC
				RO.APPNRACC=_APPNRACC
				;XFR ACC
				RO.XFRACC=_XFRACC
				RO.EAXFRACC=_EAXFRACC
				RO.AMXFRACC=_AMXFRACC
				RO.MDXFRACC=_MDXFRACC
				RO.PMXFRACC=_PMXFRACC
				RO.EVXFRACC=_EVXFRACC
				RO.APXFRACC=_APXFRACC
				;WLK EGR
				RO.WLKEGR=_WLKEGR
				RO.EAWLKEGR=_EAWLKEGR
				RO.AMWLKEGR=_AMWLKEGR
				RO.MDWLKEGR=_MDWLKEGR
				RO.PMWLKEGR=_PMWLKEGR
				RO.EVWLKEGR=_EVWLKEGR
				RO.APWLKEGR=_APWLKEGR
				;KNR EGR
				RO.KNREGR=_KNREGR
				RO.EAKNREGR=_EAKNREGR
				RO.AMKNREGR=_AMKNREGR
				RO.MDKNREGR=_MDKNREGR
				RO.PMKNREGR=_PMKNREGR
				RO.EVKNREGR=_EVKNREGR
				RO.APKNREGR=_APKNREGR
				;PNR EGR
				RO.PNREGR=_PNREGR
				RO.EAPNREGR=_EAPNREGR
				RO.AMPNREGR=_AMPNREGR
				RO.MDPNREGR=_MDPNREGR
				RO.PMPNREGR=_PMPNREGR
				RO.EVPNREGR=_EVPNREGR
				RO.APPNREGR=_APPNREGR
				;XFR EGR
				RO.XFREGR=_XFREGR
				RO.EAXFREGR=_EAXFREGR
				RO.AMXFREGR=_AMXFREGR
				RO.MDXFREGR=_MDXFREGR
				RO.PMXFREGR=_PMXFREGR
				RO.EVXFREGR=_EVXFREGR
				RO.APXFREGR=_APXFREGR
				WRITE RECO=1
			ENDIF
		ENDLOOP
	ENDLOOP
ENDRUN
EndDistributeMULTISTEP
;Merge results together

Wait4Files Files={PROCID}1.script.end,{PROCID}2.script.end,{PROCID}3.script.end,{PROCID}4.script.end

:EndPostAssign
:End

; zip up remaining files
IF({archive.n}=1)
	*"c:\program files\winrar\winrar" a -inul -afzip -df ARCTourBasedModel.zip *.*
ENDIF

;Check tokens for running performance measures
IF({chkPerf.n}=0)     goto :EndModel
IF({chkModSum.n}=0)   goto :EndModSum

; Model summary starts here.
RUN PGM=MATRIX
	MATI[1]=TRIPSEA.TPP           ;Early AM CT-RAMP
	MATI[2]=TRIPSAM.TPP           ;AM peak CT-RAMP
	MATI[3]=TRIPSMD.TPP           ;Midday CT-RAMP
	MATI[4]=TRIPSPM.TPP           ;PM peak CT-RAMP
	MATI[5]=TRIPSEV.TPP           ;Evening CT-RAMP
	MATI[6]=vehout{year}.mtt      ;Vehicle Trip Table from Air Passenger Model
	MATI[7]=trnout{year}.mtt      ;Transit Trip Table from Air Passenger Model
	MATI[8]=iewrkm{year}.vtt      ;I-E Work Vehicle Trip Table
	MATI[9]=ienwkm{year}.vtt      ;I-E Non-Work Vehicle Trip Table
	MATI[10]=com.trp              ;Personal use commercial vehicle trip table
	MATI[11]=mtk.trp              ;Medium duty truck trip table
	MATI[12]=htk.trp              ;Heavy duty truck trip table
	MATI[13]=eepc20{year}.vtt     ;E-E Passenger Cars
	MATI[14]=TODEA{year}.VTT      ;EA passenger car
	MATI[15]=TODAM{year}.VTT      ;AM passenger car
	MATI[16]=TODMD{year}.VTT      ;MD passenger car
	MATI[17]=TODPM{year}.VTT      ;PM passenger car
	MATI[18]=TODEV{year}.VTT      ;EV passenger car
	ZDATI[1]=ZONEDATA.DBF,Z=ZONE  ;zone data file
	ZONEMSG=10

	totpop=totpop+ZI.1.POP
	totemp=totemp+ZI.1.EMP
	tothh=tothh+ZI.1.HSHLD

	;CT-RAMP TABLES
	FILLMW MW[1]=MI.1.1(19)
	FILLMW MW[21]=MI.2.1(19)
	FILLMW MW[41]=MI.3.1(19)
	FILLMW MW[61]=MI.4.1(19)
	FILLMW MW[81]=MI.5.1(19)
	;IE PASSENGER CAR TABLES
	FILLMW MW[101]=MI.8.1(2)
	FILLMW MW[103]=MI.9.1(2)
	;AIR PASSENGER TABLES
	FILLMW MW[105]=MI.6.5
	FILLMW MW[106]=MI.7.5(2)
	;TRUCK TABLES
	FILLMW MW[201]=MI.10.1(5)
	FILLMW MW[301]=MI.11.1(5)
	FILLMW MW[401]=MI.12.1(5)
	;EE PASSENGER CAR TABLE
	FILLMW MW[100]=MI.13.1
	;ASSIGNMENT TABLES
	FILLMW MW[501]=MI.14.1(2)
	FILLMW MW[601]=MI.15.1(2)
	FILLMW MW[701]=MI.16.1(2)
	FILLMW MW[801]=MI.17.1(2)
	FILLMW MW[901]=MI.18.1(2)

	;EARLY AM
	_EASOVFR = _EASOVFR + ROWSUM(1)
	_EASOVTL = _EASOVTL + ROWSUM(2)
	_EASR2FR = _EASR2FR + ROWSUM(3)
	_EASR2TL = _EASR2TL + ROWSUM(4)
	_EASR3FR = _EASR3FR + ROWSUM(5)
	_EASR3TL = _EASR3TL + ROWSUM(6)
	_EAWALK  = _EAWALK  + ROWSUM(7)
	_EABIKE  = _EABIKE  + ROWSUM(8)
	_EAWLKA  = _EAWLKA  + ROWSUM(9)
	_EAWLKP  = _EAWLKP  + ROWSUM(10)
	_EAPNRA  = _EAPNRA  + ROWSUM(11) + ROWSUM(12)
	_EAPNRP  = _EAPNRP  + ROWSUM(13) + ROWSUM(14)
	_EAKNRA  = _EAKNRA  + ROWSUM(15) + ROWSUM(16)
	_EAKNRP  = _EAKNRP  + ROWSUM(17) + ROWSUM(18)
	_EASCHB  = _EASCHB  + ROWSUM(19)
	;AM PEAK 
	_AMSOVFR = _AMSOVFR + ROWSUM(21)
	_AMSOVTL = _AMSOVTL + ROWSUM(22)
	_AMSR2FR = _AMSR2FR + ROWSUM(23)
	_AMSR2TL = _AMSR2TL + ROWSUM(24)
	_AMSR3FR = _AMSR3FR + ROWSUM(25)
	_AMSR3TL = _AMSR3TL + ROWSUM(26)
	_AMWALK  = _AMWALK  + ROWSUM(27)
	_AMBIKE  = _AMBIKE  + ROWSUM(28)
	_AMWLKA  = _AMWLKA  + ROWSUM(29)
	_AMWLKP  = _AMWLKP  + ROWSUM(30)
	_AMPNRA  = _AMPNRA  + ROWSUM(31) + ROWSUM(32)
	_AMPNRP  = _AMPNRP  + ROWSUM(33) + ROWSUM(34)
	_AMKNRA  = _AMKNRA  + ROWSUM(35) + ROWSUM(36)
	_AMKNRP  = _AMKNRP  + ROWSUM(37) + ROWSUM(38)
	_AMSCHB  = _AMSCHB  + ROWSUM(39)
	;MIDDAY  
	_MDSOVFR = _MDSOVFR + ROWSUM(41)
	_MDSOVTL = _MDSOVTL + ROWSUM(42)
	_MDSR2FR = _MDSR2FR + ROWSUM(43)
	_MDSR2TL = _MDSR2TL + ROWSUM(44)
	_MDSR3FR = _MDSR3FR + ROWSUM(45)
	_MDSR3TL = _MDSR3TL + ROWSUM(46)
	_MDWALK  = _MDWALK  + ROWSUM(47)
	_MDBIKE  = _MDBIKE  + ROWSUM(48)
	_MDWLKA  = _MDWLKA  + ROWSUM(49)
	_MDWLKP  = _MDWLKP  + ROWSUM(50)
	_MDPNRA  = _MDPNRA  + ROWSUM(51) + ROWSUM(52)
	_MDPNRP  = _MDPNRP  + ROWSUM(53) + ROWSUM(54)
	_MDKNRA  = _MDKNRA  + ROWSUM(55) + ROWSUM(56)
	_MDKNRP  = _MDKNRP  + ROWSUM(57) + ROWSUM(58)
	_MDSCHB  = _MDSCHB  + ROWSUM(59)
	;PM PEAK 
	_PMSOVFR = _PMSOVFR + ROWSUM(61)
	_PMSOVTL = _PMSOVTL + ROWSUM(62)
	_PMSR2FR = _PMSR2FR + ROWSUM(63)
	_PMSR2TL = _PMSR2TL + ROWSUM(64)
	_PMSR3FR = _PMSR3FR + ROWSUM(65)
	_PMSR3TL = _PMSR3TL + ROWSUM(66)
	_PMWALK  = _PMWALK  + ROWSUM(67)
	_PMBIKE  = _PMBIKE  + ROWSUM(68)
	_PMWLKA  = _PMWLKA  + ROWSUM(69)
	_PMWLKP  = _PMWLKP  + ROWSUM(70)
	_PMPNRA  = _PMPNRA  + ROWSUM(71) + ROWSUM(72)
	_PMPNRP  = _PMPNRP  + ROWSUM(73) + ROWSUM(74)
	_PMKNRA  = _PMKNRA  + ROWSUM(75) + ROWSUM(76)
	_PMKNRP  = _PMKNRP  + ROWSUM(77) + ROWSUM(78)
	_PMSCHB  = _PMSCHB  + ROWSUM(79)
	;EVENING/LATE NIGHT
	_EVSOVFR = _EVSOVFR + ROWSUM(81)
	_EVSOVTL = _EVSOVTL + ROWSUM(82)
	_EVSR2FR = _EVSR2FR + ROWSUM(83)
	_EVSR2TL = _EVSR2TL + ROWSUM(84)
	_EVSR3FR = _EVSR3FR + ROWSUM(85)
	_EVSR3TL = _EVSR3TL + ROWSUM(86)
	_EVWALK  = _EVWALK  + ROWSUM(87)
	_EVBIKE  = _EVBIKE  + ROWSUM(88)
	_EVWLKA  = _EVWLKA  + ROWSUM(89)
	_EVWLKP  = _EVWLKP  + ROWSUM(90)
	_EVPNRA  = _EVPNRA  + ROWSUM(91) + ROWSUM(92)
	_EVPNRP  = _EVPNRP  + ROWSUM(93) + ROWSUM(94)
	_EVKNRA  = _EVKNRA  + ROWSUM(95) + ROWSUM(96)
	_EVKNRP  = _EVKNRP  + ROWSUM(97) + ROWSUM(98)
	_EVSCHB  = _EVSCHB  + ROWSUM(99)
	;IE PASS CAR TRIPS
	_IEWKINT = _IEWKINT + ROWSUM(101)
	_IEWKNIN = _IEWKNIN + ROWSUM(102)
	_IENWINT = _IENWINT + ROWSUM(103)
	_IENWNIN = _IENWNIN + ROWSUM(104)
	;AIR PASSENGER TRIPS
	_AIRVEH = _AIRVEH + ROWSUM(105)
	_AIRWLK = _AIRWLK + ROWSUM(106)
	_AIRDRV = _AIRDRV + ROWSUM(107)
	;TRUCK TRIPS
	_COMEA = _COMEA + ROWSUM(201)
	_COMAM = _COMAM + ROWSUM(202)
	_COMMD = _COMMD + ROWSUM(203)
	_COMPM = _COMPM + ROWSUM(204)
	_COMEV = _COMEV + ROWSUM(205)
	_MTKEA = _MTKEA + ROWSUM(301)
	_MTKAM = _MTKAM + ROWSUM(302)
	_MTKMD = _MTKMD + ROWSUM(303)
	_MTKPM = _MTKPM + ROWSUM(304)
	_MTKEV = _MTKEV + ROWSUM(305)
	_HTKEA = _HTKEA + ROWSUM(401)
	_HTKAM = _HTKAM + ROWSUM(402)
	_HTKMD = _HTKMD + ROWSUM(403)
	_HTKPM = _HTKPM + ROWSUM(404)
	_HTKEV = _HTKEV + ROWSUM(405)
	;EE PASSENGER CAR
	_EEPC = _EEPC + ROWSUM(100)
	;ASSIGNMENT TABLES (CTRAMP + EXTERNALS)
	;EARLY AM
	_SOVEA = _SOVEA + ROWSUM(501)
	_HOVEA = _HOVEA + ROWSUM(502)
	;AM
	_SOVAM = _SOVAM + ROWSUM(601)
	_HOVAM = _HOVAM + ROWSUM(602)
	;MIDDAY
	_SOVMD = _SOVMD + ROWSUM(701)
	_HOVMD = _HOVMD + ROWSUM(702)
	;PM
	_SOVPM = _SOVPM + ROWSUM(801)
	_HOVPM = _HOVPM + ROWSUM(802)
	;EVENING/LATE NIGHT
	_SOVEV = _SOVEV + ROWSUM(901)
	_HOVEV = _HOVEV + ROWSUM(902)

	;PROCESS II, IE, EE TRUCK TRIPS
	JLOOP
		IF(I=1-{lastin}& J=1-{lastin})
			_comii = _comii + MW[201]+MW[202]+MW[203]+MW[204]+MW[205]
			_mtkii = _mtkii + MW[301]+MW[302]+MW[303]+MW[304]+MW[305]
			_htkii = _htkii + MW[401]+MW[402]+MW[403]+MW[404]+MW[405]
		ELSEIF((I=1-{lastin} & J={ext1}-{ext2}) | (I={ext1}-{ext2} & J=1-{lastin}))
			_comie = _comie + MW[201]+MW[202]+MW[203]+MW[204]+MW[205]
			_mtkie = _mtkie + MW[301]+MW[302]+MW[303]+MW[304]+MW[305]
			_htkie = _htkie + MW[401]+MW[402]+MW[403]+MW[404]+MW[405]
		ELSEIF(I={ext1}-{ext2} & J={ext1}-{ext2})
			_comee = _comee + MW[201]+MW[202]+MW[203]+MW[204]+MW[205]
			_mtkee = _mtkee + MW[301]+MW[302]+MW[303]+MW[304]+MW[305]
			_htkee = _htkee + MW[401]+MW[402]+MW[403]+MW[404]+MW[405]
		ENDIF
	ENDJLOOP

	;GET TOTALS FOR PRINTING
	IF(I={totzones})
		;EARLY AM TOTALS
		_EATRN = _EAWLKA + _EAWLKP + _EAKNRA + _EAKNRP + _EAPNRA + _EAPNRP
		_EASOV = _EASOVFR + _EASOVTL
		_EAHOV = _EASR2FR + _EASR2TL + _EASR3FR + _EASR3TL
		_EAHOVP = (_EASR2FR + _EASR2TL)*2 + (_EASR3FR + _EASR3TL)*3.5
		_EAVEH = _EASOV + _EAHOV
		_EAOTH = _EAWALK + _EABIKE + _EASCHB
		_EAPER = _EATRN + _EASOV + _EAHOVP + _EAOTH
		_EAOCC = (_EASOV+_EAHOVP)/_EAVEH
		;AM TOTALS
		_AMTRN = _AMWLKA + _AMWLKP + _AMKNRA + _AMKNRP + _AMPNRA + _AMPNRP
		_AMSOV = _AMSOVFR + _AMSOVTL
		_AMHOV = _AMSR2FR + _AMSR2TL + _AMSR3FR + _AMSR3TL
		_AMHOVP = (_AMSR2FR + _AMSR2TL)*2 + (_AMSR3FR + _AMSR3TL)*3.5
		_AMVEH = _AMSOV + _AMHOV
		_AMOTH = _AMWALK + _AMBIKE + _AMSCHB
		_AMPER = _AMTRN + _AMSOV + _AMHOVP + _AMOTH
		_AMOCC = (_AMSOV+_AMHOVP)/_AMVEH
		;MD TOTALS
		_MDTRN = _MDWLKA + _MDWLKP + _MDKNRA + _MDKNRP + _MDPNRA + _MDPNRP
		_MDSOV = _MDSOVFR + _MDSOVTL
		_MDHOV = _MDSR2FR + _MDSR2TL + _MDSR3FR + _MDSR3TL
		_MDHOVP = (_MDSR2FR + _MDSR2TL)*2 + (_MDSR3FR + _MDSR3TL)*3.5
		_MDVEH = _MDSOV + _MDHOV
		_MDOTH = _MDWALK + _MDBIKE + _MDSCHB
		_MDPER = _MDTRN + _MDSOV + _MDHOVP + _MDOTH
		_MDOCC = (_MDSOV+_MDHOVP)/_MDVEH
		;PM TOTALS
		_PMTRN = _PMWLKA + _PMWLKP + _PMKNRA + _PMKNRP + _PMPNRA + _PMPNRP
		_PMSOV = _PMSOVFR + _PMSOVTL
		_PMHOV = _PMSR2FR + _PMSR2TL + _PMSR3FR + _PMSR3TL
		_PMHOVP = (_PMSR2FR + _PMSR2TL)*2 + (_PMSR3FR + _PMSR3TL)*3.5
		_PMVEH = _PMSOV + _PMHOV
		_PMOTH = _PMWALK + _PMBIKE + _PMSCHB
		_PMPER = _PMTRN + _PMSOV + _PMHOVP + _PMOTH
		_PMOCC = (_PMSOV+_PMHOVP)/_PMVEH
		;EVENING / LATE NIGHT TOTALS
		_EVTRN = _EVWLKA + _EVWLKP + _EVKNRA + _EVKNRP + _EVPNRA + _EVPNRP
		_EVSOV = _EVSOVFR + _EVSOVTL
		_EVHOV = _EVSR2FR + _EVSR2TL + _EVSR3FR + _EVSR3TL
		_EVHOVP = (_EVSR2FR + _EVSR2TL)*2 + (_EVSR3FR + _EVSR3TL)*3.5
		_EVVEH = _EVSOV + _EVHOV
		_EVOTH = _EVWALK + _EVBIKE + _EVSCHB
		_EVPER = _EVTRN + _EVSOV + _EVHOVP + _EVOTH
		_EVOCC = (_EVSOV+_EVHOVP)/_EVVEH
		;CT-RAMP TOTALS
		_SOVFR = _EASOVFR + _AMSOVFR + _MDSOVFR + _PMSOVFR + _EVSOVFR
		_SOVTL = _EASOVTL + _AMSOVTL + _MDSOVTL + _PMSOVTL + _EVSOVTL
		_SR2FR = _EASR2FR + _AMSR2FR + _MDSR2FR + _PMSR2FR + _EVSR2FR
		_SR2TL = _EASR2TL + _AMSR2TL + _MDSR2TL + _PMSR2TL + _EVSR2TL
		_SR3FR = _EASR3FR + _AMSR3FR + _MDSR3FR + _PMSR3FR + _EVSR3FR
		_SR3TL = _EASR3TL + _AMSR3TL + _MDSR3TL + _PMSR3TL + _EVSR3TL
		_WALK  = _EAWALK + _AMWALK + _MDWALK + _PMWALK + _EVWALK
		_BIKE  = _EABIKE + _AMBIKE + _MDBIKE + _PMBIKE + _EVBIKE
		_WLKA  = _EAWLKA + _AMWLKA + _MDWLKA + _PMWLKA + _EVWLKA
		_WLKP  = _EAWLKP + _AMWLKP + _MDWLKP + _PMWLKP + _EVWLKP
		_PNRA  = _EAPNRA + _AMPNRA + _MDPNRA + _PMPNRA + _EVPNRA
		_PNRP  = _EAPNRP + _AMPNRP + _MDPNRP + _PMPNRP + _EVPNRP
		_KNRA  = _EAKNRA + _AMKNRA + _MDKNRA + _PMKNRA + _EVKNRA
		_KNRP  = _EAKNRP + _AMKNRP + _MDKNRP + _PMKNRP + _EVKNRP
		_SCHB  = _EASCHB + _AMSCHB + _MDSCHB + _PMSCHB + _EVSCHB
		_TRN = _WLKA + _WLKP + _KNRA + _KNRP + _PNRA + _PNRP
		_SOV = _SOVFR + _SOVTL
		_HOV = _SR2FR + _SR2TL + _SR3FR + _SR3TL
		_HOVP = (_SR2FR + _SR2TL)*2 + (_SR3FR + _SR3TL)*3.5
		_VEH = _SOV + _HOV
		_OTH = _WALK + _BIKE + _SCHB
		_PER = _TRN + _SOV + _HOVP + _OTH

		_PTOTTRN = _TRN/(_OTH + _TRN + _VEH)
		_PTOTVEHL = _VEH/(_OTH + _TRN + _VEH)
		_PTOTNONM = (_WALK + _BIKE)/(_OTH + _TRN + _VEH)
		_PTOTSCHL = _SCHB/(_OTH + _TRN + _VEH)
		
		_PVEHEA = _EAVEH/_VEH
		_PVEHAM = _AMVEH/_VEH
		_PVEHMD = _MDVEH/_VEH
		_PVEHPM = _PMVEH/_VEH
		_PVEHEV = _EVVEH/_VEH
		
		_TOTOCC = (_SOV+_HOVP)/_VEH
		log prefix=mobility, var=_totocc                         ; Save auto occupancy for mobility stats

		;IE PASS CAR TOTALS
		_IEWK = _IEWKINT + _IEWKNIN
		_IENW = _IENWINT + _IENWNIN
		_TOTIE = _IEWK + _IENW

		;TRUCK TOTALS
		_TKEE = _COMEE + _MTKEE + _HTKEE
		_TOTEE = _EEPC + _TKEE
		_COM = _COMII + _COMIE + _COMEE
		_MTK = _MTKII + _MTKIE + _MTKEE
		_HTK = _HTKII + _HTKIE + _HTKEE
		_tottrks = _COM + _MTK + _HTK

		;VEHICLE TOTALS
		_eavehtot = _sovea + _hovea + _comea + _mtkea + _htkea
		_amvehtot = _sovam + _hovam + _comam + _mtkam + _htkam
		_mdvehtot = _sovmd + _hovmd + _commd + _mtkmd + _htkmd
		_pmvehtot = _sovpm + _hovpm + _compm + _mtkpm + _htkpm
		_evvehtot = _sovev + _hovev + _comev + _mtkev + _htkev
		_totveh = _eavehtot + _amvehtot + _mdvehtot + _pmvehtot + _evvehtot
		_sovt = _sovea + _sovam + _sovmd + _sovpm + _sovev
		_hovt = _hovea + _hovam + _hovmd + _hovpm + _hovev

		; Write total SE to a temporary file to be used in next job
		PRINT list={totzones}/{totzones}(10),totpop(10),totemp(10),tothh(10),file=EVAL\se.tmp

		PRINT list='  MODEL SUMMARY for TRAVEL DEMAND MODEL RUN', file=EVAL\ABMsum{year}.txt
		PRINT list='     MODEL YEAR:  20{year}', file=EVAL\ABMsum{year}.txt
		PRINT list='     MODEL NAME:  {modelname}', file=EVAL\ABMsum{year}.txt
		PRINT list='   ',file=EVAL\ABMsum{year}.txt
		PRINT list='POPULATION                          =',totpop(18.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='HOUSEHOLDS                          =',tothh(18.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='EMPLOYMENT                          =',totemp(18.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='   ',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='        TRIP FILES BY PERIOD: CT-RAMP OUTPUT',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='EARLY AM - TRIPSEA.TPP',file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Local Only & Combined Local & Premium Transit Trips      = ',_eawlka(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Premium Only Transit Trips                               = ',_eawlkp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Local Only & Combined Local & Premium Transit Trips = ',_eaknra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Premium Only Transit Trips                          = ',_eaknrp(12.0C),file=EVAL\ABMsum{year}.txt 
		PRINT list=' Park/Ride to Local Only & Combined Local & Premium Transit Trips = ',_eapnra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Park/Ride to Premium Only Transit Trips                          = ',_eapnrp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (non-toll)                                     = ',_easovfr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (toll-eligible)                                = ',_easovtl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (non-toll)                                    = ',_easr2fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (toll-eligible)                               = ',_easr2tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (non-toll)                                   = ',_easr3fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (toll-eligible)                              = ',_easr3tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk                                                             = ',_eawalk(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Bike                                                             = ',_eabike(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' School Bus                                                       = ',_easchb(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Auto Occupancy                                                   = ',_eaocc(12.2C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EA Transit                                             = ',_eatrn(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EA Vehicles                                            = ',_eaveh(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EA Other                                               = ',_eaoth(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EA Persons                                             = ',_eaper(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='AM PEAK  - TRIPSAM.TPP',file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Local Only & Combined Local & Premium Transit Trips      = ',_amwlka(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Premium Only Transit Trips                               = ',_amwlkp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Local Only & Combined Local & Premium Transit Trips = ',_amknra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Premium Only Transit Trips                          = ',_amknrp(12.0C),file=EVAL\ABMsum{year}.txt 
		PRINT list=' Park/Ride to Local Only & Combined Local & Premium Transit Trips = ',_ampnra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Park/Ride to Premium Only Transit Trips                          = ',_ampnrp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (non-toll)                                     = ',_amsovfr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (toll-eligible)                                = ',_amsovtl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (non-toll)                                    = ',_amsr2fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (toll-eligible)                               = ',_amsr2tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (non-toll)                                   = ',_amsr3fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (toll-eligible)                              = ',_amsr3tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk                                                             = ',_amwalk(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Bike                                                             = ',_ambike(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' School Bus                                                       = ',_amschb(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Auto Occupancy                                                   = ',_amocc(12.2C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total AM Transit                                             = ',_amtrn(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total AM Vehicles                                            = ',_amveh(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total AM Other                                               = ',_amoth(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total AM Persons                                             = ',_amper(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='MIDDAY   - TRIPSMD.TPP',file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Local Only & Combined Local & Premium Transit Trips      = ',_mdwlka(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Premium Only Transit Trips                               = ',_mdwlkp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Local Only & Combined Local & Premium Transit Trips = ',_mdknra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Premium Only Transit Trips                          = ',_mdknrp(12.0C),file=EVAL\ABMsum{year}.txt 
		PRINT list=' Park/Ride to Local Only & Combined Local & Premium Transit Trips = ',_mdpnra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Park/Ride to Premium Only Transit Trips                          = ',_mdpnrp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (non-toll)                                     = ',_mdsovfr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (toll-eligible)                                = ',_mdsovtl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (non-toll)                                    = ',_mdsr2fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (toll-eligible)                               = ',_mdsr2tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (non-toll)                                   = ',_mdsr3fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (toll-eligible)                              = ',_mdsr3tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk                                                             = ',_mdwalk(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Bike                                                             = ',_mdbike(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' School Bus                                                       = ',_mdschb(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Auto Occupancy                                                   = ',_mdocc(12.2C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total MD Transit                                             = ',_mdtrn(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total MD Vehicles                                            = ',_mdveh(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total MD Other                                               = ',_mdoth(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total MD Persons                                             = ',_mdper(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='PM PEAK  - TRIPSPM.TPP',file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Local Only & Combined Local & Premium Transit Trips      = ',_pmwlka(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Premium Only Transit Trips                               = ',_pmwlkp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Local Only & Combined Local & Premium Transit Trips = ',_pmknra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Premium Only Transit Trips                          = ',_pmknrp(12.0C),file=EVAL\ABMsum{year}.txt 
		PRINT list=' Park/Ride to Local Only & Combined Local & Premium Transit Trips = ',_pmpnra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Park/Ride to Premium Only Transit Trips                          = ',_pmpnrp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (non-toll)                                     = ',_pmsovfr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (toll-eligible)                                = ',_pmsovtl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (non-toll)                                    = ',_pmsr2fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (toll-eligible)                               = ',_pmsr2tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (non-toll)                                   = ',_pmsr3fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (toll-eligible)                              = ',_pmsr3tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk                                                             = ',_pmwalk(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Bike                                                             = ',_pmbike(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' School Bus                                                       = ',_pmschb(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Auto Occupancy                                                   = ',_pmocc(12.2C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total PM Transit                                             = ',_pmtrn(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total PM Vehicles                                            = ',_pmveh(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total PM Other                                               = ',_pmoth(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total PM Persons                                             = ',_pmper(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='EVENING  - TRIPSEV.TPP',file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Local Only & Combined Local & Premium Transit Trips      = ',_evwlka(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Premium Only Transit Trips                               = ',_evwlkp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Local Only & Combined Local & Premium Transit Trips = ',_evknra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Premium Only Transit Trips                          = ',_evknrp(12.0C),file=EVAL\ABMsum{year}.txt 
		PRINT list=' Park/Ride to Local Only & Combined Local & Premium Transit Trips = ',_evpnra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Park/Ride to Premium Only Transit Trips                          = ',_evpnrp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (non-toll)                                     = ',_evsovfr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (toll-eligible)                                = ',_evsovtl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (non-toll)                                    = ',_evsr2fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (toll-eligible)                               = ',_evsr2tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (non-toll)                                   = ',_evsr3fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (toll-eligible)                              = ',_evsr3tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk                                                             = ',_evwalk(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Bike                                                             = ',_evbike(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' School Bus                                                       = ',_evschb(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Auto Occupancy                                                   = ',_evocc(12.2C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EV Transit                                             = ',_evtrn(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EV Vehicles                                            = ',_evveh(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EV Other                                               = ',_evoth(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total EV Persons                                             = ',_evper(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='CT-RAMP TOTAL          ',file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Local Only & Combined Local & Premium Transit Trips      = ',_wlka(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk to Premium Only Transit Trips                               = ',_wlkp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Local Only & Combined Local & Premium Transit Trips = ',_knra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Kiss/Ride to Premium Only Transit Trips                          = ',_knrp(12.0C),file=EVAL\ABMsum{year}.txt 
		PRINT list=' Park/Ride to Local Only & Combined Local & Premium Transit Trips = ',_pnra(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Park/Ride to Premium Only Transit Trips                          = ',_pnrp(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (non-toll)                                     = ',_sovfr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips (toll-eligible)                                = ',_sovtl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (non-toll)                                    = ',_sr2fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV2 Vehicle Trips (toll-eligible)                               = ',_sr2tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (non-toll)                                   = ',_sr3fr(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV3+ Vehicle Trips (toll-eligible)                              = ',_sr3tl(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk                                                             = ',_walk(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Bike                                                             = ',_bike(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' School Bus                                                       = ',_schb(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Auto Occupancy                                                   = ',_totocc(12.2C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total Transit                                                = ',_trn(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total Vehicles                                               = ',_veh(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total Other                                                  = ',_oth(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total Persons                                                = ',_per(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list=' % Total Transit                                                  = ',_PTOTTRN*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list=' % Total Auto                                                     = ',_PTOTVEHL*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list=' % Total Non-motorized                                            = ',_PTOTNONM*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list=' % Total School Bus                                               = ',_PTOTSCHL*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV + HOV Vehicles',file=EVAL\ABMsum{year}.txt
		PRINT list='   % EA                                               = ',_PVEHEA*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list='   % AM                                               = ',_PVEHAM*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list='   % MD                                               = ',_PVEHMD*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list='   % PM                                               = ',_PVEHPM*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list='   % EV                                               = ',_PVEHEV*100(12.1C),'%',file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='                 AIR PASSENGER MODEL',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' Vehicle Trips                                                    = ',_airveh(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Walk Transit Trips                                               = ',_airwlk(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Drive Transit Trips                                              = ',_airdrv(12.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='             EXTERNAL-EXTERNAL VEHICLE TRIPS',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' Passenger Cars - EEPC20{year}.vtt      = ',_eepc(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Trucks - COM.TRP,MTK.TRP,HTK.TRP   = ',_tkee(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL E-E TRIPS                = ',_totee(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='                 INTERNAL-EXTERNAL TRIPS',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='WORK TRIPS - IEWRKM{year}.VTT',file=EVAL\ABMsum{year}.txt
		PRINT list=' I-E Work - Interstate              = ',_iewkint(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' I-E Work - Non-Interstate          = ',_iewknin(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total I-E Work Trips           = ',_iewk(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='    ',file=EVAL\ABMsum{year}.txt
		PRINT list='NON-WORK TRIPS - IENWKM{year}.VTT',file=EVAL\ABMsum{year}.txt
		PRINT list=' I-E Non-Work - Interstate          = ',_ienwint(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' I-E Non-Work - Non-Interstate      = ',_ienwnin(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     Total I-E Non-Work Trips       = ',_ienw(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL I-E TRIPS                = ',_totie(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='                TRUCK TRIPS - COM.TRP,MTK.TRP,HTK.TRP',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' I-I Commercial Trucks              = ',_comii(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' I-I Medium Duty Trucks             = ',_mtkii(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' I-I Heavy Duty Trucks              = ',_htkii(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' I-E Commercial Trucks              = ',_comie(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' I-E Medium Duty Trucks             = ',_mtkie(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' I-E Heavy Duty Trucks              = ',_htkie(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL TRUCK TRIPS              = ',_tottrks(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='TOTAL DAILY VEHICLE TRIP TABLES - com.trp,mtk.trp,htk.trp,tod(period).vtt',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' Commercial Vehicle Trips           = ',_com(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Medium Duty Truck Trips            = ',_mtk(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Heavy Duty Truck Trips             = ',_htk(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips                  = ',_sovt(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV Vehicle Trips                  = ',_hovt(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL DAILY VEHICLE TRIPS      = ',_totveh(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='             TIME OF DAY VEHICLE TRIP TABLES ',file=EVAL\ABMsum{year}.txt
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='EA - TODAM.VTT,COM.TRP,MTK.TRP,HTK.TRP ',file=EVAL\ABMsum{year}.txt
		PRINT list=' Commercial Vehicle Trips           = ',_comea(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Medium Duty Truck Trips            = ',_mtkea(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Heavy Duty Truck Trips             = ',_htkea(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips                  = ',_sovea(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV Vehicle Trips                  = ',_hovea(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL EA VEHICLE TRIPS         = ',_eavehtot(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='AM - TODAM.VTT,COM.TRP,MTK.TRP,HTK.TRP ',file=EVAL\ABMsum{year}.txt
		PRINT list=' Commercial Vehicle Trips           = ',_comam(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Medium Duty Truck Trips            = ',_mtkam(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Heavy Duty Truck Trips             = ',_htkam(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips                  = ',_sovam(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV Vehicle Trips                  = ',_hovam(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL AM VEHICLE TRIPS         = ',_amvehtot(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='MD - TODMD.VTT,COM.TRP,MTK.TRP,HTK.TRP ',file=EVAL\ABMsum{year}.txt
		PRINT list=' Commercial Vehicle Trips           = ',_commd(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Medium Duty Truck Trips            = ',_mtkmd(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Heavy Duty Truck Trips             = ',_htkmd(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips                  = ',_sovmd(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV Vehicle Trips                  = ',_hovmd(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL MD VEHICLE TRIPS         = ',_mdvehtot(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='PM - TODPM.VTT,COM.TRP,MTK.TRP,HTK.TRP ',file=EVAL\ABMsum{year}.txt
		PRINT list=' Commercial Vehicle Trips           = ',_compm(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Medium Duty Truck Trips            = ',_mtkpm(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Heavy Duty Truck Trips             = ',_htkpm(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips                  = ',_sovpm(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV Vehicle Trips                  = ',_hovpm(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL PM VEHICLE TRIPS         = ',_pmvehtot(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='\n',file=EVAL\ABMsum{year}.txt
		PRINT list='EV - TODEV.VTT, COM.TRP,MTK.TRP,HTK.TRP ',file=EVAL\ABMsum{year}.txt
		PRINT list=' Commercial Vehicle Trips           = ',_comev(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Medium Duty Truck Trips            = ',_mtkev(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' Heavy Duty Truck Trips             = ',_htkev(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV Vehicle Trips                  = ',_sovev(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list=' HOV Vehicle Trips                  = ',_hovev(17.0C),file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL EV VEHICLE TRIPS         = ',_evvehtot(17.0C),file=EVAL\ABMsum{year}.txt

		_perpassg=(_sovt+_hovt)/_totveh
		_perpassg_com=_com+_sovt+_hovt/_totveh
		log prefix=mobility, var=_perpassg
		log prefix=mobility, var=_perpassg_com 
	ENDIF
ENDRUN

RUN PGM=NETWORK 
	NETI[1]=total{year}.net           ;Total Daily Loaded Network
	NETI[2]=lod{year}ea_final.net     ;EA Loaded Network
	NETI[3]=lod{year}am_final.net     ;AM Loaded Network
	NETI[4]=lod{year}md_final.net     ;MD Loaded Network
	NETI[5]=lod{year}pm_final.net     ;PM Loaded Network
	NETI[6]=lod{year}ev.net           ;EV Loaded Network

	_vmteasov=_vmteasov+li.2.distance*li.2.v_sovea   ;ea VMT (SOV)    
    _vmteahov=_vmteahov+li.2.distance*li.2.v_hovea   ;ea VMT (HOV)    
    _vmteacom=_vmteacom+li.2.distance*li.2.v_comea   ;ea VMT (COM)    
    _vmteamtk=_vmteamtk+li.2.distance*li.2.v_mtkea   ;ea VMT (MTK)    
    _vmteahtk=_vmteahtk+li.2.distance*li.2.v_htkea   ;ea VMT (HTK)    
    _vmteatrn=_vmteatrn+li.2.distance*(li.2.v_knrea+li.2.v_pnrea)   ;ea VMT (TRN)    
    _vmtea=_vmteasov+_vmteahov+_vmteacom+_vmteamtk+_vmteahtk+_vmteatrn   ;ea VMT     

    _vmtamsov=_vmtamsov+li.3.distance*li.3.v_sovam   ;am VMT (SOV)    
    _vmtamhov=_vmtamhov+li.3.distance*li.3.v_hovam   ;am VMT (HOV)    
    _vmtamcom=_vmtamcom+li.3.distance*li.3.v_comam   ;am VMT (COM)    
    _vmtammtk=_vmtammtk+li.3.distance*li.3.v_mtkam   ;am VMT (MTK)    
    _vmtamhtk=_vmtamhtk+li.3.distance*li.3.v_htkam   ;am VMT (HTK)    
    _vmtamtrn=_vmtamtrn+li.3.distance*(li.3.v_knram+li.3.v_pnram)   ;am VMT (TRN)    
    _vmtam=_vmtamsov+_vmtamhov+_vmtamcom+_vmtammtk+_vmtamhtk+_vmtamtrn   ;am VMT     

    _vmtmdsov=_vmtmdsov+li.4.distance*li.4.v_sovmd   ;md VMT (SOV)    
    _vmtmdhov=_vmtmdhov+li.4.distance*li.4.v_hovmd   ;md VMT (HOV)    
    _vmtmdcom=_vmtmdcom+li.4.distance*li.4.v_commd   ;md VMT (COM)    
    _vmtmdmtk=_vmtmdmtk+li.4.distance*li.4.v_mtkmd   ;md VMT (MTK)    
    _vmtmdhtk=_vmtmdhtk+li.4.distance*li.4.v_htkmd   ;md VMT (HTK)    
    _vmtmdtrn=_vmtmdtrn+li.4.distance*(li.4.v_knrmd+li.4.v_pnrmd)   ;md VMT (TRN)    
    _vmtmd=_vmtmdsov+_vmtmdhov+_vmtmdcom+_vmtmdmtk+_vmtmdhtk+_vmtmdtrn   ;md VMT     

    _vmtpmsov=_vmtpmsov+li.5.distance*li.5.v_sovpm   ;pm VMT (SOV)    
    _vmtpmhov=_vmtpmhov+li.5.distance*li.5.v_hovpm   ;pm VMT (HOV)    
    _vmtpmcom=_vmtpmcom+li.5.distance*li.5.v_compm   ;pm VMT (COM)    
    _vmtpmmtk=_vmtpmmtk+li.5.distance*li.5.v_mtkpm   ;pm VMT (MTK)     
    _vmtpmhtk=_vmtpmhtk+li.5.distance*li.5.v_htkpm   ;pm VMT (HTK)    
    _vmtpmtrn=_vmtpmtrn+li.5.distance*(li.5.v_knrpm+li.5.v_pnrpm)   ;pm VMT (TRN)    
    _vmtpm=_vmtpmsov+_vmtpmhov+_vmtpmcom+_vmtpmmtk+_vmtpmhtk+_vmtpmtrn   ;pm VMT     

    _vmtevsov=_vmtevsov+li.6.distance*li.6.v_sovev   ;ev VMT (SOV)    
    _vmtevhov=_vmtevhov+li.6.distance*li.6.v_hovev   ;ev VMT (HOV)    
    _vmtevcom=_vmtevcom+li.6.distance*li.6.v_comev   ;ev VMT (COM)    
    _vmtevmtk=_vmtevmtk+li.6.distance*li.6.v_mtkev   ;ev VMT (MTK)     
    _vmtevhtk=_vmtevhtk+li.6.distance*li.6.v_htkev   ;ev VMT (HTK)    
    _vmtev=_vmtevsov+_vmtevhov+_vmtevcom+_vmtevmtk+_vmtevhtk   ;ev VMT     

    _vmttotsov=_vmtamsov+_vmtmdsov+_vmtpmsov+_vmtevsov+_vmteasov
    _vmttothov=_vmtamhov+_vmtmdhov+_vmtpmhov+_vmtevhov+_vmteahov
    _vmttotcom=_vmtamcom+_vmtmdcom+_vmtpmcom+_vmtevcom+_vmteacom
    _vmttotmtk=_vmtammtk+_vmtmdmtk+_vmtpmmtk+_vmtevmtk+_vmteamtk 
    _vmttothtk=_vmtamhtk+_vmtmdhtk+_vmtpmhtk+_vmtevhtk+_vmteahtk
    _vmttottrn=_vmtamtrn+_vmtmdtrn+_vmtpmtrn+_vmteatrn
    _vmttot=_vmttotsov+_vmttothov+_vmttotcom+_vmttotmtk+_vmttothtk+_vmttottrn
   
    _vmt=_vmtam+_vmtmd+_vmtpm+_vmtev+_vmtea               ;Total VMT

    _vhtea=_vhtea+(li.1.v_ea*(li.1.time1/60))          ;EA VHT (Free-Flow) 
    _vhtam=_vhtam+(li.1.v_am*(li.1.time1/60))          ;AM VHT (Free-Flow) 
    _vhtmd=_vhtmd+(li.1.v_md*(li.1.time1/60))          ;MD VHT (Free-Flow)
    _vhtpm=_vhtpm+(li.1.v_pm*(li.1.time1/60))          ;PM VHT (Free-Flow) 
    _vhtev=_vhtev+(li.1.v_ev*(li.1.time1/60))          ;EV VHT (Free-Flow)
    _vht=_vht+(li.1.v_totday*(li.1.time1/60))          ;Total VHT (Free-Flow)
    _cvhtea=_cvhtea+(li.1.v_ea*(li.2.time_1/60))       ;AM VHT (Congested)
    _cvhtam=_cvhtam+(li.1.v_am*(li.3.time_1/60))       ;AM VHT (Congested) 
    _cvhtmd=_cvhtmd+(li.1.v_md*(li.4.time_1/60))       ;MD VHT (Congested)
    _cvhtpm=_cvhtpm+(li.1.v_pm*(li.5.time_1/60))       ;PM VHT (Congested)
    _cvhtev=_cvhtev+(li.1.v_ev*(li.6.time_1/60))       ;EV VHT (Congested)
    _cvht=_cvhtea+_cvhtam+_cvhtmd+_cvhtpm+_cvhtev      ;TOTAL VHT (Congested) 
    _eadelay=_cvhtea-_vhtea                               ;EA Delay  
    _amdelay=_cvhtam-_vhtam                               ;AM Delay  
    _mddelay=_cvhtmd-_vhtmd                               ;MD Delay
    _pmdelay=_cvhtpm-_vhtpm                               ;PM Delay 
    _ntdelay=_cvhtnt-_vhtnt                               ;NT Delay
    _delay=_cvht-_vht                                     ;Total Delay
    _ffs=_vmt/_vht                                        ;Average Daily Free-Flow Speed  
	_cons=_vmt/_cvht                                      ;Average Daily Congested Speed 


	;VMT by combined HPMS category using Factype
	IF(Li.1.Factype=0)
		_vmtlocal=_vmtlocal + vmt   ;local HPMS 9,19
	ELSEIF(li.1.Factype=1-9)                      ;freeway and expressway 1,11,12                   
		_vmtfreeway=_vmtfreeway + vmt
	ELSEIF(li.1.Factype=10-13)                     ;arterials 2,6,14,16                   
		_vmtarterial=_vmtarterial + vmt
	ELSEIF(li.1.Factype=14)                     ;collectors 7,8,17
		_vmtcollector=_vmtcollector+ vmt
	ELSE
		_vmtother=_vmtother + vmt
	ENDIF
    
	PHASE=SUMMARY
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='               VEHICLE MILES TRAVELED BY MODE',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' SOV                                = ',_vmttotsov(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' HOV                                = ',_vmttothov(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' COMMERCIAL VEH                     = ',_vmttotcom(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' MEDIUM TRK                         = ',_vmttotmtk(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' HEAVY TRK                          = ',_vmttothtk(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' DRIVE TRANSIT ACCESS               = ',_vmttottrn(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL DAILY VMT                = ',_vmttot(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='           VEHICLE MILES TRAVELED BY TIME PERIOD',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' EA VMT                             = ',_vmtea(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' AM VMT                             = ',_vmtam(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' MD VMT                             = ',_vmtmd(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' PM VMT                             = ',_vmtpm(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' EV VMT                             = ',_vmtev(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL DAILY VMT                = ',_vmt(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='           VEHICLE MILES TRAVELED BY HPMS CLASS ',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' Error in factype                   = ',_vmtother(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' Local                              = ',_vmtlocal(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' Freeway/Expressway/Ramps           = ',_vmtfreeway(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' Arterial                           = ',_vmtarterial(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' Collectors                         = ',_vmtcollector(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL DAILY VMT                = ',_vmt(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='             FREE FLOW VEHICLE HOURS TRAVELED',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' EA VHT                             = ',_vhtea(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' AM VHT                             = ',_vhtam(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' MD VHT                             = ',_vhtmd(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' PM VHT                             = ',_vhtpm(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' EV VHT                             = ',_vhtev(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL DAILY FREE-FLOW VHT      = ',_vht(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='             CONGESTED VEHICLE HOURS TRAVELED',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' EA CONGESTED VHT                   = ',_cvhtea(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' AM CONGESTED VHT                   = ',_cvhtam(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' MD CONGESTED VHT                   = ',_cvhtmd(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' PM CONGESTED VHT                   = ',_cvhtpm(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' EV CONGESTED VHT                   = ',_cvhtev(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='     TOTAL DAILY CONGESTED VHT      = ',_cvht(17.0C),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list='                  AVERAGE HIGHWAY SPEEDS',file=EVAL\ABMsum{year}.txt,append=t
		PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
		PRINT list=' Daily Free-Flow Average Speed      =',_ffs(4.1),file=EVAL\ABMsum{year}.txt,append=t
		PRINT list=' Daily Congested Average Speed      =',_cons(4.1),file=EVAL\ABMsum{year}.txt,append=t

		; Print output to a temporary file
		PRINT list={totzones}/{totzones}(10),_vmt(10),_vht(10),_cvht(10),file=EVAL\ABMsum{year}.tmp
		log var=_vmt                                                                ;
		log var=_cons
	ENDPHASE
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=EVAL\se.tmp,z=1-10,pop=11-20,emp=21-30,hh=31-40           ;Socio-economic Data
	ZDATI[2]=EVAL\ABMsum{year}.tmp,z=1-10,vmt=11-20,vht=21-30,cvht=31-40    ;Assignment Data
	ZONES=1

	vmtcapita=vmt/pop
	vmthh=vmt/hh
	vmtemp=vmt/emp
	vhtcapita=cvht/pop
	vhthh=cvht/hh
	vhtemp=cvht/emp
	delpop=((cvht-vht)*250*@mobility._totocc@)/pop
 
	PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list='                  VEHICLE MILES TRAVELED SUMMARY',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list=' VMT per Capita                     = ',vmtcapita(17.1),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' VMT per Household                  = ',vmthh(17.1),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' VMT per Job                        = ',vmtemp(17.1),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list='                  VEHICLE HOURS TRAVELED SUMMARY',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list=' VHT per Capita                     = ',vhtcapita(17.1),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' VHT per Household                  = ',vhthh(17.1),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' VHT per Job                        = ',vhtemp(17.1),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list='                  MOBILITY SUMMARY',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list=' Annual Delay Per Person            = ',delpop(17.1),file=EVAL\ABMsum{year}.txt,append=t
ENDRUN

;process transit skims for avg travel time calculations
LOOP N=1,2
	IF(N=1) PER='EA'
	IF(N=2) PER='AM'

	RUN PGM=MATRIX
	MATI[1]=WLK_ALLTRN_WLK_@PER@.SKM
	MATI[2]=WLK_PRMTRN_WLK_@PER@.SKM
	MATI[3]=PNR_ALLTRN_WLK_@PER@.SKM
	MATI[4]=PNR_PRMTRN_WLK_@PER@.SKM
	MATI[5]=KNR_ALLTRN_WLK_@PER@.SKM
	MATI[6]=KNR_PRMTRN_WLK_@PER@.SKM
	MATO[1]=EVAL\TRNTIME_@PER@.SKM,MO=11-20,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	MATO[2]=EVAL\TRNDIST_@PER@.SKM,MO=21-30,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	ZONEMSG=100

	MW[11]=MI.1.WALK+MI.1.IWAIT+MI.1.XWAIT+MI.1.IVT
	MW[12]=MI.2.WALK+MI.2.IWAIT+MI.2.XWAIT+MI.2.IVT
	MW[13]=MI.3.WALK+MI.3.IWAIT+MI.3.XWAIT+MI.3.IVT
	MW[14]=0
	MW[15]=MI.4.WALK+MI.4.IWAIT+MI.4.XWAIT+MI.4.IVT
	MW[16]=0
	MW[17]=MI.5.WALK+MI.5.IWAIT+MI.5.XWAIT+MI.5.IVT
	MW[18]=0
	MW[19]=MI.6.WALK+MI.6.IWAIT+MI.6.XWAIT+MI.6.IVT
	MW[20]=0

	MW[21]=MI.1.DIST
	MW[22]=MI.2.DIST
	MW[23]=MI.3.DIST
	MW[24]=0
	MW[25]=MI.4.DIST
	MW[26]=0
	MW[27]=MI.5.DIST
	MW[28]=0
	MW[29]=MI.6.DIST
	MW[30]=0
	ENDRUN
ENDLOOP

RUN PGM=MATRIX
	MATI[1]=WLK_ALLTRN_WLK_MD.SKM
	MATI[2]=WLK_PRMTRN_WLK_MD.SKM
	MATI[3]=PNR_ALLTRN_WLK_MD.SKM
	MATI[4]=WLK_ALLTRN_PNR_MD.SKM
	MATI[5]=PNR_PRMTRN_WLK_MD.SKM
	MATI[6]=WLK_PRMTRN_PNR_MD.SKM
	MATI[7]=KNR_ALLTRN_WLK_MD.SKM
	MATI[8]=WLK_ALLTRN_KNR_MD.SKM
	MATI[9]=KNR_PRMTRN_WLK_MD.SKM
	MATI[10]=WLK_PRMTRN_KNR_MD.SKM
	MATO[1]=EVAL\TRNTIME_MD.SKM,MO=11-20,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	MATO[2]=EVAL\TRNDIST_MD.SKM,MO=21-30,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	ZONEMSG=100

	MW[11]=MI.1.WALK+MI.1.IWAIT+MI.1.XWAIT+MI.1.IVT
	MW[12]=MI.2.WALK+MI.2.IWAIT+MI.2.XWAIT+MI.2.IVT
	MW[13]=MI.3.WALK+MI.3.IWAIT+MI.3.XWAIT+MI.3.IVT
	MW[14]=MI.4.WALK+MI.4.IWAIT+MI.4.XWAIT+MI.4.IVT
	MW[15]=MI.5.WALK+MI.5.IWAIT+MI.5.XWAIT+MI.5.IVT
	MW[16]=MI.6.WALK+MI.6.IWAIT+MI.6.XWAIT+MI.6.IVT
	MW[17]=MI.7.WALK+MI.7.IWAIT+MI.7.XWAIT+MI.7.IVT
	MW[18]=MI.8.WALK+MI.8.IWAIT+MI.8.XWAIT+MI.8.IVT
	MW[19]=MI.9.WALK+MI.9.IWAIT+MI.9.XWAIT+MI.9.IVT
	MW[20]=MI.10.WALK+MI.10.IWAIT+MI.10.XWAIT+MI.10.IVT

	MW[21]=MI.1.DIST
	MW[22]=MI.2.DIST
	MW[23]=MI.3.DIST
	MW[24]=MI.4.DIST
	MW[25]=MI.5.DIST
	MW[26]=MI.6.DIST
	MW[27]=MI.7.DIST
	MW[28]=MI.8.DIST
	MW[29]=MI.9.DIST
	MW[30]=MI.10.DIST
ENDRUN

RUN PGM=MATRIX
	MATI[1]=WLK_ALLTRN_WLK_PM.SKM
	MATI[2]=WLK_PRMTRN_WLK_PM.SKM
	MATI[3]=WLK_ALLTRN_PNR_PM.SKM
	MATI[4]=WLK_PRMTRN_PNR_PM.SKM
	MATI[5]=WLK_ALLTRN_KNR_PM.SKM
	MATI[6]=WLK_PRMTRN_KNR_PM.SKM
	MATO[1]=EVAL\TRNTIME_PM.SKM,MO=11-20,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	MATO[2]=EVAL\TRNDIST_PM.SKM,MO=21-30,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	ZONEMSG=100

	MW[11]=MI.1.WALK+MI.1.IWAIT+MI.1.XWAIT+MI.1.IVT
	MW[12]=MI.2.WALK+MI.2.IWAIT+MI.2.XWAIT+MI.2.IVT
	MW[13]=0
	MW[14]=MI.3.WALK+MI.3.IWAIT+MI.3.XWAIT+MI.3.IVT
	MW[15]=0
	MW[16]=MI.4.WALK+MI.4.IWAIT+MI.4.XWAIT+MI.4.IVT
	MW[17]=0
	MW[18]=MI.5.WALK+MI.5.IWAIT+MI.5.XWAIT+MI.5.IVT
	MW[19]=0
	MW[20]=MI.6.WALK+MI.6.IWAIT+MI.6.XWAIT+MI.6.IVT

	MW[21]=MI.1.DIST
	MW[22]=MI.2.DIST
	MW[23]=0
	MW[24]=MI.3.DIST
	MW[25]=0
	MW[26]=MI.4.DIST
	MW[27]=0
	MW[28]=MI.5.DIST
	MW[29]=0
	MW[30]=MI.6.DIST
ENDRUN

RUN PGM=MATRIX
	MATI[1]=WLK_ALLTRN_WLK_EV.SKM
	MATI[2]=WLK_PRMTRN_WLK_EV.SKM
	MATO[1]=EVAL\TRNTIME_EV.SKM,MO=11-20,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	MATO[2]=EVAL\TRNDIST_EV.SKM,MO=21-30,NAME=WLKALL,WLKPRM,PNRALL,ALLPNR,PNRPRM,PRMPNR,KNRALL,ALLKNR,KNRPRM,PRMKNR
	ZONEMSG=100
	MW[11]=MI.1.WALK+MI.1.IWAIT+MI.1.XWAIT+MI.1.IVT
	MW[12]=MI.2.WALK+MI.2.IWAIT+MI.2.XWAIT+MI.2.IVT
	MW[13]=0
	MW[14]=0
	MW[15]=0
	MW[16]=0
	MW[17]=0
	MW[18]=0
	MW[19]=0
	MW[20]=0
	MW[21]=MI.1.DIST
	MW[22]=MI.2.DIST
	MW[23]=0
	MW[24]=0
	MW[25]=0
	MW[26]=0
	MW[27]=0
	MW[28]=0
	MW[29]=0
	MW[30]=0
ENDRUN

;loop through 5 time periods (trip tables, highway, and transit skims) for avg travel time/distance calculations
LOOP N=1,5
	IF(N=1) PER='EA'
	IF(N=2) PER='AM'
	IF(N=3) PER='MD'
	IF(N=4) PER='PM'
	IF(N=5) PER='EV'

	RUN PGM=MATRIX
		MATI[1]=TRIPS@PER@.TPP
		MATI[2]=SOV_FREE_@PER@.SKM
		MATI[3]=SOV_TOLL_@PER@.SKM
		MATI[4]=HOV2_FREE_@PER@.SKM
		MATI[5]=HOV2_TOLL_@PER@.SKM
		MATI[6]=HOV3_FREE_@PER@.SKM
		MATI[7]=HOV3_TOLL_@PER@.SKM
		MATI[8]=EVAL\TRNDIST_@PER@.SKM
		MATI[9]=EVAL\TRNTIME_@PER@.SKM
		ZONEMSG=50
		;Read in trip tables
		FILLMW MW[1]=MI.1.1(19)  
		FILLMW MW[101]=MI.1.1(19)  ;fill for row multiplication
		FILLMW MW[201]=MI.1.1(19)  ;fill for row multiplication

		;Read in highway skims (time/distance)
		FILLMW MW[21]=MI.2.2(2)
		FILLMW MW[31]=MI.3.2(2)
		FILLMW MW[41]=MI.4.2(2)
		FILLMW MW[51]=MI.5.2(2)
		FILLMW MW[61]=MI.6.2(2)
		FILLMW MW[71]=MI.7.2(2)
		;Read in transit skims (time/distance)
		FILLMW MW[81]=MI.8.1(10)
		FILLMW MW[91]=MI.9.1(10)

		;Sum trips by mode
		_SOVF = _SOVF + ROWSUM(1)
		_SOVT = _SOVT + ROWSUM(2)
		_SR2F = _SR2F + ROWSUM(3)
		_SR2T = _SR2T + ROWSUM(4)
		_SR3F = _SR3F + ROWSUM(5)
		_SR3T = _SR3T + ROWSUM(6)
		_WLK = _WLK + ROWSUM(9) + ROWSUM(10)
		_PNR = _PNR + ROWSUM(11) + ROWSUM(12) + ROWSUM(13) + ROWSUM(14)
		_KNR = _KNR + ROWSUM(15) + ROWSUM(16) + ROWSUM(17) + ROWSUM(18)

		;Multiply matrices (trips x distance)
		SOVFTD = ROWMPY(101,21)
		SOVTTD = ROWMPY(102,31)
		SR2FTD = ROWMPY(103,41)
		SR2TTD = ROWMPY(104,51)
		SR3FTD = ROWMPY(105,61)
		SR3TTD = ROWMPY(106,71)
		WLKALLD = ROWMPY(109,81)
		WLKPRMD = ROWMPY(110,82)
		PNRALLD = ROWMPY(111,83)
		ALLPNRD = ROWMPY(112,84)
		PNRPRMD = ROWMPY(113,85)
		PRMPNRD = ROWMPY(114,86)
		KNRALLD = ROWMPY(115,87)
		ALLKNRD = ROWMPY(116,88)
		KNRPRMD = ROWMPY(117,89)
		PRMKNRD = ROWMPY(118,90)

		;Multiply matrices (trips x time)
		SOVFTT = ROWMPY(201,22)
		SOVTTT = ROWMPY(202,32)
		SR2FTT = ROWMPY(203,42)
		SR2TTT = ROWMPY(204,52)
		SR3FTT = ROWMPY(205,62)
		SR3TTT = ROWMPY(206,72)
		WLKALLT = ROWMPY(209,91)
		WLKPRMT = ROWMPY(210,92)
		PNRALLT = ROWMPY(211,93)
		ALLPNRT = ROWMPY(212,94)
		PNRPRMT = ROWMPY(213,85)
		PRMPNRT = ROWMPY(214,96)
		KNRALLT = ROWMPY(215,97)
		ALLKNRT = ROWMPY(216,98)
		KNRPRMT = ROWMPY(217,99)
		PRMKNRT = ROWMPY(218,100)

		;Sum trips x distance
		_SOVFTD = _SOVFTD + ROWSUM(101)
		_SOVTTD = _SOVTTD + ROWSUM(102)
		_SR2FTD = _SR2FTD + ROWSUM(103)
		_SR2TTD = _SR2TTD + ROWSUM(104)
		_SR3FTD = _SR3FTD + ROWSUM(105)
		_SR3TTD = _SR3TTD + ROWSUM(106)
		_WLKD = _WLKD + ROWSUM(109) + ROWSUM(110)
		_PNRD = _PNRD + ROWSUM(111) + ROWSUM(112) + ROWSUM(113) + ROWSUM(114)
		_KNRD = _KNRD + ROWSUM(115) + ROWSUM(116) + ROWSUM(117) + ROWSUM(118)
		 
		;Sum trips x time
		_SOVFTT = _SOVFTT + ROWSUM(201)
		_SOVTTT = _SOVTTT + ROWSUM(202)
		_SR2FTT = _SR2FTT + ROWSUM(203)
		_SR2TTT = _SR2TTT + ROWSUM(204)
		_SR3FTT = _SR3FTT + ROWSUM(205)
		_SR3TTT = _SR3TTT + ROWSUM(206)
		_WLKT = _WLKT + ROWSUM(209) + ROWSUM(210)
		_PNRT = _PNRT + ROWSUM(211) + ROWSUM(212) + ROWSUM(213) + ROWSUM(214)
		_KNRT = _KNRT + ROWSUM(215) + ROWSUM(216) + ROWSUM(217) + ROWSUM(218)

		;set temporary values to zero for printing and avoid divide by zero error
		IF(I=1) 
			SOVFD = 0
			SOVTD = 0
			SR2FD = 0
			SR2TD = 0
			SR3FD = 0
			SR3TD = 0
			WLKD = 0
			PNRD = 0
			KNRD = 0
			SOVFT = 0
			SOVTT = 0
			SR2FT = 0
			SR2TT = 0
			SR3FT = 0
			SR3TT = 0
			WLKT = 0
			PNRT = 0
			KNRT = 0
		ENDIF 

		IF(I={lastin})
			;avg distance by mode
			IF(_SOVF>0) SOVFD = _SOVFTD / _SOVF
			IF(_SOVT>0)  SOVTD = _SOVTTD / _SOVT
			IF(_SR2F>0)  SR2FD = _SR2FTD / _SR2F
			IF(_SR2T>0)  SR2TD = _SR2TTD / _SR2T
			IF(_SR3F>0)  SR3FD = _SR3FTD / _SR3F
			IF(_SR3T>0)  SR3TD = _SR3TTD / _SR3T
			IF(_WLK>0)  WLKD = _WLKD / _WLK
			IF(_PNR>0)  PNRD = _PNRD / _PNR
			IF(_KNR>0)  KNRD = _KNRD / _KNR
			;avg time by mode
			IF(_SOVF>0)  SOVFT = _SOVFTT / _SOVF
			IF(_SOVT>0)  SOVTT = _SOVTTT / _SOVT
			IF(_SR2F>0)  SR2FT = _SR2FTT / _SR2F
			IF(_SR2T>0)  SR2TT = _SR2TTT / _SR2T
			IF(_SR3F>0)  SR3FT = _SR3FTT / _SR3F
			IF(_SR3T>0)  SR3TT = _SR3TTT / _SR3T
			IF(_WLK>0)  WLKT = _WLKT / _WLK
			IF(_PNR>0)  PNRT = _PNRT / _PNR
			IF(_KNR>0)  KNRT = _KNRT / _KNR

			PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
			PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
			PRINT list='     AVERAGE TRAVEL TIME PER TRIP BY MODE ',file=EVAL\ABMsum{year}.txt,append=t
			PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
			PRINT list=' @PER@ - DRIVE ALONE FREE                = ',SOVFT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - DRIVE ALONE TOLL ELIGIBLE       = ',SOVTT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV2 FREE                       = ',SR2FT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV2 TOLL ELIGIBLE              = ',SR2TT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV3+ FREE                      = ',SR3FT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV3+ TOLL ELIGIBLE             = ',SR3TT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - WALK TRANSIT                    = ',WLKT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - KNR TRANSIT                     = ',KNRT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - PNR TRANSIT                     = ',PNRT(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
			PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
			PRINT list='     AVERAGE TRAVEL DISTANCE PER TRIP BY MODE   ',file=EVAL\ABMsum{year}.txt,append=t
			PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
			PRINT list=' @PER@ - DRIVE ALONE FREE                = ',SOVFD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - DRIVE ALONE TOLL ELIGIBLE       = ',SOVTD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV2 FREE                       = ',SR2FD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV2 TOLL ELIGIBLE              = ',SR2TD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV3+ FREE                      = ',SR3FD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - HOV3+ TOLL ELIGIBLE             = ',SR3TD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - WALK TRANSIT                    = ',WLKD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - KNR TRANSIT                     = ',KNRD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
			PRINT list=' @PER@ - PNR TRANSIT                     = ',PNRD(17.1C),file=EVAL\ABMsum{year}.txt,append=t
		ENDIF
	ENDRUN
ENDLOOP

RUN PGM=NETWORK
	NETI[1]=total{year}.net           ;Total Daily Loaded Network
	NETI[2]=lod{year}ea_final.net     ;AM Loaded Network
	NETI[3]=lod{year}am_final.net     ;AM Loaded Network
	NETI[4]=lod{year}md_final.net     ;MD Loaded Network
	NETI[5]=lod{year}pm_final.net     ;PM Loaded Network
	NETI[6]=lod{year}ev.net           ;EV Loaded Network

	PHASE=LINKMERGE
		; EA
		_VMTEA=li.2.v_totea*li.2.distance
		_totvmtea=_totvmtea+_vmtea
		_VCEA=li.2.vc_1
		IF(_vcEA=0-0.5)
			_vmtabEA=_vmtabEA+_vmtEA
		ELSEIF(_vcEA=0.5-0.7)
			_vmtcEA=_vmtcEA+_vmtEA
		ELSEIF(_vcEA=0.7-0.84)
			_vmtdEA=_vmtdEA+_vmtEA
		ELSEIF(_vcEA=0.84-1)
			_vmteEA=_vmteEA+_vmtEA
		ELSE
			_vmtfEA=_vmtfEA+_vmtEA
		ENDIF
		; AM
		_VMTAM=li.3.v_totam*li.3.distance
		_totvmtAM=_totvmtAM+_vmtAM
		_VCAM=li.3.vc_1
		IF(_vcAM=0-0.5)
			_vmtabAM=_vmtabAM+_vmtAM
		ELSEIF(_vcAM=0.5-0.7)
			_vmtcAM=_vmtcAM+_vmtAM
		ELSEIF(_vcAM=0.7-0.84)
			_vmtdAM=_vmtdAM+_vmtAM
		ELSEIF(_vcAM=0.84-1)
			_vmteAM=_vmteAM+_vmtAM
		ELSE
			_vmtfAM=_vmtfAM+_vmtAM
		ENDIF
		; MD
		_VMTMD=li.4.v_totMD*li.4.distance
		_totvmtMD=_totvmtMD+_vmtMD
		_VCMD=li.4.vc_1
		IF(_vcMD=0-0.5)
			_vmtabMD=_vmtabMD+_vmtMD
		ELSEIF(_vcMD=0.5-0.7)
			_vmtcMD=_vmtcMD+_vmtMD
		ELSEIF(_vcMD=0.7-0.84)
			_vmtdMD=_vmtdMD+_vmtMD
		ELSEIF(_vcMD=0.84-1)
			_vmteMD=_vmteMD+_vmtMD
		ELSE
			_vmtfMD=_vmtfMD+_vmtMD
		ENDIF
		; PM
		_VMTPM=li.5.v_totPM*li.5.distance
		_totvmtPM=_totvmtPM+_vmtPM
		_VCPM=li.5.vc_1
		IF(_vcPM=0-0.5)
			_vmtabPM=_vmtabPM+_vmtPM
		ELSEIF(_vcPM=0.5-0.7)
			_vmtcPM=_vmtcPM+_vmtPM
		ELSEIF(_vcPM=0.7-0.84)
			_vmtdPM=_vmtdPM+_vmtPM
		ELSEIF(_vcPM=0.84-1)
			_vmtePM=_vmtePM+_vmtPM
		ELSE
			_vmtfPM=_vmtfPM+_vmtPM
		ENDIF
		; EV
		_VMTEV=li.6.v_totEV*li.6.distance
		_totvmtEV=_totvmtEV+_vmtEV
		_VCEV=li.6.vc_1
		IF(_vcEV=0-0.5)
			_vmtabEV=_vmtabEV+_vmtEV
		ELSEIF(_vcEV=0.5-0.7)
			_vmtcEV=_vmtcEV+_vmtEV
		ELSEIF(_vcEV=0.7-0.84)
			_vmtdEV=_vmtdEV+_vmtEV
		ELSEIF(_vcEV=0.84-1)
			_vmteEV=_vmteEV+_vmtEV
		ELSE
			_vmtfEV=_vmtfEV+_vmtEV
		ENDIF
	ENDPHASE

	PHASE=SUMMARY
		IF(_totvmtEA+_totvmtAM+_totvmtMD+_totvmtPM+_totvmtEV>0)
			_pctab24=(_vmtabEA+_vmtabAM+_vmtabMD+_vmtabPM+_vmtabEV)/(_totvmtEA+_totvmtAM+_totvmtMD+_totvmtPM+_totvmtEV)
			_pctc24=(_vmtcEA+_vmtcAM+_vmtcMD+_vmtcPM+_vmtcNT)/(_totvmtEA+_totvmtAM+_totvmtMD+_totvmtPM+_totvmtEV)
			_pctd24=(_vmtdEA+_vmtdAM+_vmtdMD+_vmtdPM+_vmtdNT)/(_totvmtEA+_totvmtAM+_totvmtMD+_totvmtPM+_totvmtEV)
			_pcte24=(_vmteEA+_vmteAM+_vmteMD+_vmtePM+_vmteNT)/(_totvmtEA+_totvmtAM+_totvmtMD+_totvmtPM+_totvmtEV)
			_pctf24=(_vmtfEA+_vmtfAM+_vmtfMD+_vmtfPM+_vmtfNT)/(_totvmtEA+_totvmtAM+_totvmtMD+_totvmtPM+_totvmtEV)
		ELSE
			_pctab24=0
			_pctc24=0
			_pctd24=0
			_pcte24=0
			_pctf24=0
		ENDIF

		IF(_totvmtEA>0)
			_pctabEA=_vmtabEA/_totvmtEA
			_pctcEA=_vmtcEA/_totvmtEA
			_pctdEA=_vmtdEA/_totvmtEA
			_pcteEA=_vmteEA/_totvmtEA
			_pctfEA=_vmtfEA/_totvmtEA
		ELSE
			_pctabEA=0
			_pctcEA=0
			_pctdEA=0
			_pcteEA=0
			_pctfEA=0
		ENDIF

		IF(_totvmtAM>0)
			_pctabAM=_vmtabAM/_totvmtAM
			_pctcAM=_vmtcAM/_totvmtAM
			_pctdAM=_vmtdAM/_totvmtAM
			_pcteAM=_vmteAM/_totvmtAM
			_pctfAM=_vmtfAM/_totvmtAM
		ELSE
			_pctabAM=0
			_pctcAM=0
			_pctdAM=0
			_pcteAM=0
			_pctfAM=0
		ENDIF

		IF(_totvmtMD>0)
			_pctabMD=_vmtabMD/_totvmtMD
			_pctcMD=_vmtcMD/_totvmtMD
			_pctdMD=_vmtdMD/_totvmtMD
			_pcteMD=_vmteMD/_totvmtMD
			_pctfMD=_vmtfMD/_totvmtMD
		ELSE
			_pctabMD=0
			_pctcMD=0
			_pctdMD=0
			_pcteMD=0
			_pctfMD=0
		ENDIF

		IF(_totvmtPM>0)
			_pctabPM=_vmtabPM/_totvmtPM
			_pctcPM=_vmtcPM/_totvmtPM
			_pctdPM=_vmtdPM/_totvmtPM
			_pctePM=_vmtePM/_totvmtPM
			_pctfPM=_vmtfPM/_totvmtPM
		ELSE
			_pctabPM=0
			_pctcPM=0
			_pctdPM=0
			_pctePM=0
			_pctfPM=0
		ENDIF

		IF(_totvmtEV>0)
			_pctabEV=_vmtabEV/_totvmtEV
			_pctcEV=_vmtcEV/_totvmtEV
			_pctdEV=_vmtdEV/_totvmtEV
			_pcteEV=_vmteEV/_totvmtEV
			_pctfEV=_vmtfEV/_totvmtEV
		ELSE
			_pctabEV=0
			_pctcEV=0
			_pctdEV=0
			_pcteEV=0
			_pctfEV=0
		ENDIF
	ENDPHASE
ENDRUN

RUN PGM=NETWORK
	NETI[1]=total{year}.net     ;Total Daily Loaded Network

	IF(li.1.factype=1-9)
		_vmtfwy=_vmtfwy+(li.1.distance*li.1.v_totday)
		_lanemifwy=_lanemifwy+(li.1.distance*li.1.lanes)
	ELSEIF(li.1.factype=10-14)
		_vmtart=_vmtart+(li.1.distance*li.1.v_totday)
		_lanemiart=_lanemiart+(li.1.distance*li.1.lanes)
	ENDIF

	log prefix=mobility, var=_vmtfwy
	log prefix=mobility, var=_vmtart
	log prefix=mobility, var=_lanemifwy
	log prefix=mobility, var=_lanemiart
ENDRUN

RUN PGM=MATRIX
	ZDATI[1]=EVAL\se.tmp,z=1-10,pop=11-20,emp=21-30,hh=31-40           ;Socio-economic Data
	ZDATI[2]=EVAL\ABMsum{year}.tmp,z=1-10,vmt=11-20,vht=21-30,cvht=31-40    ;Assignment Data
	ZONES=1

	delay=cvht-vht
	delpop=(delay*{days}*@mobility._totocc@)/pop
	timepop=cvht/pop
	cost=delay*{pcvot}*@mobility._totocc@*{days}
	cost_p=(delay*@mobility._perpassg@)*{pcvot}*@mobility._totocc@*{days}  ; 6/29/07
	costpop=cost/pop

	fwyvmt_lm=@mobility._vmtfwy@/@mobility._lanemifwy@
	artvmt_lm=@mobility._vmtart@/@mobility._lanemiart@

	cong_index_num=(fwyvmt_lm*@mobility._vmtfwy@)+(artvmt_lm*@mobility._vmtart@)
	cong_index_den=(14000*@mobility._vmtfwy@)+(5500*@mobility._vmtart@)
	cong_index=cong_index_num/cong_index_den

	Passg_veh_fuel=((delay*@mobility._perpassg@*@network._cons@)/{passg_fuel})*{pcfuel_cost}*{days}
	Truck_veh_fuel=((delay*@mobility._perpassg@*@network._cons@)/{trk_fuel})*{tkfuel_cost}*{days}

	perveh=1.00-@mobility._perpassg@                    ;Percent Commercial Vehicles
	Comm_cost=delay*perveh*{tkvot}*{days}
	total_cong_cost=passg_veh_fuel+comm_cost+cost_p+truck_veh_fuel
	tcostper=total_cong_cost/pop

	PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list='                  MOBILITY SUMMARY',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='---------------------------------------------------------------------------------',file=EVAL\ABMsum{year}.txt
	PRINT list='Individual Measures',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Daily Travel Time (Hrs) Per Person = ',timepop(17.2),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Annual Delay (Hours) Per Person    = ',delpop(17.2),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Annual Congestion Cost Per Person  = ',' $',costpop(16.0C),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='Total Measures',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Total Daily Travel Time (Hours)    = ',cvht(17.0C),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Total Daily Delay Hours            = ',delay(17.0C),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Regional Congestion Index          = ',cong_index(17.3),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='\n',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Passenger Vehicle Delay Cost       = ',' $',cost_p(16.0C),file=EVAL\ABMsum{year}.txt,append=t   ; 6/29/07
	PRINT list=' Passenger Vehicle Fuel Cost        = ',' $',passg_veh_fuel(16.0C),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Commercial Vehicle Delay Cost      = ',' $',comm_cost(16.0C),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Commercial Vehicle Fuel Cost       = ',' $',truck_veh_fuel(16.0C),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Total Annual Congestion Cost       = ',' $',total_cong_cost(16.0C),file=EVAL\ABMsum{year}.txt,append=t
	PRINT list='   (based on passenger & commercial vehicle travel,wages & fuel cost)',file=EVAL\ABMsum{year}.txt,append=t
	PRINT list=' Total Cost per Person              = ',' $',tcostper(16.0C),file=EVAL\ABMsum{year}.txt,append=t
ENDRUN

;LOG MAX STATION RENUMBER ID
RUN PGM=MATRIX
	RECI=PARAMETERS\MARTA_STATION_LOOKUP_{year}.DBF,SORT=NEWID

	IF(RECI.RECNO=RECI.NUMRECORDS)
		MAXSTA=RI.NEWID
	ENDIF
	
	LOG VAR=MAXSTA
ENDRUN

LOOP N=1,33
	IF(N=1)  FILE='WLK_ALLTRN_WLK_S2S_EA'
	IF(N=2)  FILE='WLK_PRMTRN_WLK_S2S_EA'
	IF(N=3)  FILE='KNR_ALLTRN_WLK_S2S_EA'
	IF(N=4)  FILE='KNR_PRMTRN_WLK_S2S_EA'
	IF(N=5)  FILE='PNR_ALLTRN_WLK_S2S_EA'
	IF(N=6)  FILE='PNR_PRMTRN_WLK_S2S_EA'
	IF(N=7)  FILE='WLK_ALLTRN_WLK_S2S_AM'
	IF(N=8)  FILE='WLK_PRMTRN_WLK_S2S_AM'
	IF(N=9)  FILE='KNR_ALLTRN_WLK_S2S_AM'
	IF(N=10) FILE='KNR_PRMTRN_WLK_S2S_AM'
	IF(N=11) FILE='PNR_ALLTRN_WLK_S2S_AM'
	IF(N=12) FILE='PNR_PRMTRN_WLK_S2S_AM'
	IF(N=13) FILE='WLK_ALLTRN_WLK_S2S_MD'
	IF(N=14) FILE='WLK_PRMTRN_WLK_S2S_MD'
	IF(N=15) FILE='KNR_ALLTRN_WLK_S2S_MD'
	IF(N=16) FILE='KNR_PRMTRN_WLK_S2S_MD'
	IF(N=17) FILE='PNR_ALLTRN_WLK_S2S_MD'
	IF(N=18) FILE='PNR_PRMTRN_WLK_S2S_MD'
	IF(N=19) FILE='WLK_ALLTRN_KNR_S2S_MD'
	IF(N=20) FILE='WLK_PRMTRN_KNR_S2S_MD'
	IF(N=21) FILE='WLK_ALLTRN_PNR_S2S_MD'
	IF(N=22) FILE='WLK_PRMTRN_PNR_S2S_MD'
	IF(N=23) FILE='WLK_ALLTRN_WLK_S2S_PM'
	IF(N=24) FILE='WLK_PRMTRN_WLK_S2S_PM'
	IF(N=25) FILE='WLK_ALLTRN_KNR_S2S_PM'
	IF(N=26) FILE='WLK_PRMTRN_KNR_S2S_PM'
	IF(N=27) FILE='WLK_ALLTRN_PNR_S2S_PM'
	IF(N=28) FILE='WLK_PRMTRN_PNR_S2S_PM'
	IF(N=29) FILE='WLK_ALLTRN_WLK_S2S_EV'
	IF(N=30) FILE='WLK_PRMTRN_WLK_S2S_EV'
	IF(N=31) FILE='WLK_PRMTRN_WLK_S2S_AIRPASS'
	IF(N=32) FILE='KNR_PRMTRN_WLK_S2S_AIRPASS'
	IF(N=33) FILE='PNR_PRMTRN_WLK_S2S_AIRPASS'

	;Renumber station nodes for matrix
	RUN PGM=MATRIX
		RECI="@FILE@.DBF";,SORT=FROMNODE,TONODE
		LOOKUPI[1]=PARAMETERS\MARTA_STATION_LOOKUP_{year}.DBF
		RECO="EVAL\@FILE@_RENUM.DBF",FIELDS=A,B,TRIPS

		ZONES=1

		LOOKUP LOOKUPI=1,
			NAME=STATION,
			LOOKUP[1]=NODE, RESULT=NEWID,
			FAIL[1]=0,FAIL[2]=0,FAIL[3]=0
			 
		A = STATION(1,RI.FROMNODE)
		B = STATION(1,RI.TONODE)
		TRIPS = RI.VOL
		WRITE RECO=1
	ENDRUN

	RUN PGM=MATRIX
		RECI="EVAL\@FILE@_RENUM.DBF",SORT=A,B
		RECO="EVAL\@FILE@_RENUM_SORT.DBF",FIELDS=A,B,TRIPS

		RO.A=RI.A
		RO.B=RI.B
		RO.TRIPS=RI.TRIPS
		WRITE RECO=1
	ENDRUN
ENDLOOP

;CREATE EA MATRIX
RUN PGM=MATRIX
	MATI[1]=EVAL\WLK_ALLTRN_WLK_S2S_EA_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[2]=EVAL\WLK_PRMTRN_WLK_S2S_EA_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[3]=EVAL\KNR_ALLTRN_WLK_S2S_EA_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[4]=EVAL\KNR_PRMTRN_WLK_S2S_EA_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[5]=EVAL\PNR_ALLTRN_WLK_S2S_EA_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[6]=EVAL\PNR_PRMTRN_WLK_S2S_EA_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATO[1]=EVAL\MARTA_S2S_EA.MTX,MO=1-10,NAME=WLKALL,WLKPRM,KNRALL,KNRPRM,PNRALL,PNRPRM,WLK,KNR,PNR,TOT
	ZONES=@MATRIX.MAXSTA@

	MW[1]=MI.1.1  ;WLK ALLTRN
	MW[2]=MI.2.1  ;WLK PRMTRN
	MW[3]=MI.3.1  ;KNR ALLTRN
	MW[4]=MI.4.1  ;KNR PRMTRN
	MW[5]=MI.5.1  ;PNR ALLTRN
	MW[6]=MI.6.1  ;PNR PRMTRN
	MW[7]=MW[1]+MW[2]  ;WLK
	MW[8]=MW[3]+MW[4]  ;KNR
	MW[9]=MW[5]+MW[6]  ;PNR
	MW[10]=MW[1]+MW[2]+MW[3]+MW[4]+MW[5]+MW[6]  ;TOTAL
ENDRUN

;CREATE AM MATRIX
RUN PGM=MATRIX
	MATI[1]=EVAL\WLK_ALLTRN_WLK_S2S_AM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[2]=EVAL\WLK_PRMTRN_WLK_S2S_AM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[3]=EVAL\KNR_ALLTRN_WLK_S2S_AM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[4]=EVAL\KNR_PRMTRN_WLK_S2S_AM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[5]=EVAL\PNR_ALLTRN_WLK_S2S_AM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[6]=EVAL\PNR_PRMTRN_WLK_S2S_AM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATO[1]=EVAL\MARTA_S2S_AM.MTX,MO=1-10,NAME=WLKALL,WLKPRM,KNRALL,KNRPRM,PNRALL,PNRPRM,WLK,KNR,PNR,TOT
	ZONES=@MATRIX.MAXSTA@

	MW[1]=MI.1.1  ;WLK ALLTRN
	MW[2]=MI.2.1  ;WLK PRMTRN
	MW[3]=MI.3.1  ;KNR ALLTRN
	MW[4]=MI.4.1  ;KNR PRMTRN
	MW[5]=MI.5.1  ;PNR ALLTRN
	MW[6]=MI.6.1  ;PNR PRMTRN
	MW[7]=MW[1]+MW[2]  ;WLK
	MW[8]=MW[3]+MW[4]  ;KNR
	MW[9]=MW[5]+MW[6]  ;PNR
	MW[10]=MW[1]+MW[2]+MW[3]+MW[4]+MW[5]+MW[6]  ;TOTAL
ENDRUN

;CREATE MD MATRIX
RUN PGM=MATRIX
	MATI[1] =EVAL\WLK_ALLTRN_WLK_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[2] =EVAL\WLK_PRMTRN_WLK_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[3] =EVAL\KNR_ALLTRN_WLK_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[4] =EVAL\KNR_PRMTRN_WLK_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[5] =EVAL\PNR_ALLTRN_WLK_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[6] =EVAL\PNR_PRMTRN_WLK_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[7] =EVAL\WLK_ALLTRN_KNR_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[8] =EVAL\WLK_PRMTRN_KNR_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[9] =EVAL\WLK_ALLTRN_PNR_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[10]=EVAL\WLK_PRMTRN_PNR_S2S_MD_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATO[1]=EVAL\MARTA_S2S_MD.MTX,MO=1-14,NAME=WLKALL,WLKPRM,KNRALL,KNRPRM,PNRALL,PNRPRM,WLKALLKNR,WLKPRMKNR,WLKALLPNR,WLKPRMPNR,WLK,KNR,PNR,TOT
	ZONES=@MATRIX.MAXSTA@

	MW[1] =MI.1.1   ;WLK ALLTRN
	MW[2] =MI.2.1   ;WLK PRMTRN
	MW[3] =MI.3.1   ;KNR ALLTRN
	MW[4] =MI.4.1   ;KNR PRMTRN
	MW[5] =MI.5.1   ;PNR ALLTRN
	MW[6] =MI.6.1   ;PNR PRMTRN
	MW[7] =MI.7.1   ;KNR ALLTRN
	MW[8] =MI.8.1   ;KNR PRMTRN
	MW[9] =MI.9.1   ;PNR ALLTRN
	MW[10]=MI.10.1  ;PNR PRMTRN
	MW[11]=MW[1]+MW[2]               ;WLK
	MW[12]=MW[3]+MW[4]+MW[7]+MW[8]   ;KNR
	MW[13]=MW[5]+MW[6]+MW[9]+MW[10]  ;PNR
	MW[14]=MW[11]+MW[12]+MW[13]      ;TOTAL
ENDRUN

;CREATE PM MATRIX
RUN PGM=MATRIX
	MATI[1]=EVAL\WLK_ALLTRN_WLK_S2S_PM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[2]=EVAL\WLK_PRMTRN_WLK_S2S_PM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[3]=EVAL\WLK_ALLTRN_KNR_S2S_PM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[4]=EVAL\WLK_PRMTRN_KNR_S2S_PM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[5]=EVAL\WLK_ALLTRN_PNR_S2S_PM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[6]=EVAL\WLK_PRMTRN_PNR_S2S_PM_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATO[1]=EVAL\MARTA_S2S_PM.MTX,MO=1-10,NAME=WLKALL,WLKPRM,KNRALL,KNRPRM,PNRALL,PNRPRM,WLK,KNR,PNR,TOT
	ZONES=@MATRIX.MAXSTA@

	MW[1]=MI.1.1  ;WLK ALLTRN
	MW[2]=MI.2.1  ;WLK PRMTRN
	MW[3]=MI.3.1  ;KNR ALLTRN
	MW[4]=MI.4.1  ;KNR PRMTRN
	MW[5]=MI.5.1  ;PNR ALLTRN
	MW[6]=MI.6.1  ;PNR PRMTRN
	MW[7]=MW[1]+MW[2]  ;WLK
	MW[8]=MW[3]+MW[4]  ;KNR
	MW[9]=MW[5]+MW[6]  ;PNR
	MW[10]=MW[1]+MW[2]+MW[3]+MW[4]+MW[5]+MW[6]  ;TOTAL
ENDRUN

;CREATE EV MATRIX
RUN PGM=MATRIX
	MATI[1]=EVAL\WLK_ALLTRN_WLK_S2S_EV_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[2]=EVAL\WLK_PRMTRN_WLK_S2S_EV_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATO[1]=EVAL\MARTA_S2S_EV.MTX,MO=1-3,NAME=WLKALL,WLKPRM,TOT
	ZONES=@MATRIX.MAXSTA@

	MW[1]=MI.1.1  ;WLK ALLTRN
	MW[2]=MI.2.1  ;WLK PRMTRN
	MW[3]=MW[1]+MW[2]  ;TOTAL
ENDRUN

;CREATE AP MATRIX
RUN PGM=MATRIX
	MATI[1]=EVAL\WLK_PRMTRN_WLK_S2S_AirPass_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[2]=EVAL\KNR_PRMTRN_WLK_S2S_AirPass_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATI[3]=EVAL\PNR_PRMTRN_WLK_S2S_AirPass_RENUM_SORT.DBF,PATTERN=IJ:V,FIELDS=A,B,TRIPS
	MATO[1]=EVAL\MARTA_S2S_AP.MTX,MO=1-4,NAME=WLK,KNR,PNR,TOT
	ZONES=@MATRIX.MAXSTA@

	MW[1]=MI.1.1  ;WLK PRMTRN
	MW[2]=MI.2.1  ;KNR PRMTRN
	MW[3]=MI.3.1  ;PNR PRMTRN
	MW[4]=MW[1]+MW[2]+MW[3]  ;TOTAL
ENDRUN

;CREATE TOTAL MATRIX
RUN PGM=MATRIX
	MATI[1]=EVAL\MARTA_S2S_EA.MTX
	MATI[2]=EVAL\MARTA_S2S_AM.MTX
	MATI[3]=EVAL\MARTA_S2S_MD.MTX
	MATI[4]=EVAL\MARTA_S2S_PM.MTX
	MATI[5]=EVAL\MARTA_S2S_EV.MTX
	MATI[6]=EVAL\MARTA_S2S_AP.MTX
	MATO[1]=EVAL\MARTA_S2S_TOTAL.MTX,MO=1-4,NAME=WLK,KNR,PNR,TOT

	MW[1]=MI.1.WLK+MI.2.WLK+MI.3.WLK+MI.4.WLK+MI.5.TOT+MI.6.WLK
	MW[2]=MI.1.KNR+MI.2.KNR+MI.3.KNR+MI.4.KNR+MI.6.KNR
	MW[3]=MI.1.PNR+MI.2.PNR+MI.3.PNR+MI.4.PNR+MI.6.PNR
	MW[4]=MW[1]+MW[2]+MW[3]
ENDRUN

:EndModSum
IF({chkMeasures.n}=0) goto :EndModel

;Performance Measures
; set up files for summary (can test on a sample if desired)
hshld_data = 'hhData.csv'
person_data = 'personData.csv'
trip_data = 'tripData.csv'
tour_data='indivTourData.csv'
jointTrip_data='JointTripData.csv'
jointTour_data='JointTourData.csv'

;distribute steps to build person data and household data files
DistributeMultistep ProcessID="{ProcID}",ProcessNum=1
;---------------------------------------------
;CREATE PERSON DATA FILE
RUN PGM=MATRIX
RECI=@person_data@,DELIMITER=',' HHID=1,PERID=2,PERNO=3,TYPE(C)=6
RECO[1]=PersonData.DBF,FIELDS=HHID,PERID,PERNO,PERTYPE

IF(RECI.RECNO>1)
 _cnt = _cnt + 1
 RO.HHID=RI.HHID
 RO.PERID=RI.PERID
 RO.PERNO=RI.PERNO
 IF(RI.TYPE='full-time worker')
  RO.PERTYPE=1
 ELSEIF(RI.TYPE='part-time worker')
  RO.PERTYPE=2
 ELSEIF(RI.TYPE='University student')
  RO.PERTYPE=3
 ELSEIF(RI.TYPE='non-worker')
  RO.PERTYPE=4
 ELSEIF(RI.TYPE='retired')
  RO.PERTYPE=5
 ELSEIF(RI.TYPE='student of driving age')
  RO.PERTYPE=6
 ELSEIF(RI.TYPE='student of non-driving age')
  RO.PERTYPE=7
 ELSEIF(RI.TYPE='child too young for school')
  RO.PERTYPE=8 
 ENDIF
 WRITE RECO=1
ENDIF
ENDRUN
EndDistributeMULTISTEP
DistributeMultistep ProcessID="{ProcID}",ProcessNum=2
;---------------------------------------------
;CREATE HOUSEHOLD DATA FILE
RUN PGM=MATRIX
RECI=@hshld_data@,DELIMITER=',' HHID=1,TAZ=2,INCOME=4,SIZE=7,WORKERS=8
RECO[1]=hhData.DBF,FIELDS=RECI.ALLFIELDS

IF(RECI.RECNO>1) WRITE RECO=1

ENDRUN
EndDistributeMULTISTEP

Wait4Files Files={PROCID}1.script.end,{PROCID}2.script.end

;=======================================================
;distribute the next three steps together to save run time
; 1) merging person and household file
; 2) set up household types
; 3) process final trip list

DistributeMultistep ProcessID="{ProcID}",ProcessNum=16
;---------------------------------------------
;PROCESS HOUSEHOLDS AND PERSONS TO GET DATA FOR HOUSEHOLD TYPE CLASSIFICATION
RUN PGM=MATRIX
DBI[1]=hhData.DBF,SORT=HHID
DBI[2]=personData.DBF,SORT=HHID
RECO=hhData_PerComp.DBF,FIELDS=HHID,SIZE,WORKERS,FULL,PART,UNIV,NONWRK,RETIRED,DRVCHILD,NDRCHILD,YNGCHILD
ZONES=1


LOOP HH=1,DBI.1.NUMRECORDS  ;loop through all household records
 x = DBIReadRecord(1,HH)          ;read each individual household
  RO.HHID=DI.1.HHID
  RO.SIZE=DI.1.SIZE
  RO.WORKERS=DI.1.WORKERS
  RO.FULL=0
  RO.PART=0
  RO.UNIV=0
  RO.NONWRK=0
  RO.RETIRED=0
  RO.DRVCHILD=0
  RO.NDRCHILD=0
  RO.YNGCHILD=0
 y = DBISeek(2,RO.HHID)   ;find person record of current household ID
  _cnt = 1
  LOOP HHSIZE=1,RO.SIZE    ;loop through person records based on current household size
   IF(_CNT=1)
    IF(DI.2.PERTYPE=1)
     RO.FULL=RO.FULL+1
    ELSEIF(DI.2.PERTYPE=2)
     RO.PART=RO.PART+1
    ELSEIF(DI.2.PERTYPE=3)
     RO.UNIV=RO.UNIV+1
    ELSEIF(DI.2.PERTYPE=4)
     RO.NONWRK=RO.NONWRK+1
    ELSEIF(DI.2.PERTYPE=5)
     RO.RETIRED=RO.RETIRED+1
    ELSEIF(DI.2.PERTYPE=6)
     RO.DRVCHILD=RO.DRVCHILD+1
    ELSEIF(DI.2.PERTYPE=7)
     RO.NDRCHILD=RO.NDRCHILD+1
    ELSEIF(DI.2.PERTYPE=8)
     RO.YNGCHILD=RO.YNGCHILD+1
    ENDIF
   ENDIF
   IF(DBI.2.RECNO<DBI.2.NUMRECORDS) ;check on last record
    w = DBIReadNext(2,1)            ;read next record and accumulate person types for each household
     _CNT = _CNT + 1
    IF(RO.HHID=DI.2.HHID)
    IF(DI.2.PERTYPE=1)
     RO.FULL=RO.FULL+1
    ELSEIF(DI.2.PERTYPE=2)
     RO.PART=RO.PART+1
    ELSEIF(DI.2.PERTYPE=3)
     RO.UNIV=RO.UNIV+1
    ELSEIF(DI.2.PERTYPE=4)
     RO.NONWRK=RO.NONWRK+1
    ELSEIF(DI.2.PERTYPE=5)
     RO.RETIRED=RO.RETIRED+1
    ELSEIF(DI.2.PERTYPE=6)
     RO.DRVCHILD=RO.DRVCHILD+1
    ELSEIF(DI.2.PERTYPE=7)
     RO.NDRCHILD=RO.NDRCHILD+1
    ELSEIF(DI.2.PERTYPE=8)
     RO.YNGCHILD=RO.YNGCHILD+1
    ENDIF
    ENDIF
   ENDIF
  ENDLOOP ;end household size loop
  WRITE RECO=1
ENDLOOP   ;end hh record loop
ENDRUN
;---------------------------------------------
;DETERMINE HOUSEHOLD TYPES
RUN PGM=MATRIX
RECI=hhData_PerComp.DBF
RECO=HouseholdTypes.DBF,FIELDS=HHID,SIZE,WORKERS,FULL,PART,UNIV,NONWRK,RETIRED,DRVCHILD,NDRCHILD,YNGCHILD,TYPE

;types
;  1 - single
;  2 - single income w/ kids
;  3 - single income w/out kids
;  4 - double income w/ kids
;  5 - double income w/out kids
;  6 - retired
;  7 - multi person non-worker

RO.HHID=RI.HHID
RO.SIZE=RI.SIZE
RO.WORKERS=RI.WORKERS
RO.FULL=RI.FULL
RO.PART=RI.PART
RO.UNIV=RI.UNIV
RO.RETIRED=RI.RETIRED
RO.DRVCHILD=RI.DRVCHILD
RO.NDRCHILD=RI.NDRCHILD
RO.YNGCHILD=RI.YNGCHILD

KIDS = RI.DRVCHILD + RI.NDRCHILD + RI.YNGCHILD

IF(RI.SIZE = 1) ;check single person hsh
 IF(RI.RETIRED=0) ;person is not retired
  RO.TYPE=1
 ELSE             ;person is retired
  RO.TYPE=6
 ENDIF            ;end retired check
ELSE            ;size > 1
 IF(RI.WORKERS=1)      ;single income
  IF(KIDS>0)        ;kids present
   RO.TYPE=2
  ELSE              ;no kids
   RO.TYPE=3
  ENDIF             ;end kids check
 ELSEIF(RI.WORKERS>1)  ;double income
  IF(KIDS>0)        ;kids present
   RO.TYPE=4
  ELSE              ;no kids
   RO.TYPE=5
  ENDIF             ;end kids check
 ELSEIF(RI.WORKERS=0)  ;no income
  IF(RI.RETIRED>0)   ;retired household
   RO.TYPE=6
  ELSE                ;non-worker household
   RO.TYPE=7
  ENDIF              ;end retired check
 ENDIF                ;end worker check
ENDIF            ;end size check

WRITE RECO=1
ENDRUN

;---------------------------------------------
;Process trip data to perform trip-level summaries
RUN PGM=MATRIX
RECI=@trip_data@,DELIMITER=',' hhid=1,perid=2,tourpurp(c)=8,origpurp(c)=9,destpurp(c)=10,orig=11,dest=12,depart=16,tripmode=17,
                                  home=25,income=26,autos=27,incbin=29,hhsize=30,hhwrk=31,autosuff(c)=32,age=33,gender=34,
                                  pertype(c)=35,time=39,distance=40,cost=41,wait1=42,wait2=43,walktrn=44,autotrn=45,brds=46,ivtloc=47,ivtprm=48
                                  
LOOKUPI[1]=Parameters\TAZ_Data.DBF
LOOKUPI[2]=HouseholdTypes.DBF
                              
PRINTO[1]=Eval\PersonTypeSummary.CSV
PRINTO[2]=Eval\AutoSufficiencySummary.CSV
PRINTO[3]=Eval\IncomeBinSummary.CSV
PRINTO[4]=Eval\AreaTypeToAreaTypeSummary.CSV
PRINTO[5]=Eval\HouseholdTypeSummary.CSV
PRINTO[6]=Eval\ETASummary.CSV
PRINTO[7]=Eval\TripsByPurposeSummary.CSV
PRINTO[8]=Eval\TripModeSummary.CSV
PRINTO[9]=Eval\TripsByModeTourSummary.CSV
PRINTO[10]=Eval\TransitTripTimeDistributionSummary.CSV

;-------------------------------
;area type lookup
 LOOKUP NAME=ZDAT,
  LOOKUP[1]=ZONE,RESULT=AType,
  INTERPOLATE=N,LOOKUPI=1

 ORIG_ATYPE=ZDAT(1,RI.ORIG)
 DEST_ATYPE=ZDAT(1,RI.DEST)

IF(ORIG_ATYPE=1)   OAT=1    ;MAJOR ACTIVITY CENTER
IF(ORIG_ATYPE=2-3) OAT=2    ;URBAN
IF(ORIG_ATYPE=4-6) OAT=3    ;SUBURBAN
IF(ORIG_ATYPE=7)   OAT=4    ;RURAL
IF(DEST_ATYPE=1)   DAT=1    ;MAJOR ACTIVITY CENTER
IF(DEST_ATYPE=2-3) DAT=2    ;URBAN
IF(DEST_ATYPE=4-6) DAT=3    ;SUBURBAN
IF(DEST_ATYPE=7)   DAT=4    ;RURAL

;-------------------------------
;household type lookup
 LOOKUP NAME=hsh,
  LOOKUP[1]=HHID,RESULT=TYPE,
  INTERPOLATE=N,LOOKUPI=2

 HSHTYPE=HSH(1,RI.HHID)

;-------------------------------
;ETA lookup
 LOOKUP NAME=ETA_LU,
  LOOKUP[1]=ZONE,RESULT=ETAFlag,
  INTERPOLATE=N,LOOKUPI=1
  
 ETA=ETA_LU(1,RI.HOME)

IF(RECI.RECNO>1) ;rec number > 1

;===================================================================================
;By person type
;---------------------------------------------
;full-time worker
 IF(RI.pertype='full-time worker')
   _ftwtr = _ftwtr + 1
   _ftwtrdis = _ftwtrdis + RI.distance
   _ftwtrtim = _ftwtrtim + RI.time
   IF(RI.tripmode = 1)                          ;sov free
   _ftwtr1 = _ftwtr1 + 1
   _ftwtrdis1 = _ftwtrdis1 + RI.distance
   _ftwtrtim1 = _ftwtrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ftwtr2 = _ftwtr2 + 1
   _ftwtrdis2 = _ftwtrdis2 + RI.distance
   _ftwtrtim2 = _ftwtrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ftwtr3 = _ftwtr3 + 1
   _ftwtrdis3 = _ftwtrdis3 + RI.distance
   _ftwtrtim3 = _ftwtrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ftwtr4 = _ftwtr4 + 1
   _ftwtrdis4 = _ftwtrdis4 + RI.distance
   _ftwtrtim4 = _ftwtrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ftwtr5 = _ftwtr5 + 1
   _ftwtrdis5 = _ftwtrdis5 + RI.distance
   _ftwtrtim5 = _ftwtrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ftwtr6 = _ftwtr6 + 1
   _ftwtrdis6 = _ftwtrdis6 + RI.distance
   _ftwtrtim6 = _ftwtrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ftwtr7 = _ftwtr7 + 1
   _ftwtrdis7 = _ftwtrdis7 + RI.distance
   _ftwtrtim7 = _ftwtrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ftwtr8 = _ftwtr8 + 1
   _ftwtrdis8 = _ftwtrdis8 + RI.distance
   _ftwtrtim8 = _ftwtrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ftwtr9 = _ftwtr9 + 1
   _ftwtrdis9 = _ftwtrdis9 + RI.distance
   _ftwtrtim9 = _ftwtrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ftwtr10 = _ftwtr10 + 1
   _ftwtrdis10 = _ftwtrdis10 + RI.distance
   _ftwtrtim10 = _ftwtrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)    ;pnr/knr premium transit
   _ftwtr11= _ftwtr11+ 1
   _ftwtrdis11= _ftwtrdis11+ RI.distance
   _ftwtrtim11= _ftwtrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)    ;pnr/knr non-premium transit
   _ftwtr12 = _ftwtr12 + 1
   _ftwtrdis12 = _ftwtrdis12 + RI.distance
   _ftwtrtim12 = _ftwtrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ftwtr13 = _ftwtr13 + 1
   _ftwtrdis13 = _ftwtrdis13 + RI.distance
   _ftwtrtim13 = _ftwtrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------
;part-time worker
 ELSEIF(RI.pertype='part-time worker')
   _ptwtr = _ptwtr + 1
   _ptwtrdis = _ptwtrdis + RI.distance
   _ptwtrtim = _ptwtrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ptwtr1 = _ptwtr1 + 1
   _ptwtrdis1 = _ptwtrdis1 + RI.distance
   _ptwtrtim1 = _ptwtrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ptwtr2 = _ptwtr2 + 1
   _ptwtrdis2 = _ptwtrdis2 + RI.distance
   _ptwtrtim2 = _ptwtrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ptwtr3 = _ptwtr3 + 1
   _ptwtrdis3 = _ptwtrdis3 + RI.distance
   _ptwtrtim3 = _ptwtrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ptwtr4 = _ptwtr4 + 1
   _ptwtrdis4 = _ptwtrdis4 + RI.distance
   _ptwtrtim4 = _ptwtrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ptwtr5 = _ptwtr5 + 1
   _ptwtrdis5 = _ptwtrdis5 + RI.distance
   _ptwtrtim5 = _ptwtrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ptwtr6 = _ptwtr6 + 1
   _ptwtrdis6 = _ptwtrdis6 + RI.distance
   _ptwtrtim6 = _ptwtrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ptwtr7 = _ptwtr7 + 1
   _ptwtrdis7 = _ptwtrdis7 + RI.distance
   _ptwtrtim7 = _ptwtrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ptwtr8 = _ptwtr8 + 1
   _ptwtrdis8 = _ptwtrdis8 + RI.distance
   _ptwtrtim8 = _ptwtrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ptwtr9 = _ptwtr9 + 1
   _ptwtrdis9 = _ptwtrdis9 + RI.distance
   _ptwtrtim9 = _ptwtrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ptwtr10 = _ptwtr10 + 1
   _ptwtrdis10 = _ptwtrdis10 + RI.distance
   _ptwtrtim10 = _ptwtrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)    ;pnr/knr premium transit
   _ptwtr11= _ptwtr11+ 1
   _ptwtrdis11= _ptwtrdis11+ RI.distance
   _ptwtrtim11= _ptwtrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)    ;pnr/knr non-premium transit
   _ptwtr12 = _ptwtr12 + 1
   _ptwtrdis12 = _ptwtrdis12 + RI.distance
   _ptwtrtim12 = _ptwtrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ptwtr13 = _ptwtr13 + 1
   _ptwtrdis13 = _ptwtrdis13 + RI.distance
   _ptwtrtim13 = _ptwtrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;university student
 ELSEIF(RI.pertype='university student')
   _unvtr = _unvtr + 1
   _unvtrdis = _unvtrdis + RI.distance
   _unvtrtim = _unvtrtim + RI.time
   IF(RI.tripmode = 1)                          ;sov free
   _unvtr1 = _unvtr1 + 1
   _unvtrdis1 = _unvtrdis1 + RI.distance
   _unvtrtim1 = _unvtrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _unvtr2 = _unvtr2 + 1
   _unvtrdis2 = _unvtrdis2 + RI.distance
   _unvtrtim2 = _unvtrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _unvtr3 = _unvtr3 + 1
   _unvtrdis3 = _unvtrdis3 + RI.distance
   _unvtrtim3 = _unvtrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _unvtr4 = _unvtr4 + 1
   _unvtrdis4 = _unvtrdis4 + RI.distance
   _unvtrtim4 = _unvtrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _unvtr5 = _unvtr5 + 1
   _unvtrdis5 = _unvtrdis5 + RI.distance
   _unvtrtim5 = _unvtrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _unvtr6 = _unvtr6 + 1
   _unvtrdis6 = _unvtrdis6 + RI.distance
   _unvtrtim6 = _unvtrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _unvtr7 = _unvtr7 + 1
   _unvtrdis7 = _unvtrdis7 + RI.distance
   _unvtrtim7 = _unvtrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _unvtr8 = _unvtr8 + 1
   _unvtrdis8 = _unvtrdis8 + RI.distance
   _unvtrtim8 = _unvtrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _unvtr9 = _unvtr9 + 1
   _unvtrdis9 = _unvtrdis9 + RI.distance
   _unvtrtim9 = _unvtrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _unvtr10 = _unvtr10 + 1
   _unvtrdis10 = _unvtrdis10 + RI.distance
   _unvtrtim10 = _unvtrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)    ;pnr/knr premium transit
   _unvtr11= _unvtr11+ 1
   _unvtrdis11= _unvtrdis11+ RI.distance
   _unvtrtim11= _unvtrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)    ;pnr/knr non-premium transit
   _unvtr12 = _unvtr12 + 1
   _unvtrdis12 = _unvtrdis12 + RI.distance
   _unvtrtim12 = _unvtrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _unvtr13 = _unvtr13 + 1
   _unvtrdis13 = _unvtrdis13 + RI.distance
   _unvtrtim13 = _unvtrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;non-worker
 ELSEIF(RI.pertype='non-worker')
   _nwktr = _nwktr + 1
   _nwktrdis = _nwktrdis + RI.distance
   _nwktrtim = _nwktrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _nwktr1 = _nwktr1 + 1
   _nwktrdis1 = _nwktrdis1 + RI.distance
   _nwktrtim1 = _nwktrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _nwktr2 = _nwktr2 + 1
   _nwktrdis2 = _nwktrdis2 + RI.distance
   _nwktrtim2 = _nwktrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _nwktr3 = _nwktr3 + 1
   _nwktrdis3 = _nwktrdis3 + RI.distance
   _nwktrtim3 = _nwktrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _nwktr4 = _nwktr4 + 1
   _nwktrdis4 = _nwktrdis4 + RI.distance
   _nwktrtim4 = _nwktrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _nwktr5 = _nwktr5 + 1
   _nwktrdis5 = _nwktrdis5 + RI.distance
   _nwktrtim5 = _nwktrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _nwktr6 = _nwktr6 + 1
   _nwktrdis6 = _nwktrdis6 + RI.distance
   _nwktrtim6 = _nwktrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _nwktr7 = _nwktr7 + 1
   _nwktrdis7 = _nwktrdis7 + RI.distance
   _nwktrtim7 = _nwktrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _nwktr8 = _nwktr8 + 1
   _nwktrdis8 = _nwktrdis8 + RI.distance
   _nwktrtim8 = _nwktrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _nwktr9 = _nwktr9 + 1
   _nwktrdis9 = _nwktrdis9 + RI.distance
   _nwktrtim9 = _nwktrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _nwktr10 = _nwktr10 + 1
   _nwktrdis10 = _nwktrdis10 + RI.distance
   _nwktrtim10 = _nwktrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)    ;pnr/knr premium transit
   _nwktr11= _nwktr11+ 1
   _nwktrdis11= _nwktrdis11+ RI.distance
   _nwktrtim11= _nwktrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)    ;pnr/knr non-premium transit
   _nwktr12 = _nwktr12 + 1
   _nwktrdis12 = _nwktrdis12 + RI.distance
   _nwktrtim12 = _nwktrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _nwktr13 = _nwktr13 + 1
   _nwktrdis13 = _nwktrdis13 + RI.distance
   _nwktrtim13 = _nwktrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;retired
 ELSEIF(RI.pertype='retired')
   _rettr = _rettr + 1
   _rettrdis = _rettrdis + RI.distance
   _rettrtim = _rettrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _rettr1 = _rettr1 + 1
   _rettrdis1 = _rettrdis1 + RI.distance
   _rettrtim1 = _rettrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _rettr2 = _rettr2 + 1
   _rettrdis2 = _rettrdis2 + RI.distance
   _rettrtim2 = _rettrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _rettr3 = _rettr3 + 1
   _rettrdis3 = _rettrdis3 + RI.distance
   _rettrtim3 = _rettrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _rettr4 = _rettr4 + 1
   _rettrdis4 = _rettrdis4 + RI.distance
   _rettrtim4 = _rettrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _rettr5 = _rettr5 + 1
   _rettrdis5 = _rettrdis5 + RI.distance
   _rettrtim5 = _rettrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _rettr6 = _rettr6 + 1
   _rettrdis6 = _rettrdis6 + RI.distance
   _rettrtim6 = _rettrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _rettr7 = _rettr7 + 1
   _rettrdis7 = _rettrdis7 + RI.distance
   _rettrtim7 = _rettrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _rettr8 = _rettr8 + 1
   _rettrdis8 = _rettrdis8 + RI.distance
   _rettrtim8 = _rettrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _rettr9 = _rettr9 + 1
   _rettrdis9 = _rettrdis9 + RI.distance
   _rettrtim9 = _rettrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _rettr10 = _rettr10 + 1
   _rettrdis10 = _rettrdis10 + RI.distance
   _rettrtim10 = _rettrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)    ;pnr/knr premium transit
   _rettr11= _rettr11+ 1
   _rettrdis11= _rettrdis11+ RI.distance
   _rettrtim11= _rettrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)    ;pnr/knr non-premium transit
   _rettr12 = _rettr12 + 1
   _rettrdis12 = _rettrdis12 + RI.distance
   _rettrtim12 = _rettrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _rettr13 = _rettr13 + 1
   _rettrdis13 = _rettrdis13 + RI.distance
   _rettrtim13 = _rettrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;student of driving age
 ELSEIF(RI.pertype='student of driving age')
   _sdatr = _sdatr + 1
   _sdatrdis = _sdatrdis + RI.distance
   _sdatrtim = _sdatrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _sdatr1 = _sdatr1 + 1
   _sdatrdis1 = _sdatrdis1 + RI.distance
   _sdatrtim1 = _sdatrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _sdatr2 = _sdatr2 + 1
   _sdatrdis2 = _sdatrdis2 + RI.distance
   _sdatrtim2 = _sdatrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _sdatr3 = _sdatr3 + 1
   _sdatrdis3 = _sdatrdis3 + RI.distance
   _sdatrtim3 = _sdatrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _sdatr4 = _sdatr4 + 1
   _sdatrdis4 = _sdatrdis4 + RI.distance
   _sdatrtim4 = _sdatrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _sdatr5 = _sdatr5 + 1
   _sdatrdis5 = _sdatrdis5 + RI.distance
   _sdatrtim5 = _sdatrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _sdatr6 = _sdatr6 + 1
   _sdatrdis6 = _sdatrdis6 + RI.distance
   _sdatrtim6 = _sdatrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _sdatr7 = _sdatr7 + 1
   _sdatrdis7 = _sdatrdis7 + RI.distance
   _sdatrtim7 = _sdatrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _sdatr8 = _sdatr8 + 1
   _sdatrdis8 = _sdatrdis8 + RI.distance
   _sdatrtim8 = _sdatrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _sdatr9 = _sdatr9 + 1
   _sdatrdis9 = _sdatrdis9 + RI.distance
   _sdatrtim9 = _sdatrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _sdatr10 = _sdatr10 + 1
   _sdatrdis10 = _sdatrdis10 + RI.distance
   _sdatrtim10 = _sdatrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)    ;pnr/knr premium transit
   _sdatr11= _sdatr11+ 1
   _sdatrdis11= _sdatrdis11+ RI.distance
   _sdatrtim11= _sdatrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)    ;pnr/knr non-premium transit
   _sdatr12 = _sdatr12 + 1
   _sdatrdis12 = _sdatrdis12 + RI.distance
   _sdatrtim12 = _sdatrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)                     
   _sdatr13 = _sdatr13 + 1
   _sdatrdis13 = _sdatrdis13 + RI.distance
   _sdatrtim13 = _sdatrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;student of non-driving age
 ELSEIF(RI.pertype='student of non-driving age')
   _sndtr = _sndtr + 1
   _sndtrdis = _sndtrdis + RI.distance
   _sndtrtim = _sndtrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _sndtr1 = _sndtr1 + 1
   _sndtrdis1 = _sndtrdis1 + RI.distance
   _sndtrtim1 = _sndtrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _sndtr2 = _sndtr2 + 1
   _sndtrdis2 = _sndtrdis2 + RI.distance
   _sndtrtim2 = _sndtrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _sndtr3 = _sndtr3 + 1
   _sndtrdis3 = _sndtrdis3 + RI.distance
   _sndtrtim3 = _sndtrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _sndtr4 = _sndtr4 + 1
   _sndtrdis4 = _sndtrdis4 + RI.distance
   _sndtrtim4 = _sndtrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _sndtr5 = _sndtr5 + 1
   _sndtrdis5 = _sndtrdis5 + RI.distance
   _sndtrtim5 = _sndtrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _sndtr6 = _sndtr6 + 1
   _sndtrdis6 = _sndtrdis6 + RI.distance
   _sndtrtim6 = _sndtrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _sndtr7 = _sndtr7 + 1
   _sndtrdis7 = _sndtrdis7 + RI.distance
   _sndtrtim7 = _sndtrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _sndtr8 = _sndtr8 + 1
   _sndtrdis8 = _sndtrdis8 + RI.distance
   _sndtrtim8 = _sndtrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _sndtr9 = _sndtr9 + 1
   _sndtrdis9 = _sndtrdis9 + RI.distance
   _sndtrtim9 = _sndtrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _sndtr10 = _sndtr10 + 1
   _sndtrdis10 = _sndtrdis10 + RI.distance
   _sndtrtim10 = _sndtrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _sndtr11= _sndtr11+ 1
   _sndtrdis11= _sndtrdis11+ RI.distance
   _sndtrtim11= _sndtrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _sndtr12 = _sndtr12 + 1
   _sndtrdis12 = _sndtrdis12 + RI.distance
   _sndtrtim12 = _sndtrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _sndtr13 = _sndtr13 + 1
   _sndtrdis13 = _sndtrdis13 + RI.distance
   _sndtrtim13 = _sndtrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;child too young for school
 ELSEIF(RI.pertype='child too young for school')
   _chitr = _chitr + 1
   _chitrdis = _chitrdis + RI.distance
   _chitrtim = _chitrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _chitr1 = _chitr1 + 1
   _chitrdis1 = _chitrdis1 + RI.distance
   _chitrtim1 = _chitrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _chitr2 = _chitr2 + 1
   _chitrdis2 = _chitrdis2 + RI.distance
   _chitrtim2 = _chitrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _chitr3 = _chitr3 + 1
   _chitrdis3 = _chitrdis3 + RI.distance
   _chitrtim3 = _chitrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _chitr4 = _chitr4 + 1
   _chitrdis4 = _chitrdis4 + RI.distance
   _chitrtim4 = _chitrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _chitr5 = _chitr5 + 1
   _chitrdis5 = _chitrdis5 + RI.distance
   _chitrtim5 = _chitrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _chitr6 = _chitr6 + 1
   _chitrdis6 = _chitrdis6 + RI.distance
   _chitrtim6 = _chitrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _chitr7 = _chitr7 + 1
   _chitrdis7 = _chitrdis7 + RI.distance
   _chitrtim7 = _chitrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _chitr8 = _chitr8 + 1
   _chitrdis8 = _chitrdis8 + RI.distance
   _chitrtim8 = _chitrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _chitr9 = _chitr9 + 1
   _chitrdis9 = _chitrdis9 + RI.distance
   _chitrtim9 = _chitrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _chitr10 = _chitr10 + 1
   _chitrdis10 = _chitrdis10 + RI.distance
   _chitrtim10 = _chitrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _chitr11= _chitr11+ 1
   _chitrdis11= _chitrdis11+ RI.distance
   _chitrtim11= _chitrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _chitr12 = _chitr12 + 1
   _chitrdis12 = _chitrdis12 + RI.distance
   _chitrtim12 = _chitrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _chitr13 = _chitr13 + 1
   _chitrdis13 = _chitrdis13 + RI.distance
   _chitrtim13 = _chitrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
 ENDIF ;person type

;===================================================================================
;By auto sufficiency
;---------------------------------------------
;zero car households
 IF(RI.autosuff='NoCar')
   _NoCrtr = _NoCrtr + 1
   _NoCrtrdis = _NoCrtrdis + RI.distance
   _NoCrtrtim = _NoCrtrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _NoCrtr1 = _NoCrtr1 + 1
   _NoCrtrdis1 = _NoCrtrdis1 + RI.distance
   _NoCrtrtim1 = _NoCrtrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _NoCrtr2 = _NoCrtr2 + 1
   _NoCrtrdis2 = _NoCrtrdis2 + RI.distance
   _NoCrtrtim2 = _NoCrtrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _NoCrtr3 = _NoCrtr3 + 1
   _NoCrtrdis3 = _NoCrtrdis3 + RI.distance
   _NoCrtrtim3 = _NoCrtrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _NoCrtr4 = _NoCrtr4 + 1
   _NoCrtrdis4 = _NoCrtrdis4 + RI.distance
   _NoCrtrtim4 = _NoCrtrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _NoCrtr5 = _NoCrtr5 + 1
   _NoCrtrdis5 = _NoCrtrdis5 + RI.distance
   _NoCrtrtim5 = _NoCrtrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _NoCrtr6 = _NoCrtr6 + 1
   _NoCrtrdis6 = _NoCrtrdis6 + RI.distance
   _NoCrtrtim6 = _NoCrtrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _NoCrtr7 = _NoCrtr7 + 1
   _NoCrtrdis7 = _NoCrtrdis7 + RI.distance
   _NoCrtrtim7 = _NoCrtrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _NoCrtr8 = _NoCrtr8 + 1
   _NoCrtrdis8 = _NoCrtrdis8 + RI.distance
   _NoCrtrtim8 = _NoCrtrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _NoCrtr9 = _NoCrtr9 + 1
   _NoCrtrdis9 = _NoCrtrdis9 + RI.distance
   _NoCrtrtim9 = _NoCrtrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _NoCrtr10 = _NoCrtr10 + 1
   _NoCrtrdis10 = _NoCrtrdis10 + RI.distance
   _NoCrtrtim10 = _NoCrtrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _NoCrtr11= _NoCrtr11+ 1
   _NoCrtrdis11= _NoCrtrdis11+ RI.distance
   _NoCrtrtim11= _NoCrtrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _NoCrtr12 = _NoCrtr12 + 1
   _NoCrtrdis12 = _NoCrtrdis12 + RI.distance
   _NoCrtrtim12 = _NoCrtrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _NoCrtr13 = _NoCrtr13 + 1
   _NoCrtrdis13 = _NoCrtrdis13 + RI.distance
   _NoCrtrtim13 = _NoCrtrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;households where cars < workers
 ELSEIF(RI.autosuff='cars<wkrs')
   _CrLTtr = _CrLTtr + 1
   _CrLTtrdis = _CrLTtrdis + RI.distance
   _CrLTtrtim = _CrLTtrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _CrLTtr1 = _CrLTtr1 + 1
   _CrLTtrdis1 = _CrLTtrdis1 + RI.distance
   _CrLTtrtim1 = _CrLTtrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _CrLTtr2 = _CrLTtr2 + 1
   _CrLTtrdis2 = _CrLTtrdis2 + RI.distance
   _CrLTtrtim2 = _CrLTtrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _CrLTtr3 = _CrLTtr3 + 1
   _CrLTtrdis3 = _CrLTtrdis3 + RI.distance
   _CrLTtrtim3 = _CrLTtrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _CrLTtr4 = _CrLTtr4 + 1
   _CrLTtrdis4 = _CrLTtrdis4 + RI.distance
   _CrLTtrtim4 = _CrLTtrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _CrLTtr5 = _CrLTtr5 + 1
   _CrLTtrdis5 = _CrLTtrdis5 + RI.distance
   _CrLTtrtim5 = _CrLTtrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _CrLTtr6 = _CrLTtr6 + 1
   _CrLTtrdis6 = _CrLTtrdis6 + RI.distance
   _CrLTtrtim6 = _CrLTtrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _CrLTtr7 = _CrLTtr7 + 1
   _CrLTtrdis7 = _CrLTtrdis7 + RI.distance
   _CrLTtrtim7 = _CrLTtrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _CrLTtr8 = _CrLTtr8 + 1
   _CrLTtrdis8 = _CrLTtrdis8 + RI.distance
   _CrLTtrtim8 = _CrLTtrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _CrLTtr9 = _CrLTtr9 + 1
   _CrLTtrdis9 = _CrLTtrdis9 + RI.distance
   _CrLTtrtim9 = _CrLTtrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _CrLTtr10 = _CrLTtr10 + 1
   _CrLTtrdis10 = _CrLTtrdis10 + RI.distance
   _CrLTtrtim10 = _CrLTtrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _CrLTtr11= _CrLTtr11+ 1
   _CrLTtrdis11= _CrLTtrdis11+ RI.distance
   _CrLTtrtim11= _CrLTtrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _CrLTtr12 = _CrLTtr12 + 1
   _CrLTtrdis12 = _CrLTtrdis12 + RI.distance
   _CrLTtrtim12 = _CrLTtrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _CrLTtr13 = _CrLTtr13 + 1
   _CrLTtrdis13 = _CrLTtrdis13 + RI.distance
   _CrLTtrtim13 = _CrLTtrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;households where cars >= workers
 ELSEIF(RI.autosuff='cars>=wkrs')
   _CarStr = _CarStr + 1
   _CarStrdis = _CarStrdis + RI.distance
   _CarStrtim = _CarStrtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _CarStr1 = _CarStr1 + 1
   _CarStrdis1 = _CarStrdis1 + RI.distance
   _CarStrtim1 = _CarStrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _CarStr2 = _CarStr2 + 1
   _CarStrdis2 = _CarStrdis2 + RI.distance
   _CarStrtim2 = _CarStrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _CarStr3 = _CarStr3 + 1
   _CarStrdis3 = _CarStrdis3 + RI.distance
   _CarStrtim3 = _CarStrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _CarStr4 = _CarStr4 + 1
   _CarStrdis4 = _CarStrdis4 + RI.distance
   _CarStrtim4 = _CarStrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _CarStr5 = _CarStr5 + 1
   _CarStrdis5 = _CarStrdis5 + RI.distance
   _CarStrtim5 = _CarStrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _CarStr6 = _CarStr6 + 1
   _CarStrdis6 = _CarStrdis6 + RI.distance
   _CarStrtim6 = _CarStrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _CarStr7 = _CarStr7 + 1
   _CarStrdis7 = _CarStrdis7 + RI.distance
   _CarStrtim7 = _CarStrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _CarStr8 = _CarStr8 + 1
   _CarStrdis8 = _CarStrdis8 + RI.distance
   _CarStrtim8 = _CarStrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _CarStr9 = _CarStr9 + 1
   _CarStrdis9 = _CarStrdis9 + RI.distance
   _CarStrtim9 = _CarStrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _CarStr10 = _CarStr10 + 1
   _CarStrdis10 = _CarStrdis10 + RI.distance
   _CarStrtim10 = _CarStrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _CarStr11= _CarStr11+ 1
   _CarStrdis11= _CarStrdis11+ RI.distance
   _CarStrtim11= _CarStrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _CarStr12 = _CarStr12 + 1
   _CarStrdis12 = _CarStrdis12 + RI.distance
   _CarStrtim12 = _CarStrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _CarStr13 = _CarStr13 + 1
   _CarStrdis13 = _CarStrdis13 + RI.distance
   _CarStrtim13 = _CarStrtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
 ENDIF ;auto sufficiency
;===================================================================================
;By income
;---------------------------------------------
;low income households
 IF(RI.incbin=1)
   _Inc1tr = _Inc1tr + 1
   _Inc1trdis = _Inc1trdis + RI.distance
   _Inc1trtim = _Inc1trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _Inc1tr1 = _Inc1tr1 + 1
   _Inc1trdis1 = _Inc1trdis1 + RI.distance
   _Inc1trtim1 = _Inc1trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _Inc1tr2 = _Inc1tr2 + 1
   _Inc1trdis2 = _Inc1trdis2 + RI.distance
   _Inc1trtim2 = _Inc1trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _Inc1tr3 = _Inc1tr3 + 1
   _Inc1trdis3 = _Inc1trdis3 + RI.distance
   _Inc1trtim3 = _Inc1trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _Inc1tr4 = _Inc1tr4 + 1
   _Inc1trdis4 = _Inc1trdis4 + RI.distance
   _Inc1trtim4 = _Inc1trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _Inc1tr5 = _Inc1tr5 + 1
   _Inc1trdis5 = _Inc1trdis5 + RI.distance
   _Inc1trtim5 = _Inc1trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _Inc1tr6 = _Inc1tr6 + 1
   _Inc1trdis6 = _Inc1trdis6 + RI.distance
   _Inc1trtim6 = _Inc1trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _Inc1tr7 = _Inc1tr7 + 1
   _Inc1trdis7 = _Inc1trdis7 + RI.distance
   _Inc1trtim7 = _Inc1trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _Inc1tr8 = _Inc1tr8 + 1
   _Inc1trdis8 = _Inc1trdis8 + RI.distance
   _Inc1trtim8 = _Inc1trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _Inc1tr9 = _Inc1tr9 + 1
   _Inc1trdis9 = _Inc1trdis9 + RI.distance
   _Inc1trtim9 = _Inc1trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _Inc1tr10 = _Inc1tr10 + 1
   _Inc1trdis10 = _Inc1trdis10 + RI.distance
   _Inc1trtim10 = _Inc1trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _Inc1tr11= _Inc1tr11+ 1
   _Inc1trdis11= _Inc1trdis11+ RI.distance
   _Inc1trtim11= _Inc1trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _Inc1tr12 = _Inc1tr12 + 1
   _Inc1trdis12 = _Inc1trdis12 + RI.distance
   _Inc1trtim12 = _Inc1trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _Inc1tr13 = _Inc1tr13 + 1
   _Inc1trdis13 = _Inc1trdis13 + RI.distance
   _Inc1trtim13 = _Inc1trtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;low-medium income households
 ELSEIF(RI.incbin=2)
   _Inc2tr = _Inc2tr + 1
   _Inc2trdis = _Inc2trdis + RI.distance
   _Inc2trtim = _Inc2trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _Inc2tr1 = _Inc2tr1 + 1
   _Inc2trdis1 = _Inc2trdis1 + RI.distance
   _Inc2trtim1 = _Inc2trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _Inc2tr2 = _Inc2tr2 + 1
   _Inc2trdis2 = _Inc2trdis2 + RI.distance
   _Inc2trtim2 = _Inc2trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _Inc2tr3 = _Inc2tr3 + 1
   _Inc2trdis3 = _Inc2trdis3 + RI.distance
   _Inc2trtim3 = _Inc2trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _Inc2tr4 = _Inc2tr4 + 1
   _Inc2trdis4 = _Inc2trdis4 + RI.distance
   _Inc2trtim4 = _Inc2trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _Inc2tr5 = _Inc2tr5 + 1
   _Inc2trdis5 = _Inc2trdis5 + RI.distance
   _Inc2trtim5 = _Inc2trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _Inc2tr6 = _Inc2tr6 + 1
   _Inc2trdis6 = _Inc2trdis6 + RI.distance
   _Inc2trtim6 = _Inc2trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _Inc2tr7 = _Inc2tr7 + 1
   _Inc2trdis7 = _Inc2trdis7 + RI.distance
   _Inc2trtim7 = _Inc2trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _Inc2tr8 = _Inc2tr8 + 1
   _Inc2trdis8 = _Inc2trdis8 + RI.distance
   _Inc2trtim8 = _Inc2trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _Inc2tr9 = _Inc2tr9 + 1
   _Inc2trdis9 = _Inc2trdis9 + RI.distance
   _Inc2trtim9 = _Inc2trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _Inc2tr10 = _Inc2tr10 + 1
   _Inc2trdis10 = _Inc2trdis10 + RI.distance
   _Inc2trtim10 = _Inc2trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _Inc2tr11= _Inc2tr11+ 1
   _Inc2trdis11= _Inc2trdis11+ RI.distance
   _Inc2trtim11= _Inc2trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _Inc2tr12 = _Inc2tr12 + 1
   _Inc2trdis12 = _Inc2trdis12 + RI.distance
   _Inc2trtim12 = _Inc2trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _Inc2tr13 = _Inc2tr13 + 1
   _Inc2trdis13 = _Inc2trdis13 + RI.distance
   _Inc2trtim13 = _Inc2trtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;medium-high income households
 ELSEIF(RI.incbin=3)
   _Inc3tr = _Inc3tr + 1
   _Inc3trdis = _Inc3trdis + RI.distance
   _Inc3trtim = _Inc3trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _Inc3tr1 = _Inc3tr1 + 1
   _Inc3trdis1 = _Inc3trdis1 + RI.distance
   _Inc3trtim1 = _Inc3trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _Inc3tr2 = _Inc3tr2 + 1
   _Inc3trdis2 = _Inc3trdis2 + RI.distance
   _Inc3trtim2 = _Inc3trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _Inc3tr3 = _Inc3tr3 + 1
   _Inc3trdis3 = _Inc3trdis3 + RI.distance
   _Inc3trtim3 = _Inc3trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _Inc3tr4 = _Inc3tr4 + 1
   _Inc3trdis4 = _Inc3trdis4 + RI.distance
   _Inc3trtim4 = _Inc3trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _Inc3tr5 = _Inc3tr5 + 1
   _Inc3trdis5 = _Inc3trdis5 + RI.distance
   _Inc3trtim5 = _Inc3trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _Inc3tr6 = _Inc3tr6 + 1
   _Inc3trdis6 = _Inc3trdis6 + RI.distance
   _Inc3trtim6 = _Inc3trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _Inc3tr7 = _Inc3tr7 + 1
   _Inc3trdis7 = _Inc3trdis7 + RI.distance
   _Inc3trtim7 = _Inc3trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _Inc3tr8 = _Inc3tr8 + 1
   _Inc3trdis8 = _Inc3trdis8 + RI.distance
   _Inc3trtim8 = _Inc3trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _Inc3tr9 = _Inc3tr9 + 1
   _Inc3trdis9 = _Inc3trdis9 + RI.distance
   _Inc3trtim9 = _Inc3trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _Inc3tr10 = _Inc3tr10 + 1
   _Inc3trdis10 = _Inc3trdis10 + RI.distance
   _Inc3trtim10 = _Inc3trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _Inc3tr11= _Inc3tr11+ 1
   _Inc3trdis11= _Inc3trdis11+ RI.distance
   _Inc3trtim11= _Inc3trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _Inc3tr12 = _Inc3tr12 + 1
   _Inc3trdis12 = _Inc3trdis12 + RI.distance
   _Inc3trtim12 = _Inc3trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _Inc3tr13 = _Inc3tr13 + 1
   _Inc3trdis13 = _Inc3trdis13 + RI.distance
   _Inc3trtim13 = _Inc3trtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------------
;high income households
 ELSEIF(RI.incbin=4)
   _Inc4tr = _Inc4tr + 1
   _Inc4trdis = _Inc4trdis + RI.distance
   _Inc4trtim = _Inc4trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _Inc4tr1 = _Inc4tr1 + 1
   _Inc4trdis1 = _Inc4trdis1 + RI.distance
   _Inc4trtim1 = _Inc4trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _Inc4tr2 = _Inc4tr2 + 1
   _Inc4trdis2 = _Inc4trdis2 + RI.distance
   _Inc4trtim2 = _Inc4trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _Inc4tr3 = _Inc4tr3 + 1
   _Inc4trdis3 = _Inc4trdis3 + RI.distance
   _Inc4trtim3 = _Inc4trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _Inc4tr4 = _Inc4tr4 + 1
   _Inc4trdis4 = _Inc4trdis4 + RI.distance
   _Inc4trtim4 = _Inc4trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _Inc4tr5 = _Inc4tr5 + 1
   _Inc4trdis5 = _Inc4trdis5 + RI.distance
   _Inc4trtim5 = _Inc4trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _Inc4tr6 = _Inc4tr6 + 1
   _Inc4trdis6 = _Inc4trdis6 + RI.distance
   _Inc4trtim6 = _Inc4trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _Inc4tr7 = _Inc4tr7 + 1
   _Inc4trdis7 = _Inc4trdis7 + RI.distance
   _Inc4trtim7 = _Inc4trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _Inc4tr8 = _Inc4tr8 + 1
   _Inc4trdis8 = _Inc4trdis8 + RI.distance
   _Inc4trtim8 = _Inc4trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _Inc4tr9 = _Inc4tr9 + 1
   _Inc4trdis9 = _Inc4trdis9 + RI.distance
   _Inc4trtim9 = _Inc4trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _Inc4tr10 = _Inc4tr10 + 1
   _Inc4trdis10 = _Inc4trdis10 + RI.distance
   _Inc4trtim10 = _Inc4trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _Inc4tr11= _Inc4tr11+ 1
   _Inc4trdis11= _Inc4trdis11+ RI.distance
   _Inc4trtim11= _Inc4trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _Inc4tr12 = _Inc4tr12 + 1
   _Inc4trdis12 = _Inc4trdis12 + RI.distance
   _Inc4trtim12 = _Inc4trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _Inc4tr13 = _Inc4tr13 + 1
   _Inc4trdis13 = _Inc4trdis13 + RI.distance
   _Inc4trtim13 = _Inc4trtim13 + RI.time
  ENDIF ;trip mode
 ;---------------------------------------------------
 ENDIF ;income bins
;===================================================================================
;===================================================================================
;By area type
;---------------------------------------------
;
IF(OAT = 1)        ;Origin = major activity center
 IF(DAT = 1)          ;Destination = major activity center
   _a11tr = _a11tr + 1
   _a11trdis = _a11trdis + RI.distance
   _a11trtim = _a11trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a11tr1 = _a11tr1 + 1
   _a11trdis1 = _a11trdis1 + RI.distance
   _a11trtim1 = _a11trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a11tr2 = _a11tr2 + 1
   _a11trdis2 = _a11trdis2 + RI.distance
   _a11trtim2 = _a11trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a11tr3 = _a11tr3 + 1
   _a11trdis3 = _a11trdis3 + RI.distance
   _a11trtim3 = _a11trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a11tr4 = _a11tr4 + 1
   _a11trdis4 = _a11trdis4 + RI.distance
   _a11trtim4 = _a11trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a11tr5 = _a11tr5 + 1
   _a11trdis5 = _a11trdis5 + RI.distance
   _a11trtim5 = _a11trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a11tr6 = _a11tr6 + 1
   _a11trdis6 = _a11trdis6 + RI.distance
   _a11trtim6 = _a11trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a11tr7 = _a11tr7 + 1
   _a11trdis7 = _a11trdis7 + RI.distance
   _a11trtim7 = _a11trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a11tr8 = _a11tr8 + 1
   _a11trdis8 = _a11trdis8 + RI.distance
   _a11trtim8 = _a11trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a11tr9 = _a11tr9 + 1
   _a11trdis9 = _a11trdis9 + RI.distance
   _a11trtim9 = _a11trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a11tr10 = _a11tr10 + 1
   _a11trdis10 = _a11trdis10 + RI.distance
   _a11trtim10 = _a11trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a11tr11= _a11tr11+ 1
   _a11trdis11= _a11trdis11+ RI.distance
   _a11trtim11= _a11trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a11tr12 = _a11tr12 + 1
   _a11trdis12 = _a11trdis12 + RI.distance
   _a11trtim12 = _a11trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a11tr13 = _a11tr13 + 1
   _a11trdis13 = _a11trdis13 + RI.distance
   _a11trtim13 = _a11trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 2)          ;Destination = urban
   _a12tr = _a12tr + 1
   _a12trdis = _a12trdis + RI.distance
   _a12trtim = _a12trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a12tr1 = _a12tr1 + 1
   _a12trdis1 = _a12trdis1 + RI.distance
   _a12trtim1 = _a12trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a12tr2 = _a12tr2 + 1
   _a12trdis2 = _a12trdis2 + RI.distance
   _a12trtim2 = _a12trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a12tr3 = _a12tr3 + 1
   _a12trdis3 = _a12trdis3 + RI.distance
   _a12trtim3 = _a12trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a12tr4 = _a12tr4 + 1
   _a12trdis4 = _a12trdis4 + RI.distance
   _a12trtim4 = _a12trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a12tr5 = _a12tr5 + 1
   _a12trdis5 = _a12trdis5 + RI.distance
   _a12trtim5 = _a12trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a12tr6 = _a12tr6 + 1
   _a12trdis6 = _a12trdis6 + RI.distance
   _a12trtim6 = _a12trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a12tr7 = _a12tr7 + 1
   _a12trdis7 = _a12trdis7 + RI.distance
   _a12trtim7 = _a12trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a12tr8 = _a12tr8 + 1
   _a12trdis8 = _a12trdis8 + RI.distance
   _a12trtim8 = _a12trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a12tr9 = _a12tr9 + 1
   _a12trdis9 = _a12trdis9 + RI.distance
   _a12trtim9 = _a12trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a12tr10 = _a12tr10 + 1
   _a12trdis10 = _a12trdis10 + RI.distance
   _a12trtim10 = _a12trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a12tr11= _a12tr11+ 1
   _a12trdis11= _a12trdis11+ RI.distance
   _a12trtim11= _a12trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a12tr12 = _a12tr12 + 1
   _a12trdis12 = _a12trdis12 + RI.distance
   _a12trtim12 = _a12trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a12tr13 = _a12tr13 + 1
   _a12trdis13 = _a12trdis13 + RI.distance
   _a12trtim13 = _a12trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 3)          ;Destination = suburban
   _a13tr = _a13tr + 1
   _a13trdis = _a13trdis + RI.distance
   _a13trtim = _a13trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a13tr1 = _a13tr1 + 1
   _a13trdis1 = _a13trdis1 + RI.distance
   _a13trtim1 = _a13trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a13tr2 = _a13tr2 + 1
   _a13trdis2 = _a13trdis2 + RI.distance
   _a13trtim2 = _a13trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a13tr3 = _a13tr3 + 1
   _a13trdis3 = _a13trdis3 + RI.distance
   _a13trtim3 = _a13trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a13tr4 = _a13tr4 + 1
   _a13trdis4 = _a13trdis4 + RI.distance
   _a13trtim4 = _a13trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a13tr5 = _a13tr5 + 1
   _a13trdis5 = _a13trdis5 + RI.distance
   _a13trtim5 = _a13trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a13tr6 = _a13tr6 + 1
   _a13trdis6 = _a13trdis6 + RI.distance
   _a13trtim6 = _a13trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a13tr7 = _a13tr7 + 1
   _a13trdis7 = _a13trdis7 + RI.distance
   _a13trtim7 = _a13trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a13tr8 = _a13tr8 + 1
   _a13trdis8 = _a13trdis8 + RI.distance
   _a13trtim8 = _a13trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a13tr9 = _a13tr9 + 1
   _a13trdis9 = _a13trdis9 + RI.distance
   _a13trtim9 = _a13trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a13tr10 = _a13tr10 + 1
   _a13trdis10 = _a13trdis10 + RI.distance
   _a13trtim10 = _a13trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a13tr11= _a13tr11+ 1
   _a13trdis11= _a13trdis11+ RI.distance
   _a13trtim11= _a13trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a13tr12 = _a13tr12 + 1
   _a13trdis12 = _a13trdis12 + RI.distance
   _a13trtim12 = _a13trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a13tr13 = _a13tr13 + 1
   _a13trdis13 = _a13trdis13 + RI.distance
   _a13trtim13 = _a13trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 4)          ;Destination = rural
   _a14tr = _a14tr + 1
   _a14trdis = _a14trdis + RI.distance
   _a14trtim = _a14trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a14tr1 = _a14tr1 + 1
   _a14trdis1 = _a14trdis1 + RI.distance
   _a14trtim1 = _a14trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a14tr2 = _a14tr2 + 1
   _a14trdis2 = _a14trdis2 + RI.distance
   _a14trtim2 = _a14trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a14tr3 = _a14tr3 + 1
   _a14trdis3 = _a14trdis3 + RI.distance
   _a14trtim3 = _a14trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a14tr4 = _a14tr4 + 1
   _a14trdis4 = _a14trdis4 + RI.distance
   _a14trtim4 = _a14trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a14tr5 = _a14tr5 + 1
   _a14trdis5 = _a14trdis5 + RI.distance
   _a14trtim5 = _a14trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a14tr6 = _a14tr6 + 1
   _a14trdis6 = _a14trdis6 + RI.distance
   _a14trtim6 = _a14trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a14tr7 = _a14tr7 + 1
   _a14trdis7 = _a14trdis7 + RI.distance
   _a14trtim7 = _a14trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a14tr8 = _a14tr8 + 1
   _a14trdis8 = _a14trdis8 + RI.distance
   _a14trtim8 = _a14trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a14tr9 = _a14tr9 + 1
   _a14trdis9 = _a14trdis9 + RI.distance
   _a14trtim9 = _a14trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a14tr10 = _a14tr10 + 1
   _a14trdis10 = _a14trdis10 + RI.distance
   _a14trtim10 = _a14trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a14tr11= _a14tr11+ 1
   _a14trdis11= _a14trdis11+ RI.distance
   _a14trtim11= _a14trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a14tr12 = _a14tr12 + 1
   _a14trdis12 = _a14trdis12 + RI.distance
   _a14trtim12 = _a14trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a14tr13 = _a14tr13 + 1
   _a14trdis13 = _a14trdis13 + RI.distance
   _a14trtim13 = _a14trtim13 + RI.time
  ENDIF ;trip mode
 ENDIF ;destination area type

ELSEIF(OAT = 2)        ;Origin = urban
 IF(DAT = 1)          ;Destination = major activity center
   _a21tr = _a21tr + 1
   _a21trdis = _a21trdis + RI.distance
   _a21trtim = _a21trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a21tr1 = _a21tr1 + 1
   _a21trdis1 = _a21trdis1 + RI.distance
   _a21trtim1 = _a21trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a21tr2 = _a21tr2 + 1
   _a21trdis2 = _a21trdis2 + RI.distance
   _a21trtim2 = _a21trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a21tr3 = _a21tr3 + 1
   _a21trdis3 = _a21trdis3 + RI.distance
   _a21trtim3 = _a21trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a21tr4 = _a21tr4 + 1
   _a21trdis4 = _a21trdis4 + RI.distance
   _a21trtim4 = _a21trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a21tr5 = _a21tr5 + 1
   _a21trdis5 = _a21trdis5 + RI.distance
   _a21trtim5 = _a21trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a21tr6 = _a21tr6 + 1
   _a21trdis6 = _a21trdis6 + RI.distance
   _a21trtim6 = _a21trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a21tr7 = _a21tr7 + 1
   _a21trdis7 = _a21trdis7 + RI.distance
   _a21trtim7 = _a21trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a21tr8 = _a21tr8 + 1
   _a21trdis8 = _a21trdis8 + RI.distance
   _a21trtim8 = _a21trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a21tr9 = _a21tr9 + 1
   _a21trdis9 = _a21trdis9 + RI.distance
   _a21trtim9 = _a21trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a21tr10 = _a21tr10 + 1
   _a21trdis10 = _a21trdis10 + RI.distance
   _a21trtim10 = _a21trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a21tr11= _a21tr11+ 1
   _a21trdis11= _a21trdis11+ RI.distance
   _a21trtim11= _a21trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a21tr12 = _a21tr12 + 1
   _a21trdis12 = _a21trdis12 + RI.distance
   _a21trtim12 = _a21trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a21tr13 = _a21tr13 + 1
   _a21trdis13 = _a21trdis13 + RI.distance
   _a21trtim13 = _a21trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 2)          ;Destination = urban
   _a22tr = _a22tr + 1
   _a22trdis = _a22trdis + RI.distance
   _a22trtim = _a22trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a22tr1 = _a22tr1 + 1
   _a22trdis1 = _a22trdis1 + RI.distance
   _a22trtim1 = _a22trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a22tr2 = _a22tr2 + 1
   _a22trdis2 = _a22trdis2 + RI.distance
   _a22trtim2 = _a22trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a22tr3 = _a22tr3 + 1
   _a22trdis3 = _a22trdis3 + RI.distance
   _a22trtim3 = _a22trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a22tr4 = _a22tr4 + 1
   _a22trdis4 = _a22trdis4 + RI.distance
   _a22trtim4 = _a22trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a22tr5 = _a22tr5 + 1
   _a22trdis5 = _a22trdis5 + RI.distance
   _a22trtim5 = _a22trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a22tr6 = _a22tr6 + 1
   _a22trdis6 = _a22trdis6 + RI.distance
   _a22trtim6 = _a22trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a22tr7 = _a22tr7 + 1
   _a22trdis7 = _a22trdis7 + RI.distance
   _a22trtim7 = _a22trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a22tr8 = _a22tr8 + 1
   _a22trdis8 = _a22trdis8 + RI.distance
   _a22trtim8 = _a22trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a22tr9 = _a22tr9 + 1
   _a22trdis9 = _a22trdis9 + RI.distance
   _a22trtim9 = _a22trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a22tr10 = _a22tr10 + 1
   _a22trdis10 = _a22trdis10 + RI.distance
   _a22trtim10 = _a22trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a22tr11= _a22tr11+ 1
   _a22trdis11= _a22trdis11+ RI.distance
   _a22trtim11= _a22trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a22tr12 = _a22tr12 + 1
   _a22trdis12 = _a22trdis12 + RI.distance
   _a22trtim12 = _a22trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a22tr13 = _a22tr13 + 1
   _a22trdis13 = _a22trdis13 + RI.distance
   _a22trtim13 = _a22trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 3)          ;Destination = suburban
   _a23tr = _a23tr + 1
   _a23trdis = _a23trdis + RI.distance
   _a23trtim = _a23trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a23tr1 = _a23tr1 + 1
   _a23trdis1 = _a23trdis1 + RI.distance
   _a23trtim1 = _a23trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a23tr2 = _a23tr2 + 1
   _a23trdis2 = _a23trdis2 + RI.distance
   _a23trtim2 = _a23trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a23tr3 = _a23tr3 + 1
   _a23trdis3 = _a23trdis3 + RI.distance
   _a23trtim3 = _a23trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a23tr4 = _a23tr4 + 1
   _a23trdis4 = _a23trdis4 + RI.distance
   _a23trtim4 = _a23trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a23tr5 = _a23tr5 + 1
   _a23trdis5 = _a23trdis5 + RI.distance
   _a23trtim5 = _a23trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a23tr6 = _a23tr6 + 1
   _a23trdis6 = _a23trdis6 + RI.distance
   _a23trtim6 = _a23trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a23tr7 = _a23tr7 + 1
   _a23trdis7 = _a23trdis7 + RI.distance
   _a23trtim7 = _a23trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a23tr8 = _a23tr8 + 1
   _a23trdis8 = _a23trdis8 + RI.distance
   _a23trtim8 = _a23trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a23tr9 = _a23tr9 + 1
   _a23trdis9 = _a23trdis9 + RI.distance
   _a23trtim9 = _a23trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a23tr10 = _a23tr10 + 1
   _a23trdis10 = _a23trdis10 + RI.distance
   _a23trtim10 = _a23trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a23tr11= _a23tr11+ 1
   _a23trdis11= _a23trdis11+ RI.distance
   _a23trtim11= _a23trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a23tr12 = _a23tr12 + 1
   _a23trdis12 = _a23trdis12 + RI.distance
   _a23trtim12 = _a23trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a23tr13 = _a23tr13 + 1
   _a23trdis13 = _a23trdis13 + RI.distance
   _a23trtim13 = _a23trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 4)          ;Destination = rural
   _a24tr = _a24tr + 1
   _a24trdis = _a24trdis + RI.distance
   _a24trtim = _a24trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a24tr1 = _a24tr1 + 1
   _a24trdis1 = _a24trdis1 + RI.distance
   _a24trtim1 = _a24trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a24tr2 = _a24tr2 + 1
   _a24trdis2 = _a24trdis2 + RI.distance
   _a24trtim2 = _a24trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a24tr3 = _a24tr3 + 1
   _a24trdis3 = _a24trdis3 + RI.distance
   _a24trtim3 = _a24trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a24tr4 = _a24tr4 + 1
   _a24trdis4 = _a24trdis4 + RI.distance
   _a24trtim4 = _a24trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a24tr5 = _a24tr5 + 1
   _a24trdis5 = _a24trdis5 + RI.distance
   _a24trtim5 = _a24trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a24tr6 = _a24tr6 + 1
   _a24trdis6 = _a24trdis6 + RI.distance
   _a24trtim6 = _a24trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a24tr7 = _a24tr7 + 1
   _a24trdis7 = _a24trdis7 + RI.distance
   _a24trtim7 = _a24trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a24tr8 = _a24tr8 + 1
   _a24trdis8 = _a24trdis8 + RI.distance
   _a24trtim8 = _a24trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a24tr9 = _a24tr9 + 1
   _a24trdis9 = _a24trdis9 + RI.distance
   _a24trtim9 = _a24trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a24tr10 = _a24tr10 + 1
   _a24trdis10 = _a24trdis10 + RI.distance
   _a24trtim10 = _a24trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a24tr11= _a24tr11+ 1
   _a24trdis11= _a24trdis11+ RI.distance
   _a24trtim11= _a24trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a24tr12 = _a24tr12 + 1
   _a24trdis12 = _a24trdis12 + RI.distance
   _a24trtim12 = _a24trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a24tr13 = _a24tr13 + 1
   _a24trdis13 = _a24trdis13 + RI.distance
   _a24trtim13 = _a24trtim13 + RI.time
  ENDIF ;trip mode
 ENDIF ;destination area type
ELSEIF(OAT = 3)        ;Origin = suburban
 IF(DAT = 1)          ;Destination = major activity center
   _a31tr = _a31tr + 1
   _a31trdis = _a31trdis + RI.distance
   _a31trtim = _a31trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a31tr1 = _a31tr1 + 1
   _a31trdis1 = _a31trdis1 + RI.distance
   _a31trtim1 = _a31trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a31tr2 = _a31tr2 + 1
   _a31trdis2 = _a31trdis2 + RI.distance
   _a31trtim2 = _a31trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a31tr3 = _a31tr3 + 1
   _a31trdis3 = _a31trdis3 + RI.distance
   _a31trtim3 = _a31trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a31tr4 = _a31tr4 + 1
   _a31trdis4 = _a31trdis4 + RI.distance
   _a31trtim4 = _a31trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a31tr5 = _a31tr5 + 1
   _a31trdis5 = _a31trdis5 + RI.distance
   _a31trtim5 = _a31trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a31tr6 = _a31tr6 + 1
   _a31trdis6 = _a31trdis6 + RI.distance
   _a31trtim6 = _a31trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a31tr7 = _a31tr7 + 1
   _a31trdis7 = _a31trdis7 + RI.distance
   _a31trtim7 = _a31trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a31tr8 = _a31tr8 + 1
   _a31trdis8 = _a31trdis8 + RI.distance
   _a31trtim8 = _a31trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a31tr9 = _a31tr9 + 1
   _a31trdis9 = _a31trdis9 + RI.distance
   _a31trtim9 = _a31trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a31tr10 = _a31tr10 + 1
   _a31trdis10 = _a31trdis10 + RI.distance
   _a31trtim10 = _a31trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a31tr11= _a31tr11+ 1
   _a31trdis11= _a31trdis11+ RI.distance
   _a31trtim11= _a31trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a31tr12 = _a31tr12 + 1
   _a31trdis12 = _a31trdis12 + RI.distance
   _a31trtim12 = _a31trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a31tr13 = _a31tr13 + 1
   _a31trdis13 = _a31trdis13 + RI.distance
   _a31trtim13 = _a31trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 2)          ;Destination = urban
   _a32tr = _a32tr + 1
   _a32trdis = _a32trdis + RI.distance
   _a32trtim = _a32trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a32tr1 = _a32tr1 + 1
   _a32trdis1 = _a32trdis1 + RI.distance
   _a32trtim1 = _a32trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a32tr2 = _a32tr2 + 1
   _a32trdis2 = _a32trdis2 + RI.distance
   _a32trtim2 = _a32trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a32tr3 = _a32tr3 + 1
   _a32trdis3 = _a32trdis3 + RI.distance
   _a32trtim3 = _a32trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a32tr4 = _a32tr4 + 1
   _a32trdis4 = _a32trdis4 + RI.distance
   _a32trtim4 = _a32trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a32tr5 = _a32tr5 + 1
   _a32trdis5 = _a32trdis5 + RI.distance
   _a32trtim5 = _a32trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a32tr6 = _a32tr6 + 1
   _a32trdis6 = _a32trdis6 + RI.distance
   _a32trtim6 = _a32trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a32tr7 = _a32tr7 + 1
   _a32trdis7 = _a32trdis7 + RI.distance
   _a32trtim7 = _a32trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a32tr8 = _a32tr8 + 1
   _a32trdis8 = _a32trdis8 + RI.distance
   _a32trtim8 = _a32trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a32tr9 = _a32tr9 + 1
   _a32trdis9 = _a32trdis9 + RI.distance
   _a32trtim9 = _a32trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a32tr10 = _a32tr10 + 1
   _a32trdis10 = _a32trdis10 + RI.distance
   _a32trtim10 = _a32trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a32tr11= _a32tr11+ 1
   _a32trdis11= _a32trdis11+ RI.distance
   _a32trtim11= _a32trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a32tr12 = _a32tr12 + 1
   _a32trdis12 = _a32trdis12 + RI.distance
   _a32trtim12 = _a32trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a32tr13 = _a32tr13 + 1
   _a32trdis13 = _a32trdis13 + RI.distance
   _a32trtim13 = _a32trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 3)          ;Destination = suburban
   _a33tr = _a33tr + 1
   _a33trdis = _a33trdis + RI.distance
   _a33trtim = _a33trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a33tr1 = _a33tr1 + 1
   _a33trdis1 = _a33trdis1 + RI.distance
   _a33trtim1 = _a33trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a33tr2 = _a33tr2 + 1
   _a33trdis2 = _a33trdis2 + RI.distance
   _a33trtim2 = _a33trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a33tr3 = _a33tr3 + 1
   _a33trdis3 = _a33trdis3 + RI.distance
   _a33trtim3 = _a33trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a33tr4 = _a33tr4 + 1
   _a33trdis4 = _a33trdis4 + RI.distance
   _a33trtim4 = _a33trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a33tr5 = _a33tr5 + 1
   _a33trdis5 = _a33trdis5 + RI.distance
   _a33trtim5 = _a33trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a33tr6 = _a33tr6 + 1
   _a33trdis6 = _a33trdis6 + RI.distance
   _a33trtim6 = _a33trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a33tr7 = _a33tr7 + 1
   _a33trdis7 = _a33trdis7 + RI.distance
   _a33trtim7 = _a33trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a33tr8 = _a33tr8 + 1
   _a33trdis8 = _a33trdis8 + RI.distance
   _a33trtim8 = _a33trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a33tr9 = _a33tr9 + 1
   _a33trdis9 = _a33trdis9 + RI.distance
   _a33trtim9 = _a33trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a33tr10 = _a33tr10 + 1
   _a33trdis10 = _a33trdis10 + RI.distance
   _a33trtim10 = _a33trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a33tr11= _a33tr11+ 1
   _a33trdis11= _a33trdis11+ RI.distance
   _a33trtim11= _a33trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a33tr12 = _a33tr12 + 1
   _a33trdis12 = _a33trdis12 + RI.distance
   _a33trtim12 = _a33trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a33tr13 = _a33tr13 + 1
   _a33trdis13 = _a33trdis13 + RI.distance
   _a33trtim13 = _a33trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 4)          ;Destination = rural
   _a34tr = _a34tr + 1
   _a34trdis = _a34trdis + RI.distance
   _a34trtim = _a34trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a34tr1 = _a34tr1 + 1
   _a34trdis1 = _a34trdis1 + RI.distance
   _a34trtim1 = _a34trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a34tr2 = _a34tr2 + 1
   _a34trdis2 = _a34trdis2 + RI.distance
   _a34trtim2 = _a34trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a34tr3 = _a34tr3 + 1
   _a34trdis3 = _a34trdis3 + RI.distance
   _a34trtim3 = _a34trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a34tr4 = _a34tr4 + 1
   _a34trdis4 = _a34trdis4 + RI.distance
   _a34trtim4 = _a34trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a34tr5 = _a34tr5 + 1
   _a34trdis5 = _a34trdis5 + RI.distance
   _a34trtim5 = _a34trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a34tr6 = _a34tr6 + 1
   _a34trdis6 = _a34trdis6 + RI.distance
   _a34trtim6 = _a34trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a34tr7 = _a34tr7 + 1
   _a34trdis7 = _a34trdis7 + RI.distance
   _a34trtim7 = _a34trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a34tr8 = _a34tr8 + 1
   _a34trdis8 = _a34trdis8 + RI.distance
   _a34trtim8 = _a34trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a34tr9 = _a34tr9 + 1
   _a34trdis9 = _a34trdis9 + RI.distance
   _a34trtim9 = _a34trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a34tr10 = _a34tr10 + 1
   _a34trdis10 = _a34trdis10 + RI.distance
   _a34trtim10 = _a34trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a34tr11= _a34tr11+ 1
   _a34trdis11= _a34trdis11+ RI.distance
   _a34trtim11= _a34trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a34tr12 = _a34tr12 + 1
   _a34trdis12 = _a34trdis12 + RI.distance
   _a34trtim12 = _a34trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a34tr13 = _a34tr13 + 1
   _a34trdis13 = _a34trdis13 + RI.distance
   _a34trtim13 = _a34trtim13 + RI.time
  ENDIF ;trip mode
 ENDIF ;destination area type
ELSEIF(OAT = 4)        ;Origin = rural
 IF(DAT = 1)          ;Destination = major activity center
   _a41tr = _a41tr + 1
   _a41trdis = _a41trdis + RI.distance
   _a41trtim = _a41trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a41tr1 = _a41tr1 + 1
   _a41trdis1 = _a41trdis1 + RI.distance
   _a41trtim1 = _a41trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a41tr2 = _a41tr2 + 1
   _a41trdis2 = _a41trdis2 + RI.distance
   _a41trtim2 = _a41trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a41tr3 = _a41tr3 + 1
   _a41trdis3 = _a41trdis3 + RI.distance
   _a41trtim3 = _a41trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a41tr4 = _a41tr4 + 1
   _a41trdis4 = _a41trdis4 + RI.distance
   _a41trtim4 = _a41trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a41tr5 = _a41tr5 + 1
   _a41trdis5 = _a41trdis5 + RI.distance
   _a41trtim5 = _a41trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a41tr6 = _a41tr6 + 1
   _a41trdis6 = _a41trdis6 + RI.distance
   _a41trtim6 = _a41trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a41tr7 = _a41tr7 + 1
   _a41trdis7 = _a41trdis7 + RI.distance
   _a41trtim7 = _a41trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a41tr8 = _a41tr8 + 1
   _a41trdis8 = _a41trdis8 + RI.distance
   _a41trtim8 = _a41trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a41tr9 = _a41tr9 + 1
   _a41trdis9 = _a41trdis9 + RI.distance
   _a41trtim9 = _a41trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a41tr10 = _a41tr10 + 1
   _a41trdis10 = _a41trdis10 + RI.distance
   _a41trtim10 = _a41trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a41tr11= _a41tr11+ 1
   _a41trdis11= _a41trdis11+ RI.distance
   _a41trtim11= _a41trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a41tr12 = _a41tr12 + 1
   _a41trdis12 = _a41trdis12 + RI.distance
   _a41trtim12 = _a41trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a41tr13 = _a41tr13 + 1
   _a41trdis13 = _a41trdis13 + RI.distance
   _a41trtim13 = _a41trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 2)          ;Destination = urban
   _a42tr = _a42tr + 1
   _a42trdis = _a42trdis + RI.distance
   _a42trtim = _a42trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a42tr1 = _a42tr1 + 1
   _a42trdis1 = _a42trdis1 + RI.distance
   _a42trtim1 = _a42trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a42tr2 = _a42tr2 + 1
   _a42trdis2 = _a42trdis2 + RI.distance
   _a42trtim2 = _a42trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a42tr3 = _a42tr3 + 1
   _a42trdis3 = _a42trdis3 + RI.distance
   _a42trtim3 = _a42trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a42tr4 = _a42tr4 + 1
   _a42trdis4 = _a42trdis4 + RI.distance
   _a42trtim4 = _a42trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a42tr5 = _a42tr5 + 1
   _a42trdis5 = _a42trdis5 + RI.distance
   _a42trtim5 = _a42trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a42tr6 = _a42tr6 + 1
   _a42trdis6 = _a42trdis6 + RI.distance
   _a42trtim6 = _a42trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a42tr7 = _a42tr7 + 1
   _a42trdis7 = _a42trdis7 + RI.distance
   _a42trtim7 = _a42trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a42tr8 = _a42tr8 + 1
   _a42trdis8 = _a42trdis8 + RI.distance
   _a42trtim8 = _a42trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a42tr9 = _a42tr9 + 1
   _a42trdis9 = _a42trdis9 + RI.distance
   _a42trtim9 = _a42trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a42tr10 = _a42tr10 + 1
   _a42trdis10 = _a42trdis10 + RI.distance
   _a42trtim10 = _a42trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a42tr11= _a42tr11+ 1
   _a42trdis11= _a42trdis11+ RI.distance
   _a42trtim11= _a42trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a42tr12 = _a42tr12 + 1
   _a42trdis12 = _a42trdis12 + RI.distance
   _a42trtim12 = _a42trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a42tr13 = _a42tr13 + 1
   _a42trdis13 = _a42trdis13 + RI.distance
   _a42trtim13 = _a42trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 3)          ;Destination = suburban
   _a43tr = _a43tr + 1
   _a43trdis = _a43trdis + RI.distance
   _a43trtim = _a43trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a43tr1 = _a43tr1 + 1
   _a43trdis1 = _a43trdis1 + RI.distance
   _a43trtim1 = _a43trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a43tr2 = _a43tr2 + 1
   _a43trdis2 = _a43trdis2 + RI.distance
   _a43trtim2 = _a43trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a43tr3 = _a43tr3 + 1
   _a43trdis3 = _a43trdis3 + RI.distance
   _a43trtim3 = _a43trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a43tr4 = _a43tr4 + 1
   _a43trdis4 = _a43trdis4 + RI.distance
   _a43trtim4 = _a43trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a43tr5 = _a43tr5 + 1
   _a43trdis5 = _a43trdis5 + RI.distance
   _a43trtim5 = _a43trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a43tr6 = _a43tr6 + 1
   _a43trdis6 = _a43trdis6 + RI.distance
   _a43trtim6 = _a43trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a43tr7 = _a43tr7 + 1
   _a43trdis7 = _a43trdis7 + RI.distance
   _a43trtim7 = _a43trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a43tr8 = _a43tr8 + 1
   _a43trdis8 = _a43trdis8 + RI.distance
   _a43trtim8 = _a43trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a43tr9 = _a43tr9 + 1
   _a43trdis9 = _a43trdis9 + RI.distance
   _a43trtim9 = _a43trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a43tr10 = _a43tr10 + 1
   _a43trdis10 = _a43trdis10 + RI.distance
   _a43trtim10 = _a43trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a43tr11= _a43tr11+ 1
   _a43trdis11= _a43trdis11+ RI.distance
   _a43trtim11= _a43trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a43tr12 = _a43tr12 + 1
   _a43trdis12 = _a43trdis12 + RI.distance
   _a43trtim12 = _a43trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a43tr13 = _a43tr13 + 1
   _a43trdis13 = _a43trdis13 + RI.distance
   _a43trtim13 = _a43trtim13 + RI.time
  ENDIF ;trip mode
 ELSEIF(DAT = 4)          ;Destination = rural
   _a44tr = _a44tr + 1
   _a44trdis = _a44trdis + RI.distance
   _a44trtim = _a44trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _a44tr1 = _a44tr1 + 1
   _a44trdis1 = _a44trdis1 + RI.distance
   _a44trtim1 = _a44trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _a44tr2 = _a44tr2 + 1
   _a44trdis2 = _a44trdis2 + RI.distance
   _a44trtim2 = _a44trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _a44tr3 = _a44tr3 + 1
   _a44trdis3 = _a44trdis3 + RI.distance
   _a44trtim3 = _a44trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _a44tr4 = _a44tr4 + 1
   _a44trdis4 = _a44trdis4 + RI.distance
   _a44trtim4 = _a44trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _a44tr5 = _a44tr5 + 1
   _a44trdis5 = _a44trdis5 + RI.distance
   _a44trtim5 = _a44trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _a44tr6 = _a44tr6 + 1
   _a44trdis6 = _a44trdis6 + RI.distance
   _a44trtim6 = _a44trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _a44tr7 = _a44tr7 + 1
   _a44trdis7 = _a44trdis7 + RI.distance
   _a44trtim7 = _a44trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _a44tr8 = _a44tr8 + 1
   _a44trdis8 = _a44trdis8 + RI.distance
   _a44trtim8 = _a44trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _a44tr9 = _a44tr9 + 1
   _a44trdis9 = _a44trdis9 + RI.distance
   _a44trtim9 = _a44trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _a44tr10 = _a44tr10 + 1
   _a44trdis10 = _a44trdis10 + RI.distance
   _a44trtim10 = _a44trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _a44tr11= _a44tr11+ 1
   _a44trdis11= _a44trdis11+ RI.distance
   _a44trtim11= _a44trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _a44tr12 = _a44tr12 + 1
   _a44trdis12 = _a44trdis12 + RI.distance
   _a44trtim12 = _a44trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _a44tr13 = _a44tr13 + 1
   _a44trdis13 = _a44trdis13 + RI.distance
   _a44trtim13 = _a44trtim13 + RI.time
  ENDIF ;trip mode
 ENDIF ;destination area type 
ENDIF  ;origin area type
;===================================================================================
;===================================================================================
;By household type
;---------------------------------------------
;single (1 person household not retired)
 IF(HSHTYPE = 1)
   _ht1tr = _ht1tr + 1
   _ht1trdis = _ht1trdis + RI.distance
   _ht1trtim = _ht1trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ht1tr1 = _ht1tr1 + 1
   _ht1trdis1 = _ht1trdis1 + RI.distance
   _ht1trtim1 = _ht1trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ht1tr2 = _ht1tr2 + 1
   _ht1trdis2 = _ht1trdis2 + RI.distance
   _ht1trtim2 = _ht1trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ht1tr3 = _ht1tr3 + 1
   _ht1trdis3 = _ht1trdis3 + RI.distance
   _ht1trtim3 = _ht1trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ht1tr4 = _ht1tr4 + 1
   _ht1trdis4 = _ht1trdis4 + RI.distance
   _ht1trtim4 = _ht1trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ht1tr5 = _ht1tr5 + 1
   _ht1trdis5 = _ht1trdis5 + RI.distance
   _ht1trtim5 = _ht1trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ht1tr6 = _ht1tr6 + 1
   _ht1trdis6 = _ht1trdis6 + RI.distance
   _ht1trtim6 = _ht1trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ht1tr7 = _ht1tr7 + 1
   _ht1trdis7 = _ht1trdis7 + RI.distance
   _ht1trtim7 = _ht1trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ht1tr8 = _ht1tr8 + 1
   _ht1trdis8 = _ht1trdis8 + RI.distance
   _ht1trtim8 = _ht1trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ht1tr9 = _ht1tr9 + 1
   _ht1trdis9 = _ht1trdis9 + RI.distance
   _ht1trtim9 = _ht1trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ht1tr10 = _ht1tr10 + 1
   _ht1trdis10 = _ht1trdis10 + RI.distance
   _ht1trtim10 = _ht1trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _ht1tr11= _ht1tr11+ 1
   _ht1trdis11= _ht1trdis11+ RI.distance
   _ht1trtim11= _ht1trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _ht1tr12 = _ht1tr12 + 1
   _ht1trdis12 = _ht1trdis12 + RI.distance
   _ht1trtim12 = _ht1trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ht1tr13 = _ht1tr13 + 1
   _ht1trdis13 = _ht1trdis13 + RI.distance
   _ht1trtim13 = _ht1trtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------
;single income w/ kids
 ELSEIF(HSHTYPE = 2)
   _ht2tr = _ht2tr + 1
   _ht2trdis = _ht2trdis + RI.distance
   _ht2trtim = _ht2trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ht2tr1 = _ht2tr1 + 1
   _ht2trdis1 = _ht2trdis1 + RI.distance
   _ht2trtim1 = _ht2trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ht2tr2 = _ht2tr2 + 1
   _ht2trdis2 = _ht2trdis2 + RI.distance
   _ht2trtim2 = _ht2trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ht2tr3 = _ht2tr3 + 1
   _ht2trdis3 = _ht2trdis3 + RI.distance
   _ht2trtim3 = _ht2trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ht2tr4 = _ht2tr4 + 1
   _ht2trdis4 = _ht2trdis4 + RI.distance
   _ht2trtim4 = _ht2trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ht2tr5 = _ht2tr5 + 1
   _ht2trdis5 = _ht2trdis5 + RI.distance
   _ht2trtim5 = _ht2trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ht2tr6 = _ht2tr6 + 1
   _ht2trdis6 = _ht2trdis6 + RI.distance
   _ht2trtim6 = _ht2trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ht2tr7 = _ht2tr7 + 1
   _ht2trdis7 = _ht2trdis7 + RI.distance
   _ht2trtim7 = _ht2trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ht2tr8 = _ht2tr8 + 1
   _ht2trdis8 = _ht2trdis8 + RI.distance
   _ht2trtim8 = _ht2trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ht2tr9 = _ht2tr9 + 1
   _ht2trdis9 = _ht2trdis9 + RI.distance
   _ht2trtim9 = _ht2trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ht2tr10 = _ht2tr10 + 1
   _ht2trdis10 = _ht2trdis10 + RI.distance
   _ht2trtim10 = _ht2trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _ht2tr11= _ht2tr11+ 1
   _ht2trdis11= _ht2trdis11+ RI.distance
   _ht2trtim11= _ht2trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _ht2tr12 = _ht2tr12 + 1
   _ht2trdis12 = _ht2trdis12 + RI.distance
   _ht2trtim12 = _ht2trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ht2tr13 = _ht2tr13 + 1
   _ht2trdis13 = _ht2trdis13 + RI.distance
   _ht2trtim13 = _ht2trtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------
;single income w/out kids
 ELSEIF(HSHTYPE = 3)
   _ht3tr = _ht3tr + 1
   _ht3trdis = _ht3trdis + RI.distance
   _ht3trtim = _ht3trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ht3tr1 = _ht3tr1 + 1
   _ht3trdis1 = _ht3trdis1 + RI.distance
   _ht3trtim1 = _ht3trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ht3tr2 = _ht3tr2 + 1
   _ht3trdis2 = _ht3trdis2 + RI.distance
   _ht3trtim2 = _ht3trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ht3tr3 = _ht3tr3 + 1
   _ht3trdis3 = _ht3trdis3 + RI.distance
   _ht3trtim3 = _ht3trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ht3tr4 = _ht3tr4 + 1
   _ht3trdis4 = _ht3trdis4 + RI.distance
   _ht3trtim4 = _ht3trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ht3tr5 = _ht3tr5 + 1
   _ht3trdis5 = _ht3trdis5 + RI.distance
   _ht3trtim5 = _ht3trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ht3tr6 = _ht3tr6 + 1
   _ht3trdis6 = _ht3trdis6 + RI.distance
   _ht3trtim6 = _ht3trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ht3tr7 = _ht3tr7 + 1
   _ht3trdis7 = _ht3trdis7 + RI.distance
   _ht3trtim7 = _ht3trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ht3tr8 = _ht3tr8 + 1
   _ht3trdis8 = _ht3trdis8 + RI.distance
   _ht3trtim8 = _ht3trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ht3tr9 = _ht3tr9 + 1
   _ht3trdis9 = _ht3trdis9 + RI.distance
   _ht3trtim9 = _ht3trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ht3tr10 = _ht3tr10 + 1
   _ht3trdis10 = _ht3trdis10 + RI.distance
   _ht3trtim10 = _ht3trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _ht3tr11= _ht3tr11+ 1
   _ht3trdis11= _ht3trdis11+ RI.distance
   _ht3trtim11= _ht3trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _ht3tr12 = _ht3tr12 + 1
   _ht3trdis12 = _ht3trdis12 + RI.distance
   _ht3trtim12 = _ht3trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ht3tr13 = _ht3tr13 + 1
   _ht3trdis13 = _ht3trdis13 + RI.distance
   _ht3trtim13 = _ht3trtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------
;double income w/ kids
 ELSEIF(HSHTYPE = 4)
   _ht4tr = _ht4tr + 1
   _ht4trdis = _ht4trdis + RI.distance
   _ht4trtim = _ht4trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ht4tr1 = _ht4tr1 + 1
   _ht4trdis1 = _ht4trdis1 + RI.distance
   _ht4trtim1 = _ht4trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ht4tr2 = _ht4tr2 + 1
   _ht4trdis2 = _ht4trdis2 + RI.distance
   _ht4trtim2 = _ht4trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ht4tr3 = _ht4tr3 + 1
   _ht4trdis3 = _ht4trdis3 + RI.distance
   _ht4trtim3 = _ht4trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ht4tr4 = _ht4tr4 + 1
   _ht4trdis4 = _ht4trdis4 + RI.distance
   _ht4trtim4 = _ht4trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ht4tr5 = _ht4tr5 + 1
   _ht4trdis5 = _ht4trdis5 + RI.distance
   _ht4trtim5 = _ht4trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ht4tr6 = _ht4tr6 + 1
   _ht4trdis6 = _ht4trdis6 + RI.distance
   _ht4trtim6 = _ht4trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ht4tr7 = _ht4tr7 + 1
   _ht4trdis7 = _ht4trdis7 + RI.distance
   _ht4trtim7 = _ht4trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ht4tr8 = _ht4tr8 + 1
   _ht4trdis8 = _ht4trdis8 + RI.distance
   _ht4trtim8 = _ht4trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ht4tr9 = _ht4tr9 + 1
   _ht4trdis9 = _ht4trdis9 + RI.distance
   _ht4trtim9 = _ht4trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ht4tr10 = _ht4tr10 + 1
   _ht4trdis10 = _ht4trdis10 + RI.distance
   _ht4trtim10 = _ht4trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _ht4tr11= _ht4tr11+ 1
   _ht4trdis11= _ht4trdis11+ RI.distance
   _ht4trtim11= _ht4trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _ht4tr12 = _ht4tr12 + 1
   _ht4trdis12 = _ht4trdis12 + RI.distance
   _ht4trtim12 = _ht4trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ht4tr13 = _ht4tr13 + 1
   _ht4trdis13 = _ht4trdis13 + RI.distance
   _ht4trtim13 = _ht4trtim13 + RI.time
  ENDIF ;trip mode  
;---------------------------------------------
;double income w/out kids
 ELSEIF(HSHTYPE = 5)
   _ht5tr = _ht5tr + 1
   _ht5trdis = _ht5trdis + RI.distance
   _ht5trtim = _ht5trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ht5tr1 = _ht5tr1 + 1
   _ht5trdis1 = _ht5trdis1 + RI.distance
   _ht5trtim1 = _ht5trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ht5tr2 = _ht5tr2 + 1
   _ht5trdis2 = _ht5trdis2 + RI.distance
   _ht5trtim2 = _ht5trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ht5tr3 = _ht5tr3 + 1
   _ht5trdis3 = _ht5trdis3 + RI.distance
   _ht5trtim3 = _ht5trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ht5tr4 = _ht5tr4 + 1
   _ht5trdis4 = _ht5trdis4 + RI.distance
   _ht5trtim4 = _ht5trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ht5tr5 = _ht5tr5 + 1
   _ht5trdis5 = _ht5trdis5 + RI.distance
   _ht5trtim5 = _ht5trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ht5tr6 = _ht5tr6 + 1
   _ht5trdis6 = _ht5trdis6 + RI.distance
   _ht5trtim6 = _ht5trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ht5tr7 = _ht5tr7 + 1
   _ht5trdis7 = _ht5trdis7 + RI.distance
   _ht5trtim7 = _ht5trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ht5tr8 = _ht5tr8 + 1
   _ht5trdis8 = _ht5trdis8 + RI.distance
   _ht5trtim8 = _ht5trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ht5tr9 = _ht5tr9 + 1
   _ht5trdis9 = _ht5trdis9 + RI.distance
   _ht5trtim9 = _ht5trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ht5tr10 = _ht5tr10 + 1
   _ht5trdis10 = _ht5trdis10 + RI.distance
   _ht5trtim10 = _ht5trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _ht5tr11= _ht5tr11+ 1
   _ht5trdis11= _ht5trdis11+ RI.distance
   _ht5trtim11= _ht5trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _ht5tr12 = _ht5tr12 + 1
   _ht5trdis12 = _ht5trdis12 + RI.distance
   _ht5trtim12 = _ht5trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ht5tr13 = _ht5tr13 + 1
   _ht5trdis13 = _ht5trdis13 + RI.distance
   _ht5trtim13 = _ht5trtim13 + RI.time
  ENDIF ;trip mode  
;---------------------------------------------
;retired
 ELSEIF(HSHTYPE = 6)
   _ht6tr = _ht6tr + 1
   _ht6trdis = _ht6trdis + RI.distance
   _ht6trtim = _ht6trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ht6tr1 = _ht6tr1 + 1
   _ht6trdis1 = _ht6trdis1 + RI.distance
   _ht6trtim1 = _ht6trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ht6tr2 = _ht6tr2 + 1
   _ht6trdis2 = _ht6trdis2 + RI.distance
   _ht6trtim2 = _ht6trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ht6tr3 = _ht6tr3 + 1
   _ht6trdis3 = _ht6trdis3 + RI.distance
   _ht6trtim3 = _ht6trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ht6tr4 = _ht6tr4 + 1
   _ht6trdis4 = _ht6trdis4 + RI.distance
   _ht6trtim4 = _ht6trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ht6tr5 = _ht6tr5 + 1
   _ht6trdis5 = _ht6trdis5 + RI.distance
   _ht6trtim5 = _ht6trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ht6tr6 = _ht6tr6 + 1
   _ht6trdis6 = _ht6trdis6 + RI.distance
   _ht6trtim6 = _ht6trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ht6tr7 = _ht6tr7 + 1
   _ht6trdis7 = _ht6trdis7 + RI.distance
   _ht6trtim7 = _ht6trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ht6tr8 = _ht6tr8 + 1
   _ht6trdis8 = _ht6trdis8 + RI.distance
   _ht6trtim8 = _ht6trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ht6tr9 = _ht6tr9 + 1
   _ht6trdis9 = _ht6trdis9 + RI.distance
   _ht6trtim9 = _ht6trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ht6tr10 = _ht6tr10 + 1
   _ht6trdis10 = _ht6trdis10 + RI.distance
   _ht6trtim10 = _ht6trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _ht6tr11= _ht6tr11+ 1
   _ht6trdis11= _ht6trdis11+ RI.distance
   _ht6trtim11= _ht6trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _ht6tr12 = _ht6tr12 + 1
   _ht6trdis12 = _ht6trdis12 + RI.distance
   _ht6trtim12 = _ht6trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ht6tr13 = _ht6tr13 + 1
   _ht6trdis13 = _ht6trdis13 + RI.distance
   _ht6trtim13 = _ht6trtim13 + RI.time
  ENDIF ;trip mode
;---------------------------------------------
;2+ person non-worker
 ELSEIF(HSHTYPE = 7)
   _ht7tr = _ht7tr + 1
   _ht7trdis = _ht7trdis + RI.distance
   _ht7trtim = _ht7trtim + RI.time
   IF(RI.tripmode = 1)                        ;sov free
   _ht7tr1 = _ht7tr1 + 1
   _ht7trdis1 = _ht7trdis1 + RI.distance
   _ht7trtim1 = _ht7trtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _ht7tr2 = _ht7tr2 + 1
   _ht7trdis2 = _ht7trdis2 + RI.distance
   _ht7trtim2 = _ht7trtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _ht7tr3 = _ht7tr3 + 1
   _ht7trdis3 = _ht7trdis3 + RI.distance
   _ht7trtim3 = _ht7trtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _ht7tr4 = _ht7tr4 + 1
   _ht7trdis4 = _ht7trdis4 + RI.distance
   _ht7trtim4 = _ht7trtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _ht7tr5 = _ht7tr5 + 1
   _ht7trdis5 = _ht7trdis5 + RI.distance
   _ht7trtim5 = _ht7trtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _ht7tr6 = _ht7tr6 + 1
   _ht7trdis6 = _ht7trdis6 + RI.distance
   _ht7trtim6 = _ht7trtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _ht7tr7 = _ht7tr7 + 1
   _ht7trdis7 = _ht7trdis7 + RI.distance
   _ht7trtim7 = _ht7trtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _ht7tr8 = _ht7tr8 + 1
   _ht7trdis8 = _ht7trdis8 + RI.distance
   _ht7trtim8 = _ht7trtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _ht7tr9 = _ht7tr9 + 1
   _ht7trdis9 = _ht7trdis9 + RI.distance
   _ht7trtim9 = _ht7trtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _ht7tr10 = _ht7tr10 + 1
   _ht7trdis10 = _ht7trdis10 + RI.distance
   _ht7trtim10 = _ht7trtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _ht7tr11= _ht7tr11+ 1
   _ht7trdis11= _ht7trdis11+ RI.distance
   _ht7trtim11= _ht7trtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _ht7tr12 = _ht7tr12 + 1
   _ht7trdis12 = _ht7trdis12 + RI.distance
   _ht7trtim12 = _ht7trtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _ht7tr13 = _ht7tr13 + 1
   _ht7trdis13 = _ht7trdis13 + RI.distance
   _ht7trtim13 = _ht7trtim13 + RI.time
  ENDIF ;trip mode  
 ENDIF ;household type
 
;===================================================================================
;summarize trips by mode for ETA / non-ETA
IF(ETA=1)
  IF(RI.tripmode = 1-2)      ;sov
   _etasov = _etasov + 1
  ELSEIF(RI.tripmode = 3-6)  ;carpool
   _etahov = _etahov + 1
  ELSEIF(RI.tripmode = 7-8)  ;bike/ped
   _etabpd = _etabpd + 1
  ELSEIF(RI.tripmode = 9-14) ;transit
   _etatrn = _etatrn + 1
  ENDIF
ELSE
  IF(RI.tripmode = 1-2)      ;sov
   _netasov = _netasov + 1
  ELSEIF(RI.tripmode = 3-6)  ;carpool
   _netahov = _netahov + 1
  ELSEIF(RI.tripmode = 7-8)  ;bike/ped
   _netabpd = _netabpd + 1
  ELSEIF(RI.tripmode = 9-14) ;transit
   _netatrn = _netatrn + 1
  ENDIF
ENDIF
;===================================================================================
;===================================================================================
;By trip purpose
;---------------------------------------------
  _tottrip = _tottrip + 1
 IF(RI.DESTPURP='atwork')
  _atwtrip = _atwtrip + 1
 ELSEIF(RI.DESTPURP='eatout')
  _eattrip = _eattrip + 1
 ELSEIF(RI.DESTPURP='escort')
  _esctrip = _esctrip + 1
 ELSEIF(RI.DESTPURP='home')
  _homtrip = _homtrip + 1
 ELSEIF(RI.DESTPURP='othdiscr')
  _distrip = _distrip + 1
 ELSEIF(RI.DESTPURP='othmaint')
  _mnttrip = _mnttrip + 1
 ELSEIF(RI.DESTPURP='school')
  _schtrip = _schtrip + 1
 ELSEIF(RI.DESTPURP='shopping')
  _shptrip = _shptrip + 1
 ELSEIF(RI.DESTPURP='social')
  _soctrip = _soctrip + 1
 ELSEIF(RI.DESTPURP='university')
  _unvtrip = _unvtrip + 1
 ELSEIF(RI.DESTPURP='work')
  _wrktrip = _wrktrip + 1
 ENDIF
;===================================================================================
;===================================================================================
;Daily trips by mode
   _alltr = _alltr + 1
   _alltrdis = _alltrdis + RI.distance
   _alltrtim = _alltrtim + RI.time
  IF(RI.tripmode = 1)                         ;sov free
   _alltr1 = _alltr1 + 1
   _alltrdis1 = _alltrdis1 + RI.distance
   _alltrtim1 = _alltrtim1 + RI.time
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _alltr2 = _alltr2 + 1
   _alltrdis2 = _alltrdis2 + RI.distance
   _alltrtim2 = _alltrtim2 + RI.time
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _alltr3 = _alltr3 + 1
   _alltrdis3 = _alltrdis3 + RI.distance
   _alltrtim3 = _alltrtim3 + RI.time
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _alltr4 = _alltr4 + 1
   _alltrdis4 = _alltrdis4 + RI.distance
   _alltrtim4 = _alltrtim4 + RI.time
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _alltr5 = _alltr5 + 1
   _alltrdis5 = _alltrdis5 + RI.distance
   _alltrtim5 = _alltrtim5 + RI.time
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _alltr6 = _alltr6 + 1
   _alltrdis6 = _alltrdis6 + RI.distance
   _alltrtim6 = _alltrtim6 + RI.time
  ELSEIF(RI.tripmode = 7)                     ;walk
   _alltr7 = _alltr7 + 1
   _alltrdis7 = _alltrdis7 + RI.distance
   _alltrtim7 = _alltrtim7 + RI.time
  ELSEIF(RI.tripmode = 8)                     ;bike
   _alltr8 = _alltr8 + 1
   _alltrdis8 = _alltrdis8 + RI.distance
   _alltrtim8 = _alltrtim8 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _alltr9 = _alltr9 + 1
   _alltrdis9 = _alltrdis9 + RI.distance
   _alltrtim9 = _alltrtim9 + RI.time
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _alltr10 = _alltr10 + 1
   _alltrdis10 = _alltrdis10 + RI.distance
   _alltrtim10 = _alltrtim10 + RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _alltr11= _alltr11+ 1
   _alltrdis11= _alltrdis11+ RI.distance
   _alltrtim11= _alltrtim11+ RI.time
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _alltr12 = _alltr12 + 1
   _alltrdis12 = _alltrdis12 + RI.distance
   _alltrtim12 = _alltrtim12 + RI.time
  ELSEIF(RI.tripmode = 15)
   _alltr13 = _alltr13 + 1
   _alltrdis13 = _alltrdis13 + RI.distance
   _alltrtim13 = _alltrtim13 + RI.time
  ENDIF ;trip mode
;===================================================================================
;TABULATE TRIPS BY MODE AND COMPARE FOR WORK VS NON-WORK TOURS

;set up numeric tour purpose (1 = trips on work tours, 2 = trips on non-work tours)
IF(RI.tourpurp='work_bluecollar')
 PURP = 1
ELSEIF(RI.tourpurp='work_health')
 PURP = 1
ELSEIF(RI.tourpurp='work_retailandfood')
 PURP = 1
ELSEIF(RI.tourpurp='work_services')
 PURP = 1
ELSEIF(RI.tourpurp='work_whitecollar')
 PURP = 1
ELSE
 PURP = 2
ENDIF

;process trips on work tours
 IF(PURP = 1)
  IF(RI.tripmode = 1)                         ;sov free
   _wrktourtr1 = _wrktourtr1 + 1
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _wrktourtr2 = _wrktourtr2 + 1
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _wrktourtr3 = _wrktourtr3 + 1
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _wrktourtr4 = _wrktourtr4 + 1
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _wrktourtr5 = _wrktourtr5 + 1
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _wrktourtr6 = _wrktourtr6 + 1
  ELSEIF(RI.tripmode = 7)                     ;walk
   _wrktourtr7 = _wrktourtr7 + 1
  ELSEIF(RI.tripmode = 8)                     ;bike
   _wrktourtr8 = _wrktourtr8 + 1
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _wrktourtr9 = _wrktourtr9 + 1
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _wrktourtr10 = _wrktourtr10 + 1
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _wrktourtr11= _wrktourtr11+ 1
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _wrktourtr12 = _wrktourtr12 + 1
  ELSEIF(RI.tripmode = 15)                     ;school bus
   _wrktourtr13 = _wrktourtr13 + 1
  ENDIF
 ELSE
  IF(RI.tripmode = 1)                         ;sov free
   _nwktourtr1 = _nwktourtr1 + 1
  ELSEIF(RI.tripmode = 2)                     ;sov pay
   _nwktourtr2 = _nwktourtr2 + 1
  ELSEIF(RI.tripmode = 3)                     ;sr2 free
   _nwktourtr3 = _nwktourtr3 + 1
  ELSEIF(RI.tripmode = 4)                     ;sr2 pay
   _nwktourtr4 = _nwktourtr4 + 1
  ELSEIF(RI.tripmode = 5)                     ;sr3 free
   _nwktourtr5 = _nwktourtr5 + 1
  ELSEIF(RI.tripmode = 6)                     ;sr3 pay
   _nwktourtr6 = _nwktourtr6 + 1
  ELSEIF(RI.tripmode = 7)                     ;walk
   _nwktourtr7 = _nwktourtr7 + 1
  ELSEIF(RI.tripmode = 8)                     ;bike
   _nwktourtr8 = _nwktourtr8 + 1
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm>0)    ;walk premium transit
   _nwktourtr9 = _nwktourtr9 + 1
  ELSEIF(RI.tripmode = 9-10 & RI.IVTPrm=0)    ;walk non-premium transit
   _nwktourtr10 = _nwktourtr10 + 1
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm>0)   ;pnr/knr premium transit
   _nwktourtr11= _nwktourtr11+ 1
  ELSEIF(RI.tripmode = 11-14 & RI.IVTPrm=0)   ;pnr/knr non-premium transit
   _nwktourtr12 = _nwktourtr12 + 1
  ELSEIF(RI.tripmode = 15)                     ;school bus
   _nwktourtr13 = _nwktourtr13 + 1
  ENDIF ;trip mode
 ENDIF ;work tours
;===================================================================================
;===================================================================
;Tabulate transit trips by travel time bins for specific trip legs
 WAIT = RI.wait1 + RI.wait2
 IVT = RI.ivtloc + RI.ivtprm
;---------------------------------------------------------
  IF(RI.tripmode = 9-10)    ;walk transit
   ; walk time ----------------------------
   IF(RI.walktrn >0)
    IF(RI.walktrn <= 5)
     _wwlk5 = _wwlk5 + 1
    ELSEIF(RI.walktrn <= 10)
     _wwlk10 = _wwlk10 + 1
    ELSEIF(RI.walktrn <= 15)
     _wwlk15 = _wwlk15 + 1
    ELSEIF(RI.walktrn <= 20)
     _wwlk20 = _wwlk20 + 1
    ELSEIF(RI.walktrn <= 25)
     _wwlk25 = _wwlk25 + 1
    ELSEIF(RI.walktrn <= 30)
     _wwlk30 = _wwlk30 + 1
    ELSEIF(RI.walktrn <= 35)
     _wwlk35 = _wwlk35 + 1
    ELSEIF(RI.walktrn <= 40)
     _wwlk40 = _wwlk40 + 1
    ELSEIF(RI.walktrn <= 45)
     _wwlk45 = _wwlk45 + 1
    ELSEIF(RI.walktrn <= 60)
     _wwlk60 = _wwlk60 + 1
    ELSE
     _wwlk99 = _wwlk99 + 1
    ENDIF  ;check time
   ENDIF ;check walk > 0
   ; drive time ---------------------------
     _wdrv5 = 0
     _wdrv10 = 0
     _wdrv15 = 0
     _wdrv20 = 0
     _wdrv25 = 0
     _wdrv30 = 0
     _wdrv35 = 0
     _wdrv40 = 0
     _wdrv45 = 0
     _wdrv60 = 0
     _wdrv99 = 0
   ;wait time ----------------------------
   IF(wait > 0)
    IF(wait <= 5)
     _wxfr5 = _wxfr5 + 1
    ELSEIF(wait <= 10)
     _wxfr10 = _wxfr10 + 1
    ELSEIF(wait <= 15)
     _wxfr15 = _wxfr15 + 1
    ELSEIF(wait <= 20)
     _wxfr20 = _wxfr20 + 1
    ELSEIF(wait <= 25)
     _wxfr25 = _wxfr25 + 1
    ELSEIF(wait <= 30)
     _wxfr30 = _wxfr30 + 1
    ELSEIF(wait <= 35)
     _wxfr35 = _wxfr35 + 1
    ELSEIF(wait <= 40)
     _wxfr40 = _wxfr40 + 1
    ELSEIF(wait <= 45)
     _wxfr45 = _wxfr45 + 1
    ELSEIF(wait <= 60)
     _wxfr60 = _wxfr60 + 1
    ELSE
     _wxfr99 = _wxfr99 + 1
    ENDIF  ;check time
   ENDIF ;check wait > 0
   ;ivt time -----------------------------
   IF(ivt > 0)
    IF(ivt <= 5)
     _wivt5 = _wivt5 + 1
    ELSEIF(ivt <= 10)
     _wivt10 = _wivt10 + 1
    ELSEIF(ivt <= 15)
     _wivt15 = _wivt15 + 1
    ELSEIF(ivt <= 20)
     _wivt20 = _wivt20 + 1
    ELSEIF(ivt <= 25)
     _wivt25 = _wivt25 + 1
    ELSEIF(ivt <= 30)
     _wivt30 = _wivt30 + 1
    ELSEIF(ivt <= 35)
     _wivt35 = _wivt35 + 1
    ELSEIF(ivt <= 40)
     _wivt40 = _wivt40 + 1
    ELSEIF(ivt <= 45)
     _wivt45 = _wivt45 + 1
    ELSEIF(ivt <= 60)
     _wivt60 = _wivt60 + 1
    ELSE
     _wivt99 = _wivt99 + 1
    ENDIF  ;check time
   ENDIF ;check wait > 0
   ;----------------------------
;---------------------------------------------------------
  ELSEIF(RI.tripmode = 11-14)    ;drive transit
   ; walk time ----------------------------
   IF(RI.walktrn >0)
    IF(RI.walktrn <= 5)
     _dwlk5 = _dwlk5 + 1
    ELSEIF(RI.walktrn <= 10)
     _dwlk10 = _dwlk10 + 1
    ELSEIF(RI.walktrn <= 15)
     _dwlk15 = _dwlk15 + 1
    ELSEIF(RI.walktrn <= 20)
     _dwlk20 = _dwlk20 + 1
    ELSEIF(RI.walktrn <= 25)
     _dwlk25 = _dwlk25 + 1
    ELSEIF(RI.walktrn <= 30)
     _dwlk30 = _dwlk30 + 1
    ELSEIF(RI.walktrn <= 35)
     _dwlk35 = _dwlk35 + 1
    ELSEIF(RI.walktrn <= 40)
     _dwlk40 = _dwlk40 + 1
    ELSEIF(RI.walktrn <= 45)
     _dwlk45 = _dwlk45 + 1
    ELSEIF(RI.walktrn <= 60)
     _dwlk60 = _dwlk60 + 1
    ELSE
     _dwlk99 = _dwlk99 + 1
    ENDIF  ;check time
   ENDIF ;check walk > 0
   ; drive time ---------------------------
   IF(RI.autotrn >0)
    IF(RI.autotrn <= 5)
     _ddrv5 = _ddrv5 + 1
    ELSEIF(RI.autotrn <= 10)
     _ddrv10 = _ddrv10 + 1
    ELSEIF(RI.autotrn <= 15)
     _ddrv15 = _ddrv15 + 1
    ELSEIF(RI.autotrn <= 20)
     _ddrv20 = _ddrv20 + 1
    ELSEIF(RI.autotrn <= 25)
     _ddrv25 = _ddrv25 + 1
    ELSEIF(RI.autotrn <= 30)
     _ddrv30 = _ddrv30 + 1
    ELSEIF(RI.autotrn <= 35)
     _ddrv35 = _ddrv35 + 1
    ELSEIF(RI.autotrn <= 40)
     _ddrv40 = _ddrv40 + 1
    ELSEIF(RI.autotrn <= 45)
     _ddrv45 = _ddrv45 + 1
    ELSEIF(RI.autotrn <= 60)
     _ddrv60 = _ddrv60 + 1
    ELSE
     _ddrv99 = _ddrv99 + 1
    ENDIF  ;check time
   ENDIF ;check walk > 0
   ;wait time ----------------------------
   IF(wait > 0)
    IF(wait <= 5)
     _dxfr5 = _dxfr5 + 1
    ELSEIF(wait <= 10)
     _dxfr10 = _dxfr10 + 1
    ELSEIF(wait <= 15)
     _dxfr15 = _dxfr15 + 1
    ELSEIF(wait <= 20)
     _dxfr20 = _dxfr20 + 1
    ELSEIF(wait <= 25)
     _dxfr25 = _dxfr25 + 1
    ELSEIF(wait <= 30)
     _dxfr30 = _dxfr30 + 1
    ELSEIF(wait <= 35)
     _dxfr35 = _dxfr35 + 1
    ELSEIF(wait <= 40)
     _dxfr40 = _dxfr40 + 1
    ELSEIF(wait <= 45)
     _dxfr45 = _dxfr45 + 1
    ELSEIF(wait <= 60)
     _dxfr60 = _dxfr60 + 1
    ELSE
     _dxfr99 = _dxfr99 + 1
    ENDIF  ;check time
   ENDIF ;check wait > 0
   ;ivt time -----------------------------
   IF(ivt > 0)
    IF(ivt <= 5)
     _divt5 = _divt5 + 1
    ELSEIF(ivt <= 10)
     _divt10 = _divt10 + 1
    ELSEIF(ivt <  15)
     _divt15 = _divt15 + 1
    ELSEIF(ivt <= 20)
     _divt20 = _divt20 + 1
    ELSEIF(ivt <= 25)
     _divt25 = _divt25 + 1
    ELSEIF(ivt <= 30)
     _divt30 = _divt30 + 1
    ELSEIF(ivt <= 35)
     _divt35 = _divt35 + 1
    ELSEIF(ivt <= 40)
     _divt40 = _divt40 + 1
    ELSEIF(ivt <= 45)
     _divt45 = _divt45 + 1
    ELSEIF(ivt <= 60)
     _divt60 = _divt60 + 1
    ELSE
     _divt99 = _divt99 + 1
    ENDIF  ;check time
   ENDIF ;check wait > 0
   ;----------------------------  
  ENDIF ;trip mode  
;============================================================================
;===================================================================================
;===================================================================
;Tabulate transit trips by travel time bins for specific trip legs
; Compute averages based on total travel time
 
;---------------------------------------------------------
  IF(RI.tripmode = 9-10)    ;walk transit
   ; check total time
   IF(RI.time > 0)
    IF(RI.time <=10)
     _wcntb1 = _wcntb1 + 1
     _wwlkb1 = _wwlkb1 + RI.walktrn
     _wautb1 = _wautb1 + RI.autotrn
     _wxfrb1 = _wxfrb1 + RI.wait1 + RI.wait2
     _wivtb1 = _wivtb1 + RI.ivtloc + RI.ivtprm
     _wtmeb1 = _wtmeb1 + RI.time
    ELSEIF(RI.time <=20)
     _wcntb2 = _wcntb2 + 1
     _wwlkb2 = _wwlkb2 + RI.walktrn
     _wautb2 = _wautb2 + RI.autotrn
     _wxfrb2 = _wxfrb2 + RI.wait1 + RI.wait2
     _wivtb2 = _wivtb2 + RI.ivtloc + RI.ivtprm
     _wtmeb2 = _wtmeb2 + RI.time
    ELSEIF(RI.time <=30)
     _wcntb3 = _wcntb3 + 1
     _wwlkb3 = _wwlkb3 + RI.walktrn
     _wautb3 = _wautb3 + RI.autotrn
     _wxfrb3 = _wxfrb3 + RI.wait1 + RI.wait2
     _wivtb3 = _wivtb3 + RI.ivtloc + RI.ivtprm
     _wtmeb3 = _wtmeb3 + RI.time
    ELSEIF(RI.time <=45)
     _wcntb4 = _wcntb4 + 1
     _wwlkb4 = _wwlkb4 + RI.walktrn
     _wautb4 = _wautb4 + RI.autotrn
     _wxfrb4 = _wxfrb4 + RI.wait1 + RI.wait2
     _wivtb4 = _wivtb4 + RI.ivtloc + RI.ivtprm
     _wtmeb4 = _wtmeb4 + RI.time
    ELSEIF(RI.time <=60)
     _wcntb5 = _wcntb5 + 1
     _wwlkb5 = _wwlkb5 + RI.walktrn
     _wautb5 = _wautb5 + RI.autotrn
     _wxfrb5 = _wxfrb5 + RI.wait1 + RI.wait2
     _wivtb5 = _wivtb5 + RI.ivtloc + RI.ivtprm
     _wtmeb5 = _wtmeb5 + RI.time
    ELSEIF(RI.time <=75)
     _wcntb6 = _wcntb6 + 1
     _wwlkb6 = _wwlkb6 + RI.walktrn
     _wautb6 = _wautb6 + RI.autotrn
     _wxfrb6 = _wxfrb6 + RI.wait1 + RI.wait2
     _wivtb6 = _wivtb6 + RI.ivtloc + RI.ivtprm
     _wtmeb6 = _wtmeb6 + RI.time
    ELSE
     _wcntb7 = _wcntb7 + 1
     _wwlkb7 = _wwlkb7 + RI.walktrn
     _wautb7 = _wautb7 + RI.autotrn
     _wxfrb7 = _wxfrb7 + RI.wait1 + RI.wait2
     _wivtb7 = _wivtb7 + RI.ivtloc + RI.ivtprm
     _wtmeb7 = _wtmeb7 + RI.time
    ENDIF
   ENDIF
;---------------------------------------------------------
  ELSEIF(RI.tripmode = 11-14)    ;drive transit
   ; check total time
   IF(RI.time > 0)
    IF(RI.time <=10)
     _acntb1 = _acntb1 + 1
     _awlkb1 = _awlkb1 + RI.walktrn
     _aautb1 = _aautb1 + RI.autotrn
     _axfrb1 = _axfrb1 + RI.wait1 + RI.wait2
     _aivtb1 = _aivtb1 + RI.ivtloc + RI.ivtprm
     _atmeb1 = _atmeb1 + RI.time
    ELSEIF(RI.time <=20)
     _acntb2 = _acntb2 + 1
     _awlkb2 = _awlkb2 + RI.walktrn
     _aautb2 = _aautb2 + RI.autotrn
     _axfrb2 = _axfrb2 + RI.wait1 + RI.wait2
     _aivtb2 = _aivtb2 + RI.ivtloc + RI.ivtprm
     _atmeb2 = _atmeb2 + RI.time
    ELSEIF(RI.time <=30)
     _acntb3 = _acntb3 + 1
     _awlkb3 = _awlkb3 + RI.walktrn
     _aautb3 = _aautb3 + RI.autotrn
     _axfrb3 = _axfrb3 + RI.wait1 + RI.wait2
     _aivtb3 = _aivtb3 + RI.ivtloc + RI.ivtprm
     _atmeb3 = _atmeb3 + RI.time
    ELSEIF(RI.time <=45)
     _acntb4 = _acntb4 + 1
     _awlkb4 = _awlkb4 + RI.walktrn
     _aautb4 = _aautb4 + RI.autotrn
     _axfrb4 = _axfrb4 + RI.wait1 + RI.wait2
     _aivtb4 = _aivtb4 + RI.ivtloc + RI.ivtprm
     _atmeb4 = _atmeb4 + RI.time
    ELSEIF(RI.time <=60)
     _acntb5 = _acntb5 + 1
     _awlkb5 = _awlkb5 + RI.walktrn
     _aautb5 = _aautb5 + RI.autotrn
     _axfrb5 = _axfrb5 + RI.wait1 + RI.wait2
     _aivtb5 = _aivtb5 + RI.ivtloc + RI.ivtprm
     _atmeb5 = _atmeb5 + RI.time
    ELSEIF(RI.time <=75)
     _acntb6 = _acntb6 + 1
     _awlkb6 = _awlkb6 + RI.walktrn
     _aautb6 = _aautb6 + RI.autotrn
     _axfrb6 = _axfrb6 + RI.wait1 + RI.wait2
     _aivtb6 = _aivtb6 + RI.ivtloc + RI.ivtprm
     _atmeb6 = _atmeb6 + RI.time
    ELSE
     _acntb7 = _acntb7 + 1
     _awlkb7 = _awlkb7 + RI.walktrn
     _aautb7 = _aautb7 + RI.autotrn
     _axfrb7 = _axfrb7 + RI.wait1 + RI.wait2
     _aivtb7 = _aivtb7 + RI.ivtloc + RI.ivtprm
     _atmeb7 = _atmeb7 + RI.time
    ENDIF
   ENDIF
   ;----------------------------  
  ENDIF ;trip mode  
;============================================================================
ENDIF  ;rec number > 1
;===================================================
IF(RECI.RECNO=RECI.NUMRECORDS)
;===================================================
;PERSON TYPE AVERAGES
;------------------------------------------------
;full-time worker averages
 _ftwtrd =   _ftwtrdis /  max(1,_ftwtr)
 _ftwtrd1 =  _ftwtrdis1 / max(1,_ftwtr1)
 _ftwtrd2 =  _ftwtrdis2 / max(1,_ftwtr2)
 _ftwtrd3 =  _ftwtrdis3 / max(1,_ftwtr3)
 _ftwtrd4 =  _ftwtrdis4 / max(1,_ftwtr4)
 _ftwtrd5 =  _ftwtrdis5 / max(1,_ftwtr5)
 _ftwtrd6 =  _ftwtrdis6 / max(1,_ftwtr6)
 _ftwtrd7 =  _ftwtrdis7 / max(1,_ftwtr7)
 _ftwtrd8 =  _ftwtrdis8 / max(1,_ftwtr8)
 _ftwtrd9 =  _ftwtrdis9 / max(1,_ftwtr9)
 _ftwtrd10 = _ftwtrdis10 / max(1,_ftwtr10)
 _ftwtrd11 = _ftwtrdis11 / max(1,_ftwtr11)
 _ftwtrd12 = _ftwtrdis12 / max(1,_ftwtr12)
 _ftwtrd13 = _ftwtrdis13 / max(1,_ftwtr13)
 _ftwtrt =   _ftwtrtim /   max(1,_ftwtr)
 _ftwtrt1 =  _ftwtrtim1 /  max(1,_ftwtr1)
 _ftwtrt2 =  _ftwtrtim2 /  max(1,_ftwtr2)
 _ftwtrt3 =  _ftwtrtim3 /  max(1,_ftwtr3)
 _ftwtrt4 =  _ftwtrtim4 /  max(1,_ftwtr4)
 _ftwtrt5 =  _ftwtrtim5 /  max(1,_ftwtr5)
 _ftwtrt6 =  _ftwtrtim6 /  max(1,_ftwtr6)
 _ftwtrt7 =  _ftwtrtim7 /  max(1,_ftwtr7)
 _ftwtrt8 =  _ftwtrtim8 /  max(1,_ftwtr8)
 _ftwtrt9 =  _ftwtrtim9 /  max(1,_ftwtr9)
 _ftwtrt10=  _ftwtrtim10 /  max(1,_ftwtr10)
 _ftwtrt11=  _ftwtrtim11 /  max(1,_ftwtr11)
 _ftwtrt12=  _ftwtrtim12 /  max(1,_ftwtr12)
 _ftwtrt13=  _ftwtrtim13 /  max(1,_ftwtr13)
;------------------------------------------------
;part-time worker averages
 _ptwtrd =   _ptwtrdis /  max(1,_ptwtr)
 _ptwtrd1 =  _ptwtrdis1 / max(1,_ptwtr1)
 _ptwtrd2 =  _ptwtrdis2 / max(1,_ptwtr2)
 _ptwtrd3 =  _ptwtrdis3 / max(1,_ptwtr3)
 _ptwtrd4 =  _ptwtrdis4 / max(1,_ptwtr4)
 _ptwtrd5 =  _ptwtrdis5 / max(1,_ptwtr5)
 _ptwtrd6 =  _ptwtrdis6 / max(1,_ptwtr6)
 _ptwtrd7 =  _ptwtrdis7 / max(1,_ptwtr7)
 _ptwtrd8 =  _ptwtrdis8 / max(1,_ptwtr8)
 _ptwtrd9 =  _ptwtrdis9 / max(1,_ptwtr9)
 _ptwtrd10 = _ptwtrdis10 / max(1,_ptwtr10)
 _ptwtrd11 = _ptwtrdis11 / max(1,_ptwtr11)
 _ptwtrd12 = _ptwtrdis12 / max(1,_ptwtr12)
 _ptwtrd13 = _ptwtrdis13 / max(1,_ptwtr13)
 _ptwtrt =   _ptwtrtim /   max(1,_ptwtr)
 _ptwtrt1 =  _ptwtrtim1 /  max(1,_ptwtr1)
 _ptwtrt2 =  _ptwtrtim2 /  max(1,_ptwtr2)
 _ptwtrt3 =  _ptwtrtim3 /  max(1,_ptwtr3)
 _ptwtrt4 =  _ptwtrtim4 /  max(1,_ptwtr4)
 _ptwtrt5 =  _ptwtrtim5 /  max(1,_ptwtr5)
 _ptwtrt6 =  _ptwtrtim6 /  max(1,_ptwtr6)
 _ptwtrt7 =  _ptwtrtim7 /  max(1,_ptwtr7)
 _ptwtrt8 =  _ptwtrtim8 /  max(1,_ptwtr8)
 _ptwtrt9 =  _ptwtrtim9 /  max(1,_ptwtr9)
 _ptwtrt10=  _ptwtrtim10 /  max(1,_ptwtr10)
 _ptwtrt11=  _ptwtrtim11 /  max(1,_ptwtr11)
 _ptwtrt12=  _ptwtrtim12 /  max(1,_ptwtr12)
 _ptwtrt13=  _ptwtrtim13 /  max(1,_ptwtr13)
;------------------------------------------------
;university student averages
 _unvtrd =   _unvtrdis /  max(1,_unvtr)
 _unvtrd1 =  _unvtrdis1 / max(1,_unvtr1)
 _unvtrd2 =  _unvtrdis2 / max(1,_unvtr2)
 _unvtrd3 =  _unvtrdis3 / max(1,_unvtr3)
 _unvtrd4 =  _unvtrdis4 / max(1,_unvtr4)
 _unvtrd5 =  _unvtrdis5 / max(1,_unvtr5)
 _unvtrd6 =  _unvtrdis6 / max(1,_unvtr6)
 _unvtrd7 =  _unvtrdis7 / max(1,_unvtr7)
 _unvtrd8 =  _unvtrdis8 / max(1,_unvtr8)
 _unvtrd9 =  _unvtrdis9 / max(1,_unvtr9)
 _unvtrd10 = _unvtrdis10 / max(1,_unvtr10)
 _unvtrd11 = _unvtrdis11 / max(1,_unvtr11)
 _unvtrd12 = _unvtrdis12 / max(1,_unvtr12)
 _unvtrd13 = _unvtrdis13 / max(1,_unvtr13)
 _unvtrt =   _unvtrtim /   max(1,_unvtr)
 _unvtrt1 =  _unvtrtim1 /  max(1,_unvtr1)
 _unvtrt2 =  _unvtrtim2 /  max(1,_unvtr2)
 _unvtrt3 =  _unvtrtim3 /  max(1,_unvtr3)
 _unvtrt4 =  _unvtrtim4 /  max(1,_unvtr4)
 _unvtrt5 =  _unvtrtim5 /  max(1,_unvtr5)
 _unvtrt6 =  _unvtrtim6 /  max(1,_unvtr6)
 _unvtrt7 =  _unvtrtim7 /  max(1,_unvtr7)
 _unvtrt8 =  _unvtrtim8 /  max(1,_unvtr8)
 _unvtrt9 =  _unvtrtim9 /  max(1,_unvtr9)
 _unvtrt10=  _unvtrtim10 /  max(1,_unvtr10)
 _unvtrt11=  _unvtrtim11 /  max(1,_unvtr11)
 _unvtrt12=  _unvtrtim12 /  max(1,_unvtr12)
 _unvtrt13=  _unvtrtim13 /  max(1,_unvtr13)
;------------------------------------------------
;non-worker averages
 _nwktrd =   _nwktrdis /  max(1,_nwktr)
 _nwktrd1 =  _nwktrdis1 / max(1,_nwktr1)
 _nwktrd2 =  _nwktrdis2 / max(1,_nwktr2)
 _nwktrd3 =  _nwktrdis3 / max(1,_nwktr3)
 _nwktrd4 =  _nwktrdis4 / max(1,_nwktr4)
 _nwktrd5 =  _nwktrdis5 / max(1,_nwktr5)
 _nwktrd6 =  _nwktrdis6 / max(1,_nwktr6)
 _nwktrd7 =  _nwktrdis7 / max(1,_nwktr7)
 _nwktrd8 =  _nwktrdis8 / max(1,_nwktr8)
 _nwktrd9 =  _nwktrdis9 / max(1,_nwktr9)
 _nwktrd10 = _nwktrdis10 / max(1,_nwktr10)
 _nwktrd11 = _nwktrdis11 / max(1,_nwktr11)
 _nwktrd12 = _nwktrdis12 / max(1,_nwktr12)
 _nwktrd13 = _nwktrdis13 / max(1,_nwktr13)
 _nwktrt =   _nwktrtim /   max(1,_nwktr)
 _nwktrt1 =  _nwktrtim1 /  max(1,_nwktr1)
 _nwktrt2 =  _nwktrtim2 /  max(1,_nwktr2)
 _nwktrt3 =  _nwktrtim3 /  max(1,_nwktr3)
 _nwktrt4 =  _nwktrtim4 /  max(1,_nwktr4)
 _nwktrt5 =  _nwktrtim5 /  max(1,_nwktr5)
 _nwktrt6 =  _nwktrtim6 /  max(1,_nwktr6)
 _nwktrt7 =  _nwktrtim7 /  max(1,_nwktr7)
 _nwktrt8 =  _nwktrtim8 /  max(1,_nwktr8)
 _nwktrt9 =  _nwktrtim9 /  max(1,_nwktr9)
 _nwktrt10=  _nwktrtim10 /  max(1,_nwktr10)
 _nwktrt11=  _nwktrtim11 /  max(1,_nwktr11)
 _nwktrt12=  _nwktrtim12 /  max(1,_nwktr12)
 _nwktrt13=  _nwktrtim13 /  max(1,_nwktr13)
;------------------------------------------------
;retired averages
 _rettrd =   _rettrdis /  max(1,_rettr)
 _rettrd1 =  _rettrdis1 / max(1,_rettr1)
 _rettrd2 =  _rettrdis2 / max(1,_rettr2)
 _rettrd3 =  _rettrdis3 / max(1,_rettr3)
 _rettrd4 =  _rettrdis4 / max(1,_rettr4)
 _rettrd5 =  _rettrdis5 / max(1,_rettr5)
 _rettrd6 =  _rettrdis6 / max(1,_rettr6)
 _rettrd7 =  _rettrdis7 / max(1,_rettr7)
 _rettrd8 =  _rettrdis8 / max(1,_rettr8)
 _rettrd9 =  _rettrdis9 / max(1,_rettr9)
 _rettrd10 = _rettrdis10 / max(1,_rettr10)
 _rettrd11 = _rettrdis11 / max(1,_rettr11)
 _rettrd12 = _rettrdis12 / max(1,_rettr12)
 _rettrd13 = _rettrdis13 / max(1,_rettr13)
 _rettrt =   _rettrtim /   max(1,_rettr)
 _rettrt1 =  _rettrtim1 /  max(1,_rettr1)
 _rettrt2 =  _rettrtim2 /  max(1,_rettr2)
 _rettrt3 =  _rettrtim3 /  max(1,_rettr3)
 _rettrt4 =  _rettrtim4 /  max(1,_rettr4)
 _rettrt5 =  _rettrtim5 /  max(1,_rettr5)
 _rettrt6 =  _rettrtim6 /  max(1,_rettr6)
 _rettrt7 =  _rettrtim7 /  max(1,_rettr7)
 _rettrt8 =  _rettrtim8 /  max(1,_rettr8)
 _rettrt9 =  _rettrtim9 /  max(1,_rettr9)
 _rettrt10=  _rettrtim10 /  max(1,_rettr10)
 _rettrt11=  _rettrtim11 /  max(1,_rettr11)
 _rettrt12=  _rettrtim12 /  max(1,_rettr12)
 _rettrt13=  _rettrtim13 /  max(1,_rettr13)
;------------------------------------------------
;student of driving age averages
 _sdatrd =   _sdatrdis /  max(1,_sdatr)
 _sdatrd1 =  _sdatrdis1 / max(1,_sdatr1)
 _sdatrd2 =  _sdatrdis2 / max(1,_sdatr2)
 _sdatrd3 =  _sdatrdis3 / max(1,_sdatr3)
 _sdatrd4 =  _sdatrdis4 / max(1,_sdatr4)
 _sdatrd5 =  _sdatrdis5 / max(1,_sdatr5)
 _sdatrd6 =  _sdatrdis6 / max(1,_sdatr6)
 _sdatrd7 =  _sdatrdis7 / max(1,_sdatr7)
 _sdatrd8 =  _sdatrdis8 / max(1,_sdatr8)
 _sdatrd9 =  _sdatrdis9 / max(1,_sdatr9)
 _sdatrd10 = _sdatrdis10 / max(1,_sdatr10)
 _sdatrd11 = _sdatrdis11 / max(1,_sdatr11)
 _sdatrd12 = _sdatrdis12 / max(1,_sdatr12)
 _sdatrd13 = _sdatrdis13 / max(1,_sdatr13)
 _sdatrt =   _sdatrtim /   max(1,_sdatr)
 _sdatrt1 =  _sdatrtim1 /  max(1,_sdatr1)
 _sdatrt2 =  _sdatrtim2 /  max(1,_sdatr2)
 _sdatrt3 =  _sdatrtim3 /  max(1,_sdatr3)
 _sdatrt4 =  _sdatrtim4 /  max(1,_sdatr4)
 _sdatrt5 =  _sdatrtim5 /  max(1,_sdatr5)
 _sdatrt6 =  _sdatrtim6 /  max(1,_sdatr6)
 _sdatrt7 =  _sdatrtim7 /  max(1,_sdatr7)
 _sdatrt8 =  _sdatrtim8 /  max(1,_sdatr8)
 _sdatrt9 =  _sdatrtim9 /  max(1,_sdatr9)
 _sdatrt10=  _sdatrtim10 /  max(1,_sdatr10)
 _sdatrt11=  _sdatrtim11 /  max(1,_sdatr11)
 _sdatrt12=  _sdatrtim12 /  max(1,_sdatr12)
 _sdatrt13=  _sdatrtim13 /  max(1,_sdatr13)
;------------------------------------------------
;student of non-driving age averages
 _sndtrd =   _sndtrdis /  max(1,_sndtr)
 _sndtrd1 =  _sndtrdis1 / max(1,_sndtr1)
 _sndtrd2 =  _sndtrdis2 / max(1,_sndtr2)
 _sndtrd3 =  _sndtrdis3 / max(1,_sndtr3)
 _sndtrd4 =  _sndtrdis4 / max(1,_sndtr4)
 _sndtrd5 =  _sndtrdis5 / max(1,_sndtr5)
 _sndtrd6 =  _sndtrdis6 / max(1,_sndtr6)
 _sndtrd7 =  _sndtrdis7 / max(1,_sndtr7)
 _sndtrd8 =  _sndtrdis8 / max(1,_sndtr8)
 _sndtrd9 =  _sndtrdis9 / max(1,_sndtr9)
 _sndtrd10 = _sndtrdis10 / max(1,_sndtr10)
 _sndtrd11 = _sndtrdis11 / max(1,_sndtr11)
 _sndtrd12 = _sndtrdis12 / max(1,_sndtr12)
 _sndtrd13 = _sndtrdis13 / max(1,_sndtr13)
 _sndtrt =   _sndtrtim /   max(1,_sndtr)
 _sndtrt1 =  _sndtrtim1 /  max(1,_sndtr1)
 _sndtrt2 =  _sndtrtim2 /  max(1,_sndtr2)
 _sndtrt3 =  _sndtrtim3 /  max(1,_sndtr3)
 _sndtrt4 =  _sndtrtim4 /  max(1,_sndtr4)
 _sndtrt5 =  _sndtrtim5 /  max(1,_sndtr5)
 _sndtrt6 =  _sndtrtim6 /  max(1,_sndtr6)
 _sndtrt7 =  _sndtrtim7 /  max(1,_sndtr7)
 _sndtrt8 =  _sndtrtim8 /  max(1,_sndtr8)
 _sndtrt9 =  _sndtrtim9 /  max(1,_sndtr9)
 _sndtrt10=  _sndtrtim10 /  max(1,_sndtr10)
 _sndtrt11=  _sndtrtim11 /  max(1,_sndtr11)
 _sndtrt12=  _sndtrtim12 /  max(1,_sndtr12)
 _sndtrt13=  _sndtrtim13 /  max(1,_sndtr13)
;------------------------------------------------
;child too young for school averages
 _chitrd =   _chitrdis /  max(1,_chitr)
 _chitrd1 =  _chitrdis1 / max(1,_chitr1)
 _chitrd2 =  _chitrdis2 / max(1,_chitr2)
 _chitrd3 =  _chitrdis3 / max(1,_chitr3)
 _chitrd4 =  _chitrdis4 / max(1,_chitr4)
 _chitrd5 =  _chitrdis5 / max(1,_chitr5)
 _chitrd6 =  _chitrdis6 / max(1,_chitr6)
 _chitrd7 =  _chitrdis7 / max(1,_chitr7)
 _chitrd8 =  _chitrdis8 / max(1,_chitr8)
 _chitrd9 =  _chitrdis9 / max(1,_chitr9)
 _chitrd10 = _chitrdis10 / max(1,_chitr10)
 _chitrd11 = _chitrdis11 / max(1,_chitr11)
 _chitrd12 = _chitrdis12 / max(1,_chitr12)
 _chitrd13 = _chitrdis13 / max(1,_chitr13)
 _chitrt =   _chitrtim /   max(1,_chitr)
 _chitrt1 =  _chitrtim1 /  max(1,_chitr1)
 _chitrt2 =  _chitrtim2 /  max(1,_chitr2)
 _chitrt3 =  _chitrtim3 /  max(1,_chitr3)
 _chitrt4 =  _chitrtim4 /  max(1,_chitr4)
 _chitrt5 =  _chitrtim5 /  max(1,_chitr5)
 _chitrt6 =  _chitrtim6 /  max(1,_chitr6)
 _chitrt7 =  _chitrtim7 /  max(1,_chitr7)
 _chitrt8 =  _chitrtim8 /  max(1,_chitr8)
 _chitrt9 =  _chitrtim9 /  max(1,_chitr9)
 _chitrt10=  _chitrtim10 /  max(1,_chitr10)
 _chitrt11=  _chitrtim11 /  max(1,_chitr11)
 _chitrt12=  _chitrtim12 /  max(1,_chitr12)
 _chitrt13=  _chitrtim13 /  max(1,_chitr13)
;------------------------------------------------
;===================================================
;===================================================
;AUTO SUFFICIENCY AVERAGES
;------------------------------------------------
;zero car households
 _NoCrtrd =   _NoCrtrdis /  max(1,_NoCrtr)
 _NoCrtrd1 =  _NoCrtrdis1 / max(1,_NoCrtr1)
 _NoCrtrd2 =  _NoCrtrdis2 / max(1,_NoCrtr2)
 _NoCrtrd3 =  _NoCrtrdis3 / max(1,_NoCrtr3)
 _NoCrtrd4 =  _NoCrtrdis4 / max(1,_NoCrtr4)
 _NoCrtrd5 =  _NoCrtrdis5 / max(1,_NoCrtr5)
 _NoCrtrd6 =  _NoCrtrdis6 / max(1,_NoCrtr6)
 _NoCrtrd7 =  _NoCrtrdis7 / max(1,_NoCrtr7)
 _NoCrtrd8 =  _NoCrtrdis8 / max(1,_NoCrtr8)
 _NoCrtrd9 =  _NoCrtrdis9 / max(1,_NoCrtr9)
 _NoCrtrd10 = _NoCrtrdis10 / max(1,_NoCrtr10)
 _NoCrtrd11 = _NoCrtrdis11 / max(1,_NoCrtr11)
 _NoCrtrd12 = _NoCrtrdis12 / max(1,_NoCrtr12)
 _NoCrtrd13 = _NoCrtrdis13 / max(1,_NoCrtr13)
 _NoCrtrt =   _NoCrtrtim /   max(1,_NoCrtr)
 _NoCrtrt1 =  _NoCrtrtim1 /  max(1,_NoCrtr1)
 _NoCrtrt2 =  _NoCrtrtim2 /  max(1,_NoCrtr2)
 _NoCrtrt3 =  _NoCrtrtim3 /  max(1,_NoCrtr3)
 _NoCrtrt4 =  _NoCrtrtim4 /  max(1,_NoCrtr4)
 _NoCrtrt5 =  _NoCrtrtim5 /  max(1,_NoCrtr5)
 _NoCrtrt6 =  _NoCrtrtim6 /  max(1,_NoCrtr6)
 _NoCrtrt7 =  _NoCrtrtim7 /  max(1,_NoCrtr7)
 _NoCrtrt8 =  _NoCrtrtim8 /  max(1,_NoCrtr8)
 _NoCrtrt9 =  _NoCrtrtim9 /  max(1,_NoCrtr9)
 _NoCrtrt10=  _NoCrtrtim10 /  max(1,_NoCrtr10)
 _NoCrtrt11=  _NoCrtrtim11 /  max(1,_NoCrtr11)
 _NoCrtrt12=  _NoCrtrtim12 /  max(1,_NoCrtr12)
 _NoCrtrt13=  _NoCrtrtim13 /  max(1,_NoCrtr13)
;------------------------------------------------
;households where cars < workers
 _CrLTtrd =   _CrLTtrdis /  max(1,_CrLTtr)
 _CrLTtrd1 =  _CrLTtrdis1 / max(1,_CrLTtr1)
 _CrLTtrd2 =  _CrLTtrdis2 / max(1,_CrLTtr2)
 _CrLTtrd3 =  _CrLTtrdis3 / max(1,_CrLTtr3)
 _CrLTtrd4 =  _CrLTtrdis4 / max(1,_CrLTtr4)
 _CrLTtrd5 =  _CrLTtrdis5 / max(1,_CrLTtr5)
 _CrLTtrd6 =  _CrLTtrdis6 / max(1,_CrLTtr6)
 _CrLTtrd7 =  _CrLTtrdis7 / max(1,_CrLTtr7)
 _CrLTtrd8 =  _CrLTtrdis8 / max(1,_CrLTtr8)
 _CrLTtrd9 =  _CrLTtrdis9 / max(1,_CrLTtr9)
 _CrLTtrd10 = _CrLTtrdis10 / max(1,_CrLTtr10)
 _CrLTtrd11 = _CrLTtrdis11 / max(1,_CrLTtr11)
 _CrLTtrd12 = _CrLTtrdis12 / max(1,_CrLTtr12)
 _CrLTtrd13 = _CrLTtrdis13 / max(1,_CrLTtr13)
 _CrLTtrt =   _CrLTtrtim /   max(1,_CrLTtr)
 _CrLTtrt1 =  _CrLTtrtim1 /  max(1,_CrLTtr1)
 _CrLTtrt2 =  _CrLTtrtim2 /  max(1,_CrLTtr2)
 _CrLTtrt3 =  _CrLTtrtim3 /  max(1,_CrLTtr3)
 _CrLTtrt4 =  _CrLTtrtim4 /  max(1,_CrLTtr4)
 _CrLTtrt5 =  _CrLTtrtim5 /  max(1,_CrLTtr5)
 _CrLTtrt6 =  _CrLTtrtim6 /  max(1,_CrLTtr6)
 _CrLTtrt7 =  _CrLTtrtim7 /  max(1,_CrLTtr7)
 _CrLTtrt8 =  _CrLTtrtim8 /  max(1,_CrLTtr8)
 _CrLTtrt9 =  _CrLTtrtim9 /  max(1,_CrLTtr9)
 _CrLTtrt10=  _CrLTtrtim10 /  max(1,_CrLTtr10)
 _CrLTtrt11=  _CrLTtrtim11 /  max(1,_CrLTtr11)
 _CrLTtrt12=  _CrLTtrtim12 /  max(1,_CrLTtr12)
 _CrLTtrt13=  _CrLTtrtim13 /  max(1,_CrLTtr13)
;------------------------------------------------
;households where cars >= workers
 _CarStrd =   _CarStrdis /  max(1,_CarStr)
 _CarStrd1 =  _CarStrdis1 / max(1,_CarStr1)
 _CarStrd2 =  _CarStrdis2 / max(1,_CarStr2)
 _CarStrd3 =  _CarStrdis3 / max(1,_CarStr3)
 _CarStrd4 =  _CarStrdis4 / max(1,_CarStr4)
 _CarStrd5 =  _CarStrdis5 / max(1,_CarStr5)
 _CarStrd6 =  _CarStrdis6 / max(1,_CarStr6)
 _CarStrd7 =  _CarStrdis7 / max(1,_CarStr7)
 _CarStrd8 =  _CarStrdis8 / max(1,_CarStr8)
 _CarStrd9 =  _CarStrdis9 / max(1,_CarStr9)
 _CarStrd10 = _CarStrdis10 / max(1,_CarStr10)
 _CarStrd11 = _CarStrdis11 / max(1,_CarStr11)
 _CarStrd12 = _CarStrdis12 / max(1,_CarStr12)
 _CarStrd13 = _CarStrdis13 / max(1,_CarStr13)
 _CarStrt =   _CarStrtim /   max(1,_CarStr)
 _CarStrt1 =  _CarStrtim1 /  max(1,_CarStr1)
 _CarStrt2 =  _CarStrtim2 /  max(1,_CarStr2)
 _CarStrt3 =  _CarStrtim3 /  max(1,_CarStr3)
 _CarStrt4 =  _CarStrtim4 /  max(1,_CarStr4)
 _CarStrt5 =  _CarStrtim5 /  max(1,_CarStr5)
 _CarStrt6 =  _CarStrtim6 /  max(1,_CarStr6)
 _CarStrt7 =  _CarStrtim7 /  max(1,_CarStr7)
 _CarStrt8 =  _CarStrtim8 /  max(1,_CarStr8)
 _CarStrt9 =  _CarStrtim9 /  max(1,_CarStr9)
 _CarStrt10=  _CarStrtim10 /  max(1,_CarStr10)
 _CarStrt11=  _CarStrtim11 /  max(1,_CarStr11)
 _CarStrt12=  _CarStrtim12 /  max(1,_CarStr12)
 _CarStrt13=  _CarStrtim13 /  max(1,_CarStr13)
;------------------------------------------------
;===================================================
;INCOME BIN AVERAGES
;------------------------------------------------
;income bin 1 averages
 _Inc1trd =   _Inc1trdis /  max(1,_Inc1tr)
 _Inc1trd1 =  _Inc1trdis1 / max(1,_Inc1tr1)
 _Inc1trd2 =  _Inc1trdis2 / max(1,_Inc1tr2)
 _Inc1trd3 =  _Inc1trdis3 / max(1,_Inc1tr3)
 _Inc1trd4 =  _Inc1trdis4 / max(1,_Inc1tr4)
 _Inc1trd5 =  _Inc1trdis5 / max(1,_Inc1tr5)
 _Inc1trd6 =  _Inc1trdis6 / max(1,_Inc1tr6)
 _Inc1trd7 =  _Inc1trdis7 / max(1,_Inc1tr7)
 _Inc1trd8 =  _Inc1trdis8 / max(1,_Inc1tr8)
 _Inc1trd9 =  _Inc1trdis9 / max(1,_Inc1tr9)
 _Inc1trd10 = _Inc1trdis10 / max(1,_Inc1tr10)
 _Inc1trd11 = _Inc1trdis11 / max(1,_Inc1tr11)
 _Inc1trd12 = _Inc1trdis12 / max(1,_Inc1tr12)
 _Inc1trd13 = _Inc1trdis13 / max(1,_Inc1tr13)
 _Inc1trt =   _Inc1trtim /   max(1,_Inc1tr)
 _Inc1trt1 =  _Inc1trtim1 /  max(1,_Inc1tr1)
 _Inc1trt2 =  _Inc1trtim2 /  max(1,_Inc1tr2)
 _Inc1trt3 =  _Inc1trtim3 /  max(1,_Inc1tr3)
 _Inc1trt4 =  _Inc1trtim4 /  max(1,_Inc1tr4)
 _Inc1trt5 =  _Inc1trtim5 /  max(1,_Inc1tr5)
 _Inc1trt6 =  _Inc1trtim6 /  max(1,_Inc1tr6)
 _Inc1trt7 =  _Inc1trtim7 /  max(1,_Inc1tr7)
 _Inc1trt8 =  _Inc1trtim8 /  max(1,_Inc1tr8)
 _Inc1trt9 =  _Inc1trtim9 /  max(1,_Inc1tr9)
 _Inc1trt10=  _Inc1trtim10 /  max(1,_Inc1tr10)
 _Inc1trt11=  _Inc1trtim11 /  max(1,_Inc1tr11)
 _Inc1trt12=  _Inc1trtim12 /  max(1,_Inc1tr12)
 _Inc1trt13=  _Inc1trtim13 /  max(1,_Inc1tr13)
;------------------------------------------------
;income bin 2 averages
 _Inc2trd =   _Inc2trdis /  max(1,_Inc2tr)
 _Inc2trd1 =  _Inc2trdis1 / max(1,_Inc2tr1)
 _Inc2trd2 =  _Inc2trdis2 / max(1,_Inc2tr2)
 _Inc2trd3 =  _Inc2trdis3 / max(1,_Inc2tr3)
 _Inc2trd4 =  _Inc2trdis4 / max(1,_Inc2tr4)
 _Inc2trd5 =  _Inc2trdis5 / max(1,_Inc2tr5)
 _Inc2trd6 =  _Inc2trdis6 / max(1,_Inc2tr6)
 _Inc2trd7 =  _Inc2trdis7 / max(1,_Inc2tr7)
 _Inc2trd8 =  _Inc2trdis8 / max(1,_Inc2tr8)
 _Inc2trd9 =  _Inc2trdis9 / max(1,_Inc2tr9)
 _Inc2trd10 = _Inc2trdis10 / max(1,_Inc2tr10)
 _Inc2trd11 = _Inc2trdis11 / max(1,_Inc2tr11)
 _Inc2trd12 = _Inc2trdis12 / max(1,_Inc2tr12)
 _Inc2trd13 = _Inc2trdis13 / max(1,_Inc2tr13)
 _Inc2trt =   _Inc2trtim /   max(1,_Inc2tr)
 _Inc2trt1 =  _Inc2trtim1 /  max(1,_Inc2tr1)
 _Inc2trt2 =  _Inc2trtim2 /  max(1,_Inc2tr2)
 _Inc2trt3 =  _Inc2trtim3 /  max(1,_Inc2tr3)
 _Inc2trt4 =  _Inc2trtim4 /  max(1,_Inc2tr4)
 _Inc2trt5 =  _Inc2trtim5 /  max(1,_Inc2tr5)
 _Inc2trt6 =  _Inc2trtim6 /  max(1,_Inc2tr6)
 _Inc2trt7 =  _Inc2trtim7 /  max(1,_Inc2tr7)
 _Inc2trt8 =  _Inc2trtim8 /  max(1,_Inc2tr8)
 _Inc2trt9 =  _Inc2trtim9 /  max(1,_Inc2tr9)
 _Inc2trt10=  _Inc2trtim10 /  max(1,_Inc2tr10)
 _Inc2trt11=  _Inc2trtim11 /  max(1,_Inc2tr11)
 _Inc2trt12=  _Inc2trtim12 /  max(1,_Inc2tr12)
 _Inc2trt13=  _Inc2trtim13 /  max(1,_Inc2tr13)
;------------------------------------------------
;income bin 3 averages
 _Inc3trd =   _Inc3trdis /  max(1,_Inc3tr)
 _Inc3trd1 =  _Inc3trdis1 / max(1,_Inc3tr1)
 _Inc3trd2 =  _Inc3trdis2 / max(1,_Inc3tr2)
 _Inc3trd3 =  _Inc3trdis3 / max(1,_Inc3tr3)
 _Inc3trd4 =  _Inc3trdis4 / max(1,_Inc3tr4)
 _Inc3trd5 =  _Inc3trdis5 / max(1,_Inc3tr5)
 _Inc3trd6 =  _Inc3trdis6 / max(1,_Inc3tr6)
 _Inc3trd7 =  _Inc3trdis7 / max(1,_Inc3tr7)
 _Inc3trd8 =  _Inc3trdis8 / max(1,_Inc3tr8)
 _Inc3trd9 =  _Inc3trdis9 / max(1,_Inc3tr9)
 _Inc3trd10 = _Inc3trdis10 / max(1,_Inc3tr10)
 _Inc3trd11 = _Inc3trdis11 / max(1,_Inc3tr11)
 _Inc3trd12 = _Inc3trdis12 / max(1,_Inc3tr12)
 _Inc3trd13 = _Inc3trdis13 / max(1,_Inc3tr13)
 _Inc3trt =   _Inc3trtim /   max(1,_Inc3tr)
 _Inc3trt1 =  _Inc3trtim1 /  max(1,_Inc3tr1)
 _Inc3trt2 =  _Inc3trtim2 /  max(1,_Inc3tr2)
 _Inc3trt3 =  _Inc3trtim3 /  max(1,_Inc3tr3)
 _Inc3trt4 =  _Inc3trtim4 /  max(1,_Inc3tr4)
 _Inc3trt5 =  _Inc3trtim5 /  max(1,_Inc3tr5)
 _Inc3trt6 =  _Inc3trtim6 /  max(1,_Inc3tr6)
 _Inc3trt7 =  _Inc3trtim7 /  max(1,_Inc3tr7)
 _Inc3trt8 =  _Inc3trtim8 /  max(1,_Inc3tr8)
 _Inc3trt9 =  _Inc3trtim9 /  max(1,_Inc3tr9)
 _Inc3trt10=  _Inc3trtim10 /  max(1,_Inc3tr10)
 _Inc3trt11=  _Inc3trtim11 /  max(1,_Inc3tr11)
 _Inc3trt12=  _Inc3trtim12 /  max(1,_Inc3tr12)
 _Inc3trt13=  _Inc3trtim13 /  max(1,_Inc3tr13)
;------------------------------------------------
;income bin 4 averages
 _Inc4trd =   _Inc4trdis /  max(1,_Inc4tr)
 _Inc4trd1 =  _Inc4trdis1 / max(1,_Inc4tr1)
 _Inc4trd2 =  _Inc4trdis2 / max(1,_Inc4tr2)
 _Inc4trd3 =  _Inc4trdis3 / max(1,_Inc4tr3)
 _Inc4trd4 =  _Inc4trdis4 / max(1,_Inc4tr4)
 _Inc4trd5 =  _Inc4trdis5 / max(1,_Inc4tr5)
 _Inc4trd6 =  _Inc4trdis6 / max(1,_Inc4tr6)
 _Inc4trd7 =  _Inc4trdis7 / max(1,_Inc4tr7)
 _Inc4trd8 =  _Inc4trdis8 / max(1,_Inc4tr8)
 _Inc4trd9 =  _Inc4trdis9 / max(1,_Inc4tr9)
 _Inc4trd10 = _Inc4trdis10 / max(1,_Inc4tr10)
 _Inc4trd11 = _Inc4trdis11 / max(1,_Inc4tr11)
 _Inc4trd12 = _Inc4trdis12 / max(1,_Inc4tr12)
 _Inc4trd13 = _Inc4trdis13 / max(1,_Inc4tr13)
 _Inc4trt =   _Inc4trtim /   max(1,_Inc4tr)
 _Inc4trt1 =  _Inc4trtim1 /  max(1,_Inc4tr1)
 _Inc4trt2 =  _Inc4trtim2 /  max(1,_Inc4tr2)
 _Inc4trt3 =  _Inc4trtim3 /  max(1,_Inc4tr3)
 _Inc4trt4 =  _Inc4trtim4 /  max(1,_Inc4tr4)
 _Inc4trt5 =  _Inc4trtim5 /  max(1,_Inc4tr5)
 _Inc4trt6 =  _Inc4trtim6 /  max(1,_Inc4tr6)
 _Inc4trt7 =  _Inc4trtim7 /  max(1,_Inc4tr7)
 _Inc4trt8 =  _Inc4trtim8 /  max(1,_Inc4tr8)
 _Inc4trt9 =  _Inc4trtim9 /  max(1,_Inc4tr9)
 _Inc4trt10=  _Inc4trtim10 /  max(1,_Inc4tr10)
 _Inc4trt11=  _Inc4trtim11 /  max(1,_Inc4tr11)
 _Inc4trt12=  _Inc4trtim12 /  max(1,_Inc4tr12)
 _Inc4trt13=  _Inc4trtim13 /  max(1,_Inc4tr13)
;===================================================
;AREA TYPE AVERAGES
;------------------------------------------------
;Origin = major activity center
 ;destination = major activity center
 _a11trd =   _a11trdis /  max(1,_a11tr)
 _a11trd1 =  _a11trdis1 / max(1,_a11tr1)
 _a11trd2 =  _a11trdis2 / max(1,_a11tr2)
 _a11trd3 =  _a11trdis3 / max(1,_a11tr3)
 _a11trd4 =  _a11trdis4 / max(1,_a11tr4)
 _a11trd5 =  _a11trdis5 / max(1,_a11tr5)
 _a11trd6 =  _a11trdis6 / max(1,_a11tr6)
 _a11trd7 =  _a11trdis7 / max(1,_a11tr7)
 _a11trd8 =  _a11trdis8 / max(1,_a11tr8)
 _a11trd9 =  _a11trdis9 / max(1,_a11tr9)
 _a11trd10 = _a11trdis10 / max(1,_a11tr10)
 _a11trd11 = _a11trdis11 / max(1,_a11tr11)
 _a11trd12 = _a11trdis12 / max(1,_a11tr12)
 _a11trd13 = _a11trdis13 / max(1,_a11tr13)
 _a11trt =   _a11trtim /   max(1,_a11tr)
 _a11trt1 =  _a11trtim1 /  max(1,_a11tr1)
 _a11trt2 =  _a11trtim2 /  max(1,_a11tr2)
 _a11trt3 =  _a11trtim3 /  max(1,_a11tr3)
 _a11trt4 =  _a11trtim4 /  max(1,_a11tr4)
 _a11trt5 =  _a11trtim5 /  max(1,_a11tr5)
 _a11trt6 =  _a11trtim6 /  max(1,_a11tr6)
 _a11trt7 =  _a11trtim7 /  max(1,_a11tr7)
 _a11trt8 =  _a11trtim8 /  max(1,_a11tr8)
 _a11trt9 =  _a11trtim9 /  max(1,_a11tr9)
 _a11trt10=  _a11trtim10 /  max(1,_a11tr10)
 _a11trt11=  _a11trtim11 /  max(1,_a11tr11)
 _a11trt12=  _a11trtim12 /  max(1,_a11tr12)
 _a11trt13=  _a11trtim13 /  max(1,_a11tr13)
 ;destination = urban
 _a12trd =   _a12trdis /  max(1,_a12tr)
 _a12trd1 =  _a12trdis1 / max(1,_a12tr1)
 _a12trd2 =  _a12trdis2 / max(1,_a12tr2)
 _a12trd3 =  _a12trdis3 / max(1,_a12tr3)
 _a12trd4 =  _a12trdis4 / max(1,_a12tr4)
 _a12trd5 =  _a12trdis5 / max(1,_a12tr5)
 _a12trd6 =  _a12trdis6 / max(1,_a12tr6)
 _a12trd7 =  _a12trdis7 / max(1,_a12tr7)
 _a12trd8 =  _a12trdis8 / max(1,_a12tr8)
 _a12trd9 =  _a12trdis9 / max(1,_a12tr9)
 _a12trd10 = _a12trdis10 / max(1,_a12tr10)
 _a12trd11 = _a12trdis11 / max(1,_a12tr11)
 _a12trd12 = _a12trdis12 / max(1,_a12tr12)
 _a12trd13 = _a12trdis13 / max(1,_a12tr13)
 _a12trt =   _a12trtim /   max(1,_a12tr)
 _a12trt1 =  _a12trtim1 /  max(1,_a12tr1)
 _a12trt2 =  _a12trtim2 /  max(1,_a12tr2)
 _a12trt3 =  _a12trtim3 /  max(1,_a12tr3)
 _a12trt4 =  _a12trtim4 /  max(1,_a12tr4)
 _a12trt5 =  _a12trtim5 /  max(1,_a12tr5)
 _a12trt6 =  _a12trtim6 /  max(1,_a12tr6)
 _a12trt7 =  _a12trtim7 /  max(1,_a12tr7)
 _a12trt8 =  _a12trtim8 /  max(1,_a12tr8)
 _a12trt9 =  _a12trtim9 /  max(1,_a12tr9)
 _a12trt10=  _a12trtim10 /  max(1,_a12tr10)
 _a12trt11=  _a12trtim11 /  max(1,_a12tr11)
 _a12trt12=  _a12trtim12 /  max(1,_a12tr12)
 _a12trt13=  _a12trtim13 /  max(1,_a12tr13)
 ;destination = suburban
 _a13trd =   _a13trdis /  max(1,_a13tr)
 _a13trd1 =  _a13trdis1 / max(1,_a13tr1)
 _a13trd2 =  _a13trdis2 / max(1,_a13tr2)
 _a13trd3 =  _a13trdis3 / max(1,_a13tr3)
 _a13trd4 =  _a13trdis4 / max(1,_a13tr4)
 _a13trd5 =  _a13trdis5 / max(1,_a13tr5)
 _a13trd6 =  _a13trdis6 / max(1,_a13tr6)
 _a13trd7 =  _a13trdis7 / max(1,_a13tr7)
 _a13trd8 =  _a13trdis8 / max(1,_a13tr8)
 _a13trd9 =  _a13trdis9 / max(1,_a13tr9)
 _a13trd10 = _a13trdis10 / max(1,_a13tr10)
 _a13trd11 = _a13trdis11 / max(1,_a13tr11)
 _a13trd12 = _a13trdis12 / max(1,_a13tr12)
 _a13trd13 = _a13trdis13 / max(1,_a13tr13)
 _a13trt =   _a13trtim /   max(1,_a13tr)
 _a13trt1 =  _a13trtim1 /  max(1,_a13tr1)
 _a13trt2 =  _a13trtim2 /  max(1,_a13tr2)
 _a13trt3 =  _a13trtim3 /  max(1,_a13tr3)
 _a13trt4 =  _a13trtim4 /  max(1,_a13tr4)
 _a13trt5 =  _a13trtim5 /  max(1,_a13tr5)
 _a13trt6 =  _a13trtim6 /  max(1,_a13tr6)
 _a13trt7 =  _a13trtim7 /  max(1,_a13tr7)
 _a13trt8 =  _a13trtim8 /  max(1,_a13tr8)
 _a13trt9 =  _a13trtim9 /  max(1,_a13tr9)
 _a13trt10=  _a13trtim10 /  max(1,_a13tr10)
 _a13trt11=  _a13trtim11 /  max(1,_a13tr11)
 _a13trt12=  _a13trtim12 /  max(1,_a13tr12)
 _a13trt13=  _a13trtim13 /  max(1,_a13tr13)
 ;destination = rural
 _a14trd =   _a14trdis /  max(1,_a14tr)
 _a14trd1 =  _a14trdis1 / max(1,_a14tr1)
 _a14trd2 =  _a14trdis2 / max(1,_a14tr2)
 _a14trd3 =  _a14trdis3 / max(1,_a14tr3)
 _a14trd4 =  _a14trdis4 / max(1,_a14tr4)
 _a14trd5 =  _a14trdis5 / max(1,_a14tr5)
 _a14trd6 =  _a14trdis6 / max(1,_a14tr6)
 _a14trd7 =  _a14trdis7 / max(1,_a14tr7)
 _a14trd8 =  _a14trdis8 / max(1,_a14tr8)
 _a14trd9 =  _a14trdis9 / max(1,_a14tr9)
 _a14trd10 = _a14trdis10 / max(1,_a14tr10)
 _a14trd11 = _a14trdis11 / max(1,_a14tr11)
 _a14trd12 = _a14trdis12 / max(1,_a14tr12)
 _a14trd13 = _a14trdis13 / max(1,_a14tr13)
 _a14trt =   _a14trtim /   max(1,_a14tr)
 _a14trt1 =  _a14trtim1 /  max(1,_a14tr1)
 _a14trt2 =  _a14trtim2 /  max(1,_a14tr2)
 _a14trt3 =  _a14trtim3 /  max(1,_a14tr3)
 _a14trt4 =  _a14trtim4 /  max(1,_a14tr4)
 _a14trt5 =  _a14trtim5 /  max(1,_a14tr5)
 _a14trt6 =  _a14trtim6 /  max(1,_a14tr6)
 _a14trt7 =  _a14trtim7 /  max(1,_a14tr7)
 _a14trt8 =  _a14trtim8 /  max(1,_a14tr8)
 _a14trt9 =  _a14trtim9 /  max(1,_a14tr9)
 _a14trt10=  _a14trtim10 /  max(1,_a14tr10)
 _a14trt11=  _a14trtim11 /  max(1,_a14tr11)
 _a14trt12=  _a14trtim12 /  max(1,_a14tr12)
 _a14trt13=  _a14trtim13 /  max(1,_a14tr13)
;------------------------------------------------
;Origin = urban
 ;destination = major activity center
 _a21trd =   _a21trdis /  max(1,_a21tr)
 _a21trd1 =  _a21trdis1 / max(1,_a21tr1)
 _a21trd2 =  _a21trdis2 / max(1,_a21tr2)
 _a21trd3 =  _a21trdis3 / max(1,_a21tr3)
 _a21trd4 =  _a21trdis4 / max(1,_a21tr4)
 _a21trd5 =  _a21trdis5 / max(1,_a21tr5)
 _a21trd6 =  _a21trdis6 / max(1,_a21tr6)
 _a21trd7 =  _a21trdis7 / max(1,_a21tr7)
 _a21trd8 =  _a21trdis8 / max(1,_a21tr8)
 _a21trd9 =  _a21trdis9 / max(1,_a21tr9)
 _a21trd10 = _a21trdis10 / max(1,_a21tr10)
 _a21trd11 = _a21trdis11 / max(1,_a21tr11)
 _a21trd12 = _a21trdis12 / max(1,_a21tr12)
 _a21trd13 = _a21trdis13 / max(1,_a21tr13)
 _a21trt =   _a21trtim /   max(1,_a21tr)
 _a21trt1 =  _a21trtim1 /  max(1,_a21tr1)
 _a21trt2 =  _a21trtim2 /  max(1,_a21tr2)
 _a21trt3 =  _a21trtim3 /  max(1,_a21tr3)
 _a21trt4 =  _a21trtim4 /  max(1,_a21tr4)
 _a21trt5 =  _a21trtim5 /  max(1,_a21tr5)
 _a21trt6 =  _a21trtim6 /  max(1,_a21tr6)
 _a21trt7 =  _a21trtim7 /  max(1,_a21tr7)
 _a21trt8 =  _a21trtim8 /  max(1,_a21tr8)
 _a21trt9 =  _a21trtim9 /  max(1,_a21tr9)
 _a21trt10=  _a21trtim10 /  max(1,_a21tr10)
 _a21trt11=  _a21trtim11 /  max(1,_a21tr11)
 _a21trt12=  _a21trtim12 /  max(1,_a21tr12)
 _a21trt13=  _a21trtim13 /  max(1,_a21tr13)
 ;destination = urban
 _a22trd =   _a22trdis /  max(1,_a22tr)
 _a22trd1 =  _a22trdis1 / max(1,_a22tr1)
 _a22trd2 =  _a22trdis2 / max(1,_a22tr2)
 _a22trd3 =  _a22trdis3 / max(1,_a22tr3)
 _a22trd4 =  _a22trdis4 / max(1,_a22tr4)
 _a22trd5 =  _a22trdis5 / max(1,_a22tr5)
 _a22trd6 =  _a22trdis6 / max(1,_a22tr6)
 _a22trd7 =  _a22trdis7 / max(1,_a22tr7)
 _a22trd8 =  _a22trdis8 / max(1,_a22tr8)
 _a22trd9 =  _a22trdis9 / max(1,_a22tr9)
 _a22trd10 = _a22trdis10 / max(1,_a22tr10)
 _a22trd11 = _a22trdis11 / max(1,_a22tr11)
 _a22trd12 = _a22trdis12 / max(1,_a22tr12)
 _a22trd13 = _a22trdis13 / max(1,_a22tr13)
 _a22trt =   _a22trtim /   max(1,_a22tr)
 _a22trt1 =  _a22trtim1 /  max(1,_a22tr1)
 _a22trt2 =  _a22trtim2 /  max(1,_a22tr2)
 _a22trt3 =  _a22trtim3 /  max(1,_a22tr3)
 _a22trt4 =  _a22trtim4 /  max(1,_a22tr4)
 _a22trt5 =  _a22trtim5 /  max(1,_a22tr5)
 _a22trt6 =  _a22trtim6 /  max(1,_a22tr6)
 _a22trt7 =  _a22trtim7 /  max(1,_a22tr7)
 _a22trt8 =  _a22trtim8 /  max(1,_a22tr8)
 _a22trt9 =  _a22trtim9 /  max(1,_a22tr9)
 _a22trt10=  _a22trtim10 /  max(1,_a22tr10)
 _a22trt11=  _a22trtim11 /  max(1,_a22tr11)
 _a22trt12=  _a22trtim12 /  max(1,_a22tr12)
 _a22trt13=  _a22trtim13 /  max(1,_a22tr13)
 ;destination = suburban
 _a23trd =   _a23trdis /  max(1,_a23tr)
 _a23trd1 =  _a23trdis1 / max(1,_a23tr1)
 _a23trd2 =  _a23trdis2 / max(1,_a23tr2)
 _a23trd3 =  _a23trdis3 / max(1,_a23tr3)
 _a23trd4 =  _a23trdis4 / max(1,_a23tr4)
 _a23trd5 =  _a23trdis5 / max(1,_a23tr5)
 _a23trd6 =  _a23trdis6 / max(1,_a23tr6)
 _a23trd7 =  _a23trdis7 / max(1,_a23tr7)
 _a23trd8 =  _a23trdis8 / max(1,_a23tr8)
 _a23trd9 =  _a23trdis9 / max(1,_a23tr9)
 _a23trd10 = _a23trdis10 / max(1,_a23tr10)
 _a23trd11 = _a23trdis11 / max(1,_a23tr11)
 _a23trd12 = _a23trdis12 / max(1,_a23tr12)
 _a23trd13 = _a23trdis13 / max(1,_a23tr13)
 _a23trt =   _a23trtim /   max(1,_a23tr)
 _a23trt1 =  _a23trtim1 /  max(1,_a23tr1)
 _a23trt2 =  _a23trtim2 /  max(1,_a23tr2)
 _a23trt3 =  _a23trtim3 /  max(1,_a23tr3)
 _a23trt4 =  _a23trtim4 /  max(1,_a23tr4)
 _a23trt5 =  _a23trtim5 /  max(1,_a23tr5)
 _a23trt6 =  _a23trtim6 /  max(1,_a23tr6)
 _a23trt7 =  _a23trtim7 /  max(1,_a23tr7)
 _a23trt8 =  _a23trtim8 /  max(1,_a23tr8)
 _a23trt9 =  _a23trtim9 /  max(1,_a23tr9)
 _a23trt10=  _a23trtim10 /  max(1,_a23tr10)
 _a23trt11=  _a23trtim11 /  max(1,_a23tr11)
 _a23trt12=  _a23trtim12 /  max(1,_a23tr12)
 _a23trt13=  _a23trtim13 /  max(1,_a23tr13)
 ;destination = rural
 _a24trd =   _a24trdis /  max(1,_a24tr)
 _a24trd1 =  _a24trdis1 / max(1,_a24tr1)
 _a24trd2 =  _a24trdis2 / max(1,_a24tr2)
 _a24trd3 =  _a24trdis3 / max(1,_a24tr3)
 _a24trd4 =  _a24trdis4 / max(1,_a24tr4)
 _a24trd5 =  _a24trdis5 / max(1,_a24tr5)
 _a24trd6 =  _a24trdis6 / max(1,_a24tr6)
 _a24trd7 =  _a24trdis7 / max(1,_a24tr7)
 _a24trd8 =  _a24trdis8 / max(1,_a24tr8)
 _a24trd9 =  _a24trdis9 / max(1,_a24tr9)
 _a24trd10 = _a24trdis10 / max(1,_a24tr10)
 _a24trd11 = _a24trdis11 / max(1,_a24tr11)
 _a24trd12 = _a24trdis12 / max(1,_a24tr12)
 _a24trd13 = _a24trdis13 / max(1,_a24tr13)
 _a24trt =   _a24trtim /   max(1,_a24tr)
 _a24trt1 =  _a24trtim1 /  max(1,_a24tr1)
 _a24trt2 =  _a24trtim2 /  max(1,_a24tr2)
 _a24trt3 =  _a24trtim3 /  max(1,_a24tr3)
 _a24trt4 =  _a24trtim4 /  max(1,_a24tr4)
 _a24trt5 =  _a24trtim5 /  max(1,_a24tr5)
 _a24trt6 =  _a24trtim6 /  max(1,_a24tr6)
 _a24trt7 =  _a24trtim7 /  max(1,_a24tr7)
 _a24trt8 =  _a24trtim8 /  max(1,_a24tr8)
 _a24trt9 =  _a24trtim9 /  max(1,_a24tr9)
 _a24trt10=  _a24trtim10 /  max(1,_a24tr10)
 _a24trt11=  _a24trtim11 /  max(1,_a24tr11)
 _a24trt12=  _a24trtim12 /  max(1,_a24tr12)
 _a24trt13=  _a24trtim13 /  max(1,_a24tr13)
;------------------------------------------------
;Origin = suburban
 ;destination = major activity center
 _a31trd =   _a31trdis /  max(1,_a31tr)
 _a31trd1 =  _a31trdis1 / max(1,_a31tr1)
 _a31trd2 =  _a31trdis2 / max(1,_a31tr2)
 _a31trd3 =  _a31trdis3 / max(1,_a31tr3)
 _a31trd4 =  _a31trdis4 / max(1,_a31tr4)
 _a31trd5 =  _a31trdis5 / max(1,_a31tr5)
 _a31trd6 =  _a31trdis6 / max(1,_a31tr6)
 _a31trd7 =  _a31trdis7 / max(1,_a31tr7)
 _a31trd8 =  _a31trdis8 / max(1,_a31tr8)
 _a31trd9 =  _a31trdis9 / max(1,_a31tr9)
 _a31trd10 = _a31trdis10 / max(1,_a31tr10)
 _a31trd11 = _a31trdis11 / max(1,_a31tr11)
 _a31trd12 = _a31trdis12 / max(1,_a31tr12)
 _a31trd13 = _a31trdis13 / max(1,_a31tr13)
 _a31trt =   _a31trtim /   max(1,_a31tr)
 _a31trt1 =  _a31trtim1 /  max(1,_a31tr1)
 _a31trt2 =  _a31trtim2 /  max(1,_a31tr2)
 _a31trt3 =  _a31trtim3 /  max(1,_a31tr3)
 _a31trt4 =  _a31trtim4 /  max(1,_a31tr4)
 _a31trt5 =  _a31trtim5 /  max(1,_a31tr5)
 _a31trt6 =  _a31trtim6 /  max(1,_a31tr6)
 _a31trt7 =  _a31trtim7 /  max(1,_a31tr7)
 _a31trt8 =  _a31trtim8 /  max(1,_a31tr8)
 _a31trt9 =  _a31trtim9 /  max(1,_a31tr9)
 _a31trt10=  _a31trtim10 /  max(1,_a31tr10)
 _a31trt11=  _a31trtim11 /  max(1,_a31tr11)
 _a31trt12=  _a31trtim12 /  max(1,_a31tr12)
 _a31trt13=  _a31trtim13 /  max(1,_a31tr13)
 ;destination = urban
 _a32trd =   _a32trdis /  max(1,_a32tr)
 _a32trd1 =  _a32trdis1 / max(1,_a32tr1)
 _a32trd2 =  _a32trdis2 / max(1,_a32tr2)
 _a32trd3 =  _a32trdis3 / max(1,_a32tr3)
 _a32trd4 =  _a32trdis4 / max(1,_a32tr4)
 _a32trd5 =  _a32trdis5 / max(1,_a32tr5)
 _a32trd6 =  _a32trdis6 / max(1,_a32tr6)
 _a32trd7 =  _a32trdis7 / max(1,_a32tr7)
 _a32trd8 =  _a32trdis8 / max(1,_a32tr8)
 _a32trd9 =  _a32trdis9 / max(1,_a32tr9)
 _a32trd10 = _a32trdis10 / max(1,_a32tr10)
 _a32trd11 = _a32trdis11 / max(1,_a32tr11)
 _a32trd12 = _a32trdis12 / max(1,_a32tr12)
 _a32trd13 = _a32trdis13 / max(1,_a32tr13)
 _a32trt =   _a32trtim /   max(1,_a32tr)
 _a32trt1 =  _a32trtim1 /  max(1,_a32tr1)
 _a32trt2 =  _a32trtim2 /  max(1,_a32tr2)
 _a32trt3 =  _a32trtim3 /  max(1,_a32tr3)
 _a32trt4 =  _a32trtim4 /  max(1,_a32tr4)
 _a32trt5 =  _a32trtim5 /  max(1,_a32tr5)
 _a32trt6 =  _a32trtim6 /  max(1,_a32tr6)
 _a32trt7 =  _a32trtim7 /  max(1,_a32tr7)
 _a32trt8 =  _a32trtim8 /  max(1,_a32tr8)
 _a32trt9 =  _a32trtim9 /  max(1,_a32tr9)
 _a32trt10=  _a32trtim10 /  max(1,_a32tr10)
 _a32trt11=  _a32trtim11 /  max(1,_a32tr11)
 _a32trt12=  _a32trtim12 /  max(1,_a32tr12)
 _a32trt13=  _a32trtim13 /  max(1,_a32tr13)
 ;destination = suburban
 _a33trd =   _a33trdis /  max(1,_a33tr)
 _a33trd1 =  _a33trdis1 / max(1,_a33tr1)
 _a33trd2 =  _a33trdis2 / max(1,_a33tr2)
 _a33trd3 =  _a33trdis3 / max(1,_a33tr3)
 _a33trd4 =  _a33trdis4 / max(1,_a33tr4)
 _a33trd5 =  _a33trdis5 / max(1,_a33tr5)
 _a33trd6 =  _a33trdis6 / max(1,_a33tr6)
 _a33trd7 =  _a33trdis7 / max(1,_a33tr7)
 _a33trd8 =  _a33trdis8 / max(1,_a33tr8)
 _a33trd9 =  _a33trdis9 / max(1,_a33tr9)
 _a33trd10 = _a33trdis10 / max(1,_a33tr10)
 _a33trd11 = _a33trdis11 / max(1,_a33tr11)
 _a33trd12 = _a33trdis12 / max(1,_a33tr12)
 _a33trd13 = _a33trdis13 / max(1,_a33tr13)
 _a33trt =   _a33trtim /   max(1,_a33tr)
 _a33trt1 =  _a33trtim1 /  max(1,_a33tr1)
 _a33trt2 =  _a33trtim2 /  max(1,_a33tr2)
 _a33trt3 =  _a33trtim3 /  max(1,_a33tr3)
 _a33trt4 =  _a33trtim4 /  max(1,_a33tr4)
 _a33trt5 =  _a33trtim5 /  max(1,_a33tr5)
 _a33trt6 =  _a33trtim6 /  max(1,_a33tr6)
 _a33trt7 =  _a33trtim7 /  max(1,_a33tr7)
 _a33trt8 =  _a33trtim8 /  max(1,_a33tr8)
 _a33trt9 =  _a33trtim9 /  max(1,_a33tr9)
 _a33trt10=  _a33trtim10 /  max(1,_a33tr10)
 _a33trt11=  _a33trtim11 /  max(1,_a33tr11)
 _a33trt12=  _a33trtim12 /  max(1,_a33tr12)
 _a33trt13=  _a33trtim13 /  max(1,_a33tr13)
 ;destination = rural
 _a34trd =   _a34trdis /  max(1,_a34tr)
 _a34trd1 =  _a34trdis1 / max(1,_a34tr1)
 _a34trd2 =  _a34trdis2 / max(1,_a34tr2)
 _a34trd3 =  _a34trdis3 / max(1,_a34tr3)
 _a34trd4 =  _a34trdis4 / max(1,_a34tr4)
 _a34trd5 =  _a34trdis5 / max(1,_a34tr5)
 _a34trd6 =  _a34trdis6 / max(1,_a34tr6)
 _a34trd7 =  _a34trdis7 / max(1,_a34tr7)
 _a34trd8 =  _a34trdis8 / max(1,_a34tr8)
 _a34trd9 =  _a34trdis9 / max(1,_a34tr9)
 _a34trd10 = _a34trdis10 / max(1,_a34tr10)
 _a34trd11 = _a34trdis11 / max(1,_a34tr11)
 _a34trd12 = _a34trdis12 / max(1,_a34tr12)
 _a34trd13 = _a34trdis13 / max(1,_a34tr13)
 _a34trt =   _a34trtim /   max(1,_a34tr)
 _a34trt1 =  _a34trtim1 /  max(1,_a34tr1)
 _a34trt2 =  _a34trtim2 /  max(1,_a34tr2)
 _a34trt3 =  _a34trtim3 /  max(1,_a34tr3)
 _a34trt4 =  _a34trtim4 /  max(1,_a34tr4)
 _a34trt5 =  _a34trtim5 /  max(1,_a34tr5)
 _a34trt6 =  _a34trtim6 /  max(1,_a34tr6)
 _a34trt7 =  _a34trtim7 /  max(1,_a34tr7)
 _a34trt8 =  _a34trtim8 /  max(1,_a34tr8)
 _a34trt9 =  _a34trtim9 /  max(1,_a34tr9)
 _a34trt10=  _a34trtim10 /  max(1,_a34tr10)
 _a34trt11=  _a34trtim11 /  max(1,_a34tr11)
 _a34trt12=  _a34trtim12 /  max(1,_a34tr12)
 _a34trt13=  _a34trtim13 /  max(1,_a34tr13)
;------------------------------------------------
;Origin = rural
 ;destination = major activity center
 _a41trd =   _a41trdis /  max(1,_a41tr)
 _a41trd1 =  _a41trdis1 / max(1,_a41tr1)
 _a41trd2 =  _a41trdis2 / max(1,_a41tr2)
 _a41trd3 =  _a41trdis3 / max(1,_a41tr3)
 _a41trd4 =  _a41trdis4 / max(1,_a41tr4)
 _a41trd5 =  _a41trdis5 / max(1,_a41tr5)
 _a41trd6 =  _a41trdis6 / max(1,_a41tr6)
 _a41trd7 =  _a41trdis7 / max(1,_a41tr7)
 _a41trd8 =  _a41trdis8 / max(1,_a41tr8)
 _a41trd9 =  _a41trdis9 / max(1,_a41tr9)
 _a41trd10 = _a41trdis10 / max(1,_a41tr10)
 _a41trd11 = _a41trdis11 / max(1,_a41tr11)
 _a41trd12 = _a41trdis12 / max(1,_a41tr12)
 _a41trd13 = _a41trdis13 / max(1,_a41tr13)
 _a41trt =   _a41trtim /   max(1,_a41tr)
 _a41trt1 =  _a41trtim1 /  max(1,_a41tr1)
 _a41trt2 =  _a41trtim2 /  max(1,_a41tr2)
 _a41trt3 =  _a41trtim3 /  max(1,_a41tr3)
 _a41trt4 =  _a41trtim4 /  max(1,_a41tr4)
 _a41trt5 =  _a41trtim5 /  max(1,_a41tr5)
 _a41trt6 =  _a41trtim6 /  max(1,_a41tr6)
 _a41trt7 =  _a41trtim7 /  max(1,_a41tr7)
 _a41trt8 =  _a41trtim8 /  max(1,_a41tr8)
 _a41trt9 =  _a41trtim9 /  max(1,_a41tr9)
 _a41trt10=  _a41trtim10 /  max(1,_a41tr10)
 _a41trt11=  _a41trtim11 /  max(1,_a41tr11)
 _a41trt12=  _a41trtim12 /  max(1,_a41tr12)
 _a41trt13=  _a41trtim13 /  max(1,_a41tr13)
 ;destination = urban
 _a42trd =   _a42trdis /  max(1,_a42tr)
 _a42trd1 =  _a42trdis1 / max(1,_a42tr1)
 _a42trd2 =  _a42trdis2 / max(1,_a42tr2)
 _a42trd3 =  _a42trdis3 / max(1,_a42tr3)
 _a42trd4 =  _a42trdis4 / max(1,_a42tr4)
 _a42trd5 =  _a42trdis5 / max(1,_a42tr5)
 _a42trd6 =  _a42trdis6 / max(1,_a42tr6)
 _a42trd7 =  _a42trdis7 / max(1,_a42tr7)
 _a42trd8 =  _a42trdis8 / max(1,_a42tr8)
 _a42trd9 =  _a42trdis9 / max(1,_a42tr9)
 _a42trd10 = _a42trdis10 / max(1,_a42tr10)
 _a42trd11 = _a42trdis11 / max(1,_a42tr11)
 _a42trd12 = _a42trdis12 / max(1,_a42tr12)
 _a42trd13 = _a42trdis13 / max(1,_a42tr13)
 _a42trt =   _a42trtim /   max(1,_a42tr)
 _a42trt1 =  _a42trtim1 /  max(1,_a42tr1)
 _a42trt2 =  _a42trtim2 /  max(1,_a42tr2)
 _a42trt3 =  _a42trtim3 /  max(1,_a42tr3)
 _a42trt4 =  _a42trtim4 /  max(1,_a42tr4)
 _a42trt5 =  _a42trtim5 /  max(1,_a42tr5)
 _a42trt6 =  _a42trtim6 /  max(1,_a42tr6)
 _a42trt7 =  _a42trtim7 /  max(1,_a42tr7)
 _a42trt8 =  _a42trtim8 /  max(1,_a42tr8)
 _a42trt9 =  _a42trtim9 /  max(1,_a42tr9)
 _a42trt10=  _a42trtim10 /  max(1,_a42tr10)
 _a42trt11=  _a42trtim11 /  max(1,_a42tr11)
 _a42trt12=  _a42trtim12 /  max(1,_a42tr12)
 _a42trt13=  _a42trtim13 /  max(1,_a42tr13)
 ;destination = suburban
 _a43trd =   _a43trdis /  max(1,_a43tr)
 _a43trd1 =  _a43trdis1 / max(1,_a43tr1)
 _a43trd2 =  _a43trdis2 / max(1,_a43tr2)
 _a43trd3 =  _a43trdis3 / max(1,_a43tr3)
 _a43trd4 =  _a43trdis4 / max(1,_a43tr4)
 _a43trd5 =  _a43trdis5 / max(1,_a43tr5)
 _a43trd6 =  _a43trdis6 / max(1,_a43tr6)
 _a43trd7 =  _a43trdis7 / max(1,_a43tr7)
 _a43trd8 =  _a43trdis8 / max(1,_a43tr8)
 _a43trd9 =  _a43trdis9 / max(1,_a43tr9)
 _a43trd10 = _a43trdis10 / max(1,_a43tr10)
 _a43trd11 = _a43trdis11 / max(1,_a43tr11)
 _a43trd12 = _a43trdis12 / max(1,_a43tr12)
 _a43trd13 = _a43trdis13 / max(1,_a43tr13)
 _a43trt =   _a43trtim /   max(1,_a43tr)
 _a43trt1 =  _a43trtim1 /  max(1,_a43tr1)
 _a43trt2 =  _a43trtim2 /  max(1,_a43tr2)
 _a43trt3 =  _a43trtim3 /  max(1,_a43tr3)
 _a43trt4 =  _a43trtim4 /  max(1,_a43tr4)
 _a43trt5 =  _a43trtim5 /  max(1,_a43tr5)
 _a43trt6 =  _a43trtim6 /  max(1,_a43tr6)
 _a43trt7 =  _a43trtim7 /  max(1,_a43tr7)
 _a43trt8 =  _a43trtim8 /  max(1,_a43tr8)
 _a43trt9 =  _a43trtim9 /  max(1,_a43tr9)
 _a43trt10=  _a43trtim10 /  max(1,_a43tr10)
 _a43trt11=  _a43trtim11 /  max(1,_a43tr11)
 _a43trt12=  _a43trtim12 /  max(1,_a43tr12)
 _a43trt13=  _a43trtim13 /  max(1,_a43tr13)
 ;destination = rural
 _a44trd =   _a44trdis /  max(1,_a44tr)
 _a44trd1 =  _a44trdis1 / max(1,_a44tr1)
 _a44trd2 =  _a44trdis2 / max(1,_a44tr2)
 _a44trd3 =  _a44trdis3 / max(1,_a44tr3)
 _a44trd4 =  _a44trdis4 / max(1,_a44tr4)
 _a44trd5 =  _a44trdis5 / max(1,_a44tr5)
 _a44trd6 =  _a44trdis6 / max(1,_a44tr6)
 _a44trd7 =  _a44trdis7 / max(1,_a44tr7)
 _a44trd8 =  _a44trdis8 / max(1,_a44tr8)
 _a44trd9 =  _a44trdis9 / max(1,_a44tr9)
 _a44trd10 = _a44trdis10 / max(1,_a44tr10)
 _a44trd11 = _a44trdis11 / max(1,_a44tr11)
 _a44trd12 = _a44trdis12 / max(1,_a44tr12)
 _a44trd13 = _a44trdis13 / max(1,_a44tr13)
 _a44trt =   _a44trtim /   max(1,_a44tr)
 _a44trt1 =  _a44trtim1 /  max(1,_a44tr1)
 _a44trt2 =  _a44trtim2 /  max(1,_a44tr2)
 _a44trt3 =  _a44trtim3 /  max(1,_a44tr3)
 _a44trt4 =  _a44trtim4 /  max(1,_a44tr4)
 _a44trt5 =  _a44trtim5 /  max(1,_a44tr5)
 _a44trt6 =  _a44trtim6 /  max(1,_a44tr6)
 _a44trt7 =  _a44trtim7 /  max(1,_a44tr7)
 _a44trt8 =  _a44trtim8 /  max(1,_a44tr8)
 _a44trt9 =  _a44trtim9 /  max(1,_a44tr9)
 _a44trt10=  _a44trtim10 /  max(1,_a44tr10)
 _a44trt11=  _a44trtim11 /  max(1,_a44tr11)
 _a44trt12=  _a44trtim12 /  max(1,_a44tr12)
 _a44trt13=  _a44trtim13 /  max(1,_a44tr13) 
;================================================================================
;================================================================================
;HOUSEHOLD TYPE AVERAGES
;------------------------------------------------
;single
 _ht1trd =   _ht1trdis /  max(1,_ht1tr)
 _ht1trd1 =  _ht1trdis1 / max(1,_ht1tr1)
 _ht1trd2 =  _ht1trdis2 / max(1,_ht1tr2)
 _ht1trd3 =  _ht1trdis3 / max(1,_ht1tr3)
 _ht1trd4 =  _ht1trdis4 / max(1,_ht1tr4)
 _ht1trd5 =  _ht1trdis5 / max(1,_ht1tr5)
 _ht1trd6 =  _ht1trdis6 / max(1,_ht1tr6)
 _ht1trd7 =  _ht1trdis7 / max(1,_ht1tr7)
 _ht1trd8 =  _ht1trdis8 / max(1,_ht1tr8)
 _ht1trd9 =  _ht1trdis9 / max(1,_ht1tr9)
 _ht1trd10 = _ht1trdis10 / max(1,_ht1tr10)
 _ht1trd11 = _ht1trdis11 / max(1,_ht1tr11)
 _ht1trd12 = _ht1trdis12 / max(1,_ht1tr12)
 _ht1trd13 = _ht1trdis13 / max(1,_ht1tr13)
 _ht1trt =   _ht1trtim /   max(1,_ht1tr)
 _ht1trt1 =  _ht1trtim1 /  max(1,_ht1tr1)
 _ht1trt2 =  _ht1trtim2 /  max(1,_ht1tr2)
 _ht1trt3 =  _ht1trtim3 /  max(1,_ht1tr3)
 _ht1trt4 =  _ht1trtim4 /  max(1,_ht1tr4)
 _ht1trt5 =  _ht1trtim5 /  max(1,_ht1tr5)
 _ht1trt6 =  _ht1trtim6 /  max(1,_ht1tr6)
 _ht1trt7 =  _ht1trtim7 /  max(1,_ht1tr7)
 _ht1trt8 =  _ht1trtim8 /  max(1,_ht1tr8)
 _ht1trt9 =  _ht1trtim9 /  max(1,_ht1tr9)
 _ht1trt10=  _ht1trtim10 /  max(1,_ht1tr10)
 _ht1trt11=  _ht1trtim11 /  max(1,_ht1tr11)
 _ht1trt12=  _ht1trtim12 /  max(1,_ht1tr12)
 _ht1trt13=  _ht1trtim13 /  max(1,_ht1tr13)
;------------------------------------------------
;single income w/ kids
 _ht2trd =   _ht2trdis /  max(1,_ht2tr)
 _ht2trd1 =  _ht2trdis1 / max(1,_ht2tr1)
 _ht2trd2 =  _ht2trdis2 / max(1,_ht2tr2)
 _ht2trd3 =  _ht2trdis3 / max(1,_ht2tr3)
 _ht2trd4 =  _ht2trdis4 / max(1,_ht2tr4)
 _ht2trd5 =  _ht2trdis5 / max(1,_ht2tr5)
 _ht2trd6 =  _ht2trdis6 / max(1,_ht2tr6)
 _ht2trd7 =  _ht2trdis7 / max(1,_ht2tr7)
 _ht2trd8 =  _ht2trdis8 / max(1,_ht2tr8)
 _ht2trd9 =  _ht2trdis9 / max(1,_ht2tr9)
 _ht2trd10 = _ht2trdis10 / max(1,_ht2tr10)
 _ht2trd11 = _ht2trdis11 / max(1,_ht2tr11)
 _ht2trd12 = _ht2trdis12 / max(1,_ht2tr12)
 _ht2trd13 = _ht2trdis13 / max(1,_ht2tr13)
 _ht2trt =   _ht2trtim /   max(1,_ht2tr)
 _ht2trt1 =  _ht2trtim1 /  max(1,_ht2tr1)
 _ht2trt2 =  _ht2trtim2 /  max(1,_ht2tr2)
 _ht2trt3 =  _ht2trtim3 /  max(1,_ht2tr3)
 _ht2trt4 =  _ht2trtim4 /  max(1,_ht2tr4)
 _ht2trt5 =  _ht2trtim5 /  max(1,_ht2tr5)
 _ht2trt6 =  _ht2trtim6 /  max(1,_ht2tr6)
 _ht2trt7 =  _ht2trtim7 /  max(1,_ht2tr7)
 _ht2trt8 =  _ht2trtim8 /  max(1,_ht2tr8)
 _ht2trt9 =  _ht2trtim9 /  max(1,_ht2tr9)
 _ht2trt10=  _ht2trtim10 /  max(1,_ht2tr10)
 _ht2trt11=  _ht2trtim11 /  max(1,_ht2tr11)
 _ht2trt12=  _ht2trtim12 /  max(1,_ht2tr12)
 _ht2trt13=  _ht2trtim13 /  max(1,_ht2tr13)  
;------------------------------------------------
;single income w/out kids
 _ht3trd =   _ht3trdis /  max(1,_ht3tr)
 _ht3trd1 =  _ht3trdis1 / max(1,_ht3tr1)
 _ht3trd2 =  _ht3trdis2 / max(1,_ht3tr2)
 _ht3trd3 =  _ht3trdis3 / max(1,_ht3tr3)
 _ht3trd4 =  _ht3trdis4 / max(1,_ht3tr4)
 _ht3trd5 =  _ht3trdis5 / max(1,_ht3tr5)
 _ht3trd6 =  _ht3trdis6 / max(1,_ht3tr6)
 _ht3trd7 =  _ht3trdis7 / max(1,_ht3tr7)
 _ht3trd8 =  _ht3trdis8 / max(1,_ht3tr8)
 _ht3trd9 =  _ht3trdis9 / max(1,_ht3tr9)
 _ht3trd10 = _ht3trdis10 / max(1,_ht3tr10)
 _ht3trd11 = _ht3trdis11 / max(1,_ht3tr11)
 _ht3trd12 = _ht3trdis12 / max(1,_ht3tr12)
 _ht3trd13 = _ht3trdis13 / max(1,_ht3tr13)
 _ht3trt =   _ht3trtim /   max(1,_ht3tr)
 _ht3trt1 =  _ht3trtim1 /  max(1,_ht3tr1)
 _ht3trt2 =  _ht3trtim2 /  max(1,_ht3tr2)
 _ht3trt3 =  _ht3trtim3 /  max(1,_ht3tr3)
 _ht3trt4 =  _ht3trtim4 /  max(1,_ht3tr4)
 _ht3trt5 =  _ht3trtim5 /  max(1,_ht3tr5)
 _ht3trt6 =  _ht3trtim6 /  max(1,_ht3tr6)
 _ht3trt7 =  _ht3trtim7 /  max(1,_ht3tr7)
 _ht3trt8 =  _ht3trtim8 /  max(1,_ht3tr8)
 _ht3trt9 =  _ht3trtim9 /  max(1,_ht3tr9)
 _ht3trt10=  _ht3trtim10 /  max(1,_ht3tr10)
 _ht3trt11=  _ht3trtim11 /  max(1,_ht3tr11)
 _ht3trt12=  _ht3trtim12 /  max(1,_ht3tr12)
 _ht3trt13=  _ht3trtim13 /  max(1,_ht3tr13)     
;------------------------------------------------
;double income w/ kids
 _ht4trd =   _ht4trdis /  max(1,_ht4tr)
 _ht4trd1 =  _ht4trdis1 / max(1,_ht4tr1)
 _ht4trd2 =  _ht4trdis2 / max(1,_ht4tr2)
 _ht4trd3 =  _ht4trdis3 / max(1,_ht4tr3)
 _ht4trd4 =  _ht4trdis4 / max(1,_ht4tr4)
 _ht4trd5 =  _ht4trdis5 / max(1,_ht4tr5)
 _ht4trd6 =  _ht4trdis6 / max(1,_ht4tr6)
 _ht4trd7 =  _ht4trdis7 / max(1,_ht4tr7)
 _ht4trd8 =  _ht4trdis8 / max(1,_ht4tr8)
 _ht4trd9 =  _ht4trdis9 / max(1,_ht4tr9)
 _ht4trd10 = _ht4trdis10 / max(1,_ht4tr10)
 _ht4trd11 = _ht4trdis11 / max(1,_ht4tr11)
 _ht4trd12 = _ht4trdis12 / max(1,_ht4tr12)
 _ht4trd13 = _ht4trdis13 / max(1,_ht4tr13)
 _ht4trt =   _ht4trtim /   max(1,_ht4tr)
 _ht4trt1 =  _ht4trtim1 /  max(1,_ht4tr1)
 _ht4trt2 =  _ht4trtim2 /  max(1,_ht4tr2)
 _ht4trt3 =  _ht4trtim3 /  max(1,_ht4tr3)
 _ht4trt4 =  _ht4trtim4 /  max(1,_ht4tr4)
 _ht4trt5 =  _ht4trtim5 /  max(1,_ht4tr5)
 _ht4trt6 =  _ht4trtim6 /  max(1,_ht4tr6)
 _ht4trt7 =  _ht4trtim7 /  max(1,_ht4tr7)
 _ht4trt8 =  _ht4trtim8 /  max(1,_ht4tr8)
 _ht4trt9 =  _ht4trtim9 /  max(1,_ht4tr9)
 _ht4trt10=  _ht4trtim10 /  max(1,_ht4tr10)
 _ht4trt11=  _ht4trtim11 /  max(1,_ht4tr11)
 _ht4trt12=  _ht4trtim12 /  max(1,_ht4tr12)
 _ht4trt13=  _ht4trtim13 /  max(1,_ht4tr13)   
;------------------------------------------------
;double income w/out kids
 _ht5trd =   _ht5trdis /  max(1,_ht5tr)
 _ht5trd1 =  _ht5trdis1 / max(1,_ht5tr1)
 _ht5trd2 =  _ht5trdis2 / max(1,_ht5tr2)
 _ht5trd3 =  _ht5trdis3 / max(1,_ht5tr3)
 _ht5trd4 =  _ht5trdis4 / max(1,_ht5tr4)
 _ht5trd5 =  _ht5trdis5 / max(1,_ht5tr5)
 _ht5trd6 =  _ht5trdis6 / max(1,_ht5tr6)
 _ht5trd7 =  _ht5trdis7 / max(1,_ht5tr7)
 _ht5trd8 =  _ht5trdis8 / max(1,_ht5tr8)
 _ht5trd9 =  _ht5trdis9 / max(1,_ht5tr9)
 _ht5trd10 = _ht5trdis10 / max(1,_ht5tr10)
 _ht5trd11 = _ht5trdis11 / max(1,_ht5tr11)
 _ht5trd12 = _ht5trdis12 / max(1,_ht5tr12)
 _ht5trd13 = _ht5trdis13 / max(1,_ht5tr13)
 _ht5trt =   _ht5trtim /   max(1,_ht5tr)
 _ht5trt1 =  _ht5trtim1 /  max(1,_ht5tr1)
 _ht5trt2 =  _ht5trtim2 /  max(1,_ht5tr2)
 _ht5trt3 =  _ht5trtim3 /  max(1,_ht5tr3)
 _ht5trt4 =  _ht5trtim4 /  max(1,_ht5tr4)
 _ht5trt5 =  _ht5trtim5 /  max(1,_ht5tr5)
 _ht5trt6 =  _ht5trtim6 /  max(1,_ht5tr6)
 _ht5trt7 =  _ht5trtim7 /  max(1,_ht5tr7)
 _ht5trt8 =  _ht5trtim8 /  max(1,_ht5tr8)
 _ht5trt9 =  _ht5trtim9 /  max(1,_ht5tr9)
 _ht5trt10=  _ht5trtim10 /  max(1,_ht5tr10)
 _ht5trt11=  _ht5trtim11 /  max(1,_ht5tr11)
 _ht5trt12=  _ht5trtim12 /  max(1,_ht5tr12)
 _ht5trt13=  _ht5trtim13 /  max(1,_ht5tr13)  
;------------------------------------------------
;retired
 _ht6trd =   _ht6trdis /  max(1,_ht6tr)
 _ht6trd1 =  _ht6trdis1 / max(1,_ht6tr1)
 _ht6trd2 =  _ht6trdis2 / max(1,_ht6tr2)
 _ht6trd3 =  _ht6trdis3 / max(1,_ht6tr3)
 _ht6trd4 =  _ht6trdis4 / max(1,_ht6tr4)
 _ht6trd5 =  _ht6trdis5 / max(1,_ht6tr5)
 _ht6trd6 =  _ht6trdis6 / max(1,_ht6tr6)
 _ht6trd7 =  _ht6trdis7 / max(1,_ht6tr7)
 _ht6trd8 =  _ht6trdis8 / max(1,_ht6tr8)
 _ht6trd9 =  _ht6trdis9 / max(1,_ht6tr9)
 _ht6trd10 = _ht6trdis10 / max(1,_ht6tr10)
 _ht6trd11 = _ht6trdis11 / max(1,_ht6tr11)
 _ht6trd12 = _ht6trdis12 / max(1,_ht6tr12)
 _ht6trd13 = _ht6trdis13 / max(1,_ht6tr13)
 _ht6trt =   _ht6trtim /   max(1,_ht6tr)
 _ht6trt1 =  _ht6trtim1 /  max(1,_ht6tr1)
 _ht6trt2 =  _ht6trtim2 /  max(1,_ht6tr2)
 _ht6trt3 =  _ht6trtim3 /  max(1,_ht6tr3)
 _ht6trt4 =  _ht6trtim4 /  max(1,_ht6tr4)
 _ht6trt5 =  _ht6trtim5 /  max(1,_ht6tr5)
 _ht6trt6 =  _ht6trtim6 /  max(1,_ht6tr6)
 _ht6trt7 =  _ht6trtim7 /  max(1,_ht6tr7)
 _ht6trt8 =  _ht6trtim8 /  max(1,_ht6tr8)
 _ht6trt9 =  _ht6trtim9 /  max(1,_ht6tr9)
 _ht6trt10=  _ht6trtim10 /  max(1,_ht6tr10)
 _ht6trt11=  _ht6trtim11 /  max(1,_ht6tr11)
 _ht6trt12=  _ht6trtim12 /  max(1,_ht6tr12)
 _ht6trt13=  _ht6trtim13 /  max(1,_ht6tr13)  
;------------------------------------------------
;2+ person non-worker
 _ht7trd =   _ht7trdis /  max(1,_ht7tr)
 _ht7trd1 =  _ht7trdis1 / max(1,_ht7tr1)
 _ht7trd2 =  _ht7trdis2 / max(1,_ht7tr2)
 _ht7trd3 =  _ht7trdis3 / max(1,_ht7tr3)
 _ht7trd4 =  _ht7trdis4 / max(1,_ht7tr4)
 _ht7trd5 =  _ht7trdis5 / max(1,_ht7tr5)
 _ht7trd6 =  _ht7trdis6 / max(1,_ht7tr6)
 _ht7trd7 =  _ht7trdis7 / max(1,_ht7tr7)
 _ht7trd8 =  _ht7trdis8 / max(1,_ht7tr8)
 _ht7trd9 =  _ht7trdis9 / max(1,_ht7tr9)
 _ht7trd10 = _ht7trdis10 / max(1,_ht7tr10)
 _ht7trd11 = _ht7trdis11 / max(1,_ht7tr11)
 _ht7trd12 = _ht7trdis12 / max(1,_ht7tr12)
 _ht7trd13 = _ht7trdis13 / max(1,_ht7tr13)
 _ht7trt =   _ht7trtim /   max(1,_ht7tr)
 _ht7trt1 =  _ht7trtim1 /  max(1,_ht7tr1)
 _ht7trt2 =  _ht7trtim2 /  max(1,_ht7tr2)
 _ht7trt3 =  _ht7trtim3 /  max(1,_ht7tr3)
 _ht7trt4 =  _ht7trtim4 /  max(1,_ht7tr4)
 _ht7trt5 =  _ht7trtim5 /  max(1,_ht7tr5)
 _ht7trt6 =  _ht7trtim6 /  max(1,_ht7tr6)
 _ht7trt7 =  _ht7trtim7 /  max(1,_ht7tr7)
 _ht7trt8 =  _ht7trtim8 /  max(1,_ht7tr8)
 _ht7trt9 =  _ht7trtim9 /  max(1,_ht7tr9)
 _ht7trt10=  _ht7trtim10 /  max(1,_ht7tr10)
 _ht7trt11=  _ht7trtim11 /  max(1,_ht7tr11)
 _ht7trt12=  _ht7trtim12 /  max(1,_ht7tr12)
 _ht7trt13=  _ht7trtim13 /  max(1,_ht7tr13)   
;===================================================================================
;ALL TRIP AVERAGES
 _alltrd =   _alltrdis /  max(1,_alltr)
 _alltrd1 =  _alltrdis1 / max(1,_alltr1)
 _alltrd2 =  _alltrdis2 / max(1,_alltr2)
 _alltrd3 =  _alltrdis3 / max(1,_alltr3)
 _alltrd4 =  _alltrdis4 / max(1,_alltr4)
 _alltrd5 =  _alltrdis5 / max(1,_alltr5)
 _alltrd6 =  _alltrdis6 / max(1,_alltr6)
 _alltrd7 =  _alltrdis7 / max(1,_alltr7)
 _alltrd8 =  _alltrdis8 / max(1,_alltr8)
 _alltrd9 =  _alltrdis9 / max(1,_alltr9)
 _alltrd10 = _alltrdis10 / max(1,_alltr10)
 _alltrd11 = _alltrdis11 / max(1,_alltr11)
 _alltrd12 = _alltrdis12 / max(1,_alltr12)
 _alltrd13 = _alltrdis13 / max(1,_alltr13)
 _alltrt =   _alltrtim /   max(1,_alltr)
 _alltrt1 =  _alltrtim1 /  max(1,_alltr1)
 _alltrt2 =  _alltrtim2 /  max(1,_alltr2)
 _alltrt3 =  _alltrtim3 /  max(1,_alltr3)
 _alltrt4 =  _alltrtim4 /  max(1,_alltr4)
 _alltrt5 =  _alltrtim5 /  max(1,_alltr5)
 _alltrt6 =  _alltrtim6 /  max(1,_alltr6)
 _alltrt7 =  _alltrtim7 /  max(1,_alltr7)
 _alltrt8 =  _alltrtim8 /  max(1,_alltr8)
 _alltrt9 =  _alltrtim9 /  max(1,_alltr9)
 _alltrt10=  _alltrtim10 /  max(1,_alltr10)
 _alltrt11=  _alltrtim11 /  max(1,_alltr11)
 _alltrt12=  _alltrtim12 /  max(1,_alltr12)
 _alltrt13=  _alltrtim13 /  max(1,_alltr13)
;===================================================================================
 ;COMPUTE AVERAGES BY TIME BIN
;walk
 ;bin1
  _avgwwlkb1 = _wwlkb1 / max(_wcntb1,1)
  _avgwautb1 = _wautb1 / max(_wcntb1,1)
  _avgwxfrb1 = _wxfrb1 / max(_wcntb1,1)
  _avgwivtb1 = _wivtb1 / max(_wcntb1,1)
  _avgwtmeb1 = _wtmeb1 / max(_wcntb1,1)
 ;bin2
  _avgwwlkb2 = _wwlkb2 / max(_wcntb2,1)
  _avgwautb2 = _wautb2 / max(_wcntb2,1)
  _avgwxfrb2 = _wxfrb2 / max(_wcntb2,1)
  _avgwivtb2 = _wivtb2 / max(_wcntb2,1)
  _avgwtmeb2 = _wtmeb2 / max(_wcntb2,1)
 ;bin3
  _avgwwlkb3 = _wwlkb3 / max(_wcntb3,1)
  _avgwautb3 = _wautb3 / max(_wcntb3,1)
  _avgwxfrb3 = _wxfrb3 / max(_wcntb3,1)
  _avgwivtb3 = _wivtb3 / max(_wcntb3,1)
  _avgwtmeb3 = _wtmeb3 / max(_wcntb3,1)
 ;bin4
  _avgwwlkb4 = _wwlkb4 / max(_wcntb4,1)
  _avgwautb4 = _wautb4 / max(_wcntb4,1)
  _avgwxfrb4 = _wxfrb4 / max(_wcntb4,1)
  _avgwivtb4 = _wivtb4 / max(_wcntb4,1)
  _avgwtmeb4 = _wtmeb4 / max(_wcntb4,1)
 ;bin5
  _avgwwlkb5 = _wwlkb5 / max(_wcntb5,1)
  _avgwautb5 = _wautb5 / max(_wcntb5,1)
  _avgwxfrb5 = _wxfrb5 / max(_wcntb5,1)
  _avgwivtb5 = _wivtb5 / max(_wcntb5,1)
  _avgwtmeb5 = _wtmeb5 / max(_wcntb5,1)
 ;bin6
  _avgwwlkb6 = _wwlkb6 / max(_wcntb6,1)
  _avgwautb6 = _wautb6 / max(_wcntb6,1)
  _avgwxfrb6 = _wxfrb6 / max(_wcntb6,1)
  _avgwivtb6 = _wivtb6 / max(_wcntb6,1)
  _avgwtmeb6 = _wtmeb6 / max(_wcntb6,1)
 ;bin7
  _avgwwlkb7 = _wwlkb7 / max(_wcntb7,1)
  _avgwautb7 = _wautb7 / max(_wcntb7,1)
  _avgwxfrb7 = _wxfrb7 / max(_wcntb7,1)
  _avgwivtb7 = _wivtb7 / max(_wcntb7,1)
  _avgwtmeb7 = _wtmeb7 / max(_wcntb7,1)
;drive
 ;bin1
  _avgawlkb1 = _awlkb1 / max(_acntb1,1)
  _avgaautb1 = _aautb1 / max(_acntb1,1)
  _avgaxfrb1 = _axfrb1 / max(_acntb1,1)
  _avgaivtb1 = _aivtb1 / max(_acntb1,1)
  _avgatmeb1 = _atmeb1 / max(_acntb1,1)
 ;bin2
  _avgawlkb2 = _awlkb2 / max(_acntb2,1)
  _avgaautb2 = _aautb2 / max(_acntb2,1)
  _avgaxfrb2 = _axfrb2 / max(_acntb2,1)
  _avgaivtb2 = _aivtb2 / max(_acntb2,1)
  _avgatmeb2 = _atmeb2 / max(_acntb2,1)
 ;bin3
  _avgawlkb3 = _awlkb3 / max(_acntb3,1)
  _avgaautb3 = _aautb3 / max(_acntb3,1)
  _avgaxfrb3 = _axfrb3 / max(_acntb3,1)
  _avgaivtb3 = _aivtb3 / max(_acntb3,1)
  _avgatmeb3 = _atmeb3 / max(_acntb3,1)
 ;bin4
  _avgawlkb4 = _awlkb4 / max(_acntb4,1)
  _avgaautb4 = _aautb4 / max(_acntb4,1)
  _avgaxfrb4 = _axfrb4 / max(_acntb4,1)
  _avgaivtb4 = _aivtb4 / max(_acntb4,1)
  _avgatmeb4 = _atmeb4 / max(_acntb4,1)
 ;bin5
  _avgawlkb5 = _awlkb5 / max(_acntb5,1)
  _avgaautb5 = _aautb5 / max(_acntb5,1)
  _avgaxfrb5 = _axfrb5 / max(_acntb5,1)
  _avgaivtb5 = _aivtb5 / max(_acntb5,1)
  _avgatmeb5 = _atmeb5 / max(_acntb5,1)
 ;bin6
  _avgawlkb6 = _awlkb6 / max(_acntb6,1)
  _avgaautb6 = _aautb6 / max(_acntb6,1)
  _avgaxfrb6 = _axfrb6 / max(_acntb6,1)
  _avgaivtb6 = _aivtb6 / max(_acntb6,1)
  _avgatmeb6 = _atmeb6 / max(_acntb6,1)
 ;bin7
  _avgawlkb7 = _awlkb7 / max(_acntb7,1)
  _avgaautb7 = _aautb7 / max(_acntb7,1)
  _avgaxfrb7 = _axfrb7 / max(_acntb7,1)
  _avgaivtb7 = _aivtb7 / max(_acntb7,1)
  _avgatmeb7 = _atmeb7 / max(_acntb7,1)
;===================================================================================
 ;PRINT PERSON TYPE SUMMARIES
;trips by mode
 PRINT LIST='Trips by Person Type and Mode',PRINTO=1
 PRINT LIST='Person Type,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=1
 PRINT CSV=T,LIST='Full-time worker',_ftwtr,_ftwtr1,_ftwtr2,_ftwtr3,_ftwtr4,_ftwtr5,_ftwtr6,_ftwtr7,_ftwtr8,_ftwtr9,_ftwtr10,_ftwtr11,_ftwtr12,_ftwtr13,PRINTO=1
 PRINT CSV=T,LIST='Part-time worker',_ptwtr,_ptwtr1,_ptwtr2,_ptwtr3,_ptwtr4,_ptwtr5,_ptwtr6,_ptwtr7,_ptwtr8,_ptwtr9,_ptwtr10,_ptwtr11,_ptwtr12,_ptwtr13,PRINTO=1
 PRINT CSV=T,LIST='University student',_unvtr,_unvtr1,_unvtr2,_unvtr3,_unvtr4,_unvtr5,_unvtr6,_unvtr7,_unvtr8,_unvtr9,_unvtr10,_unvtr11,_unvtr12,_unvtr13,PRINTO=1
 PRINT CSV=T,LIST='Non-worker',_nwktr,_nwktr1,_nwktr2,_nwktr3,_nwktr4,_nwktr5,_nwktr6,_nwktr7,_nwktr8,_nwktr9,_nwktr10,_nwktr11,_nwktr12,_nwktr13,PRINTO=1
 PRINT CSV=T,LIST='Retired',_rettr,_rettr1,_rettr2,_rettr3,_rettr4,_rettr5,_rettr6,_rettr7,_rettr8,_rettr9,_rettr10,_rettr11,_rettr12,_rettr13,PRINTO=1
 PRINT CSV=T,LIST='Student of driving age',_sdatr,_sdatr1,_sdatr2,_sdatr3,_sdatr4,_sdatr5,_sdatr6,_sdatr7,_sdatr8,_sdatr9,_sdatr10,_sdatr11,_sdatr12,_sdatr13,PRINTO=1
 PRINT CSV=T,LIST='Student of non-driving age',_sndtr,_sndtr1,_sndtr2,_sndtr3,_sndtr4,_sndtr5,_sndtr6,_sndtr7,_sndtr8,_sndtr9,_sndtr10,_sndtr11,_sndtr12,_sndtr13,PRINTO=1
 PRINT CSV=T,LIST='Child too young for school',_chitr,_chitr1,_chitr2,_chitr3,_chitr4,_chitr5,_chitr6,_chitr7,_chitr8,_chitr9,_chitr10,_chitr11,_chitr12,_chitr13,PRINTO=1
 ;average travel time by mode
 PRINT LIST='Avg Travel Time by Person Type and Mode',PRINTO=1
 PRINT LIST='Person Type,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=1
 PRINT CSV=T,LIST='Full-time worker',_ftwtrt,_ftwtrt1,_ftwtrt2,_ftwtrt3,_ftwtrt4,_ftwtrt5,_ftwtrt6,_ftwtrt7,_ftwtrt8,_ftwtrt9,_ftwtrt10,_ftwtrt11,_ftwtrt12,_ftwtrt13,PRINTO=1
 PRINT CSV=T,LIST='Part-time worker',_ptwtrt,_ptwtrt1,_ptwtrt2,_ptwtrt3,_ptwtrt4,_ptwtrt5,_ptwtrt6,_ptwtrt7,_ptwtrt8,_ptwtrt9,_ptwtrt10,_ptwtrt11,_ptwtrt12,_ptwtrt13,PRINTO=1
 PRINT CSV=T,LIST='University student',_unvtrt,_unvtrt1,_unvtrt2,_unvtrt3,_unvtrt4,_unvtrt5,_unvtrt6,_unvtrt7,_unvtrt8,_unvtrt9,_unvtrt10,_unvtrt11,_unvtrt12,_unvtrt13,PRINTO=1
 PRINT CSV=T,LIST='Non-worker',_nwktrt,_nwktrt1,_nwktrt2,_nwktrt3,_nwktrt4,_nwktrt5,_nwktrt6,_nwktrt7,_nwktrt8,_nwktrt9,_nwktrt10,_nwktrt11,_nwktrt12,_nwktrt13,PRINTO=1
 PRINT CSV=T,LIST='Retired',_rettrt,_rettrt1,_rettrt2,_rettrt3,_rettrt4,_rettrt5,_rettrt6,_rettrt7,_rettrt8,_rettrt9,_rettrt10,_rettrt11,_rettrt12,_rettrt13,PRINTO=1
 PRINT CSV=T,LIST='Student of driving age',_sdatrt,_sdatrt1,_sdatrt2,_sdatrt3,_sdatrt4,_sdatrt5,_sdatrt6,_sdatrt7,_sdatrt8,_sdatrt9,_sdatrt10,_sdatrt11,_sdatrt12,_sdatrt13,PRINTO=1
 PRINT CSV=T,LIST='Student of non-driving age',_sndtrt,_sndtrt1,_sndtrt2,_sndtrt3,_sndtrt4,_sndtrt5,_sndtrt6,_sndtrt7,_sndtrt8,_sndtrt9,_sndtrt10,_sndtrt11,_sndtrt12,_sndtrt13,PRINTO=1
 PRINT CSV=T,LIST='Child too young for school',_chitrt,_chitrt1,_chitrt2,_chitrt3,_chitrt4,_chitrt5,_chitrt6,_chitrt7,_chitrt8,_chitrt9,_chitrt10,_chitrt11,_chitrt12,_chitrt13,PRINTO=1
;average travel distance by mode
 PRINT LIST='Avg Travel Distance by Person Type and Mode',PRINTO=1
 PRINT LIST='Person Type,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=1
 PRINT CSV=T,LIST='Full-time worker',_ftwtrd,_ftwtrd1,_ftwtrd2,_ftwtrd3,_ftwtrd4,_ftwtrd5,_ftwtrd6,_ftwtrd7,_ftwtrd8,_ftwtrd9,_ftwtrd10,_ftwtrd11,_ftwtrd12,_ftwtrd13,PRINTO=1
 PRINT CSV=T,LIST='Part-time worker',_ptwtrd,_ptwtrd1,_ptwtrd2,_ptwtrd3,_ptwtrd4,_ptwtrd5,_ptwtrd6,_ptwtrd7,_ptwtrd8,_ptwtrd9,_ptwtrd10,_ptwtrd11,_ptwtrd12,_ptwtrd13,PRINTO=1
 PRINT CSV=T,LIST='University student',_unvtrd,_unvtrd1,_unvtrd2,_unvtrd3,_unvtrd4,_unvtrd5,_unvtrd6,_unvtrd7,_unvtrd8,_unvtrd9,_unvtrd10,_unvtrd11,_unvtrd12,_unvtrd13,PRINTO=1
 PRINT CSV=T,LIST='Non-worker',_nwktrd,_nwktrd1,_nwktrd2,_nwktrd3,_nwktrd4,_nwktrd5,_nwktrd6,_nwktrd7,_nwktrd8,_nwktrd9,_nwktrd10,_nwktrd11,_nwktrd12,_nwktrd13,PRINTO=1
 PRINT CSV=T,LIST='Retired',_rettrd,_rettrd1,_rettrd2,_rettrd3,_rettrd4,_rettrd5,_rettrd6,_rettrd7,_rettrd8,_rettrd9,_rettrd10,_rettrd11,_rettrd12,_rettrd13,PRINTO=1
 PRINT CSV=T,LIST='Student of driving age',_sdatrd,_sdatrd1,_sdatrd2,_sdatrd3,_sdatrd4,_sdatrd5,_sdatrd6,_sdatrd7,_sdatrd8,_sdatrd9,_sdatrd10,_sdatrd11,_sdatrd12,_sdatrd13,PRINTO=1
 PRINT CSV=T,LIST='Student of non-driving age',_sndtrd,_sndtrd1,_sndtrd2,_sndtrd3,_sndtrd4,_sndtrd5,_sndtrd6,_sndtrd7,_sndtrd8,_sndtrd9,_sndtrd10,_sndtrd11,_sndtrd12,_sndtrd13,PRINTO=1
 PRINT CSV=T,LIST='Child too young for school',_chitrd,_chitrd1,_chitrd2,_chitrd3,_chitrd4,_chitrd5,_chitrd6,_chitrd7,_chitrd8,_chitrd9,_chitrd10,_chitrd11,_chitrd12,_chitrd13,PRINTO=1
 ;===================================================================================
;PRINT AUTO SUFFICIENCY SUMMARIES
;trips by mode
 PRINT LIST='Trips by Auto Sufficiency and Mode',PRINTO=2
 PRINT LIST='Auto Sufficiency,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=2
 PRINT CSV=T,LIST='Zero cars',_NoCrtr,_NoCrtr1,_NoCrtr2,_NoCrtr3,_NoCrtr4,_NoCrtr5,_NoCrtr6,_NoCrtr7,_NoCrtr8,_NoCrtr9,_NoCrtr10,_NoCrtr11,_NoCrtr12,_NoCrtr13,PRINTO=2
 PRINT CSV=T,LIST='Cars < workers',_CrLTtr,_CrLTtr1,_CrLTtr2,_CrLTtr3,_CrLTtr4,_CrLTtr5,_CrLTtr6,_CrLTtr7,_CrLTtr8,_CrLTtr9,_CrLTtr10,_CrLTtr11,_CrLTtr12,_CrLTtr13,PRINTO=2
 PRINT CSV=T,LIST='Cars >= workers',_CarStr,_CarStr1,_CarStr2,_CarStr3,_CarStr4,_CarStr5,_CarStr6,_CarStr7,_CarStr8,_CarStr9,_CarStr10,_CarStr11,_CarStr12,_CarStr13,PRINTO=2
 ;average travel time by mode
 PRINT LIST='Avg Travel Time by Auto Sufficiency and Mode',PRINTO=2
 PRINT LIST='Auto Sufficiency,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=2
 PRINT CSV=T,LIST='Zero cars',_NoCrtrt,_NoCrtrt1,_NoCrtrt2,_NoCrtrt3,_NoCrtrt4,_NoCrtrt5,_NoCrtrt6,_NoCrtrt7,_NoCrtrt8,_NoCrtrt9,_NoCrtrt10,_NoCrtrt11,_NoCrtrt12,_NoCrtrt13,PRINTO=2
 PRINT CSV=T,LIST='Cars < workers',_CrLTtrt,_CrLTtrt1,_CrLTtrt2,_CrLTtrt3,_CrLTtrt4,_CrLTtrt5,_CrLTtrt6,_CrLTtrt7,_CrLTtrt8,_CrLTtrt9,_CrLTtrt10,_CrLTtrt11,_CrLTtrt12,_CrLTtrt13,PRINTO=2
 PRINT CSV=T,LIST='Cars >= workers',_CarStrt,_CarStrt1,_CarStrt2,_CarStrt3,_CarStrt4,_CarStrt5,_CarStrt6,_CarStrt7,_CarStrt8,_CarStrt9,_CarStrt10,_CarStrt11,_CarStrt12,_CarStrt13,PRINTO=2
;average travel distance by mode
 PRINT LIST='Avg Travel Distance by Auto Suffiency and Mode',PRINTO=2
 PRINT LIST='Auto Sufficiency,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=2
 PRINT CSV=T,LIST='Zero cars',_NoCrtrd,_NoCrtrd1,_NoCrtrd2,_NoCrtrd3,_NoCrtrd4,_NoCrtrd5,_NoCrtrd6,_NoCrtrd7,_NoCrtrd8,_NoCrtrd9,_NoCrtrd10,_NoCrtrd11,_NoCrtrd12,_NoCrtrd13,PRINTO=2
 PRINT CSV=T,LIST='Cars < workers',_CrLTtrd,_CrLTtrd1,_CrLTtrd2,_CrLTtrd3,_CrLTtrd4,_CrLTtrd5,_CrLTtrd6,_CrLTtrd7,_CrLTtrd8,_CrLTtrd9,_CrLTtrd10,_CrLTtrd11,_CrLTtrd12,_CrLTtrd13,PRINTO=2
 PRINT CSV=T,LIST='Cars >= workers',_CarStrd,_CarStrd1,_CarStrd2,_CarStrd3,_CarStrd4,_CarStrd5,_CarStrd6,_CarStrd7,_CarStrd8,_CarStrd9,_CarStrd10,_CarStrd11,_CarStrd12,_CarStrd13,PRINTO=2
 ;===================================================================================
 ;PRINT INCOME BIN SUMMARIES
;trips by mode
 PRINT LIST='Trips by Income Bin and Mode',PRINTO=3
 PRINT LIST='Income Bin,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=3
 PRINT CSV=T,LIST='Income bin 1',_Inc1tr,_Inc1tr1,_Inc1tr2,_Inc1tr3,_Inc1tr4,_Inc1tr5,_Inc1tr6,_Inc1tr7,_Inc1tr8,_Inc1tr9,_Inc1tr10,_Inc1tr11,_Inc1tr12,_Inc1tr13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 2',_Inc2tr,_Inc2tr1,_Inc2tr2,_Inc2tr3,_Inc2tr4,_Inc2tr5,_Inc2tr6,_Inc2tr7,_Inc2tr8,_Inc2tr9,_Inc2tr10,_Inc2tr11,_Inc2tr12,_Inc2tr13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 3',_Inc3tr,_Inc3tr1,_Inc3tr2,_Inc3tr3,_Inc3tr4,_Inc3tr5,_Inc3tr6,_Inc3tr7,_Inc3tr8,_Inc3tr9,_Inc3tr10,_Inc3tr11,_Inc3tr12,_Inc3tr13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 4',_Inc4tr,_Inc4tr1,_Inc4tr2,_Inc4tr3,_Inc4tr4,_Inc4tr5,_Inc4tr6,_Inc4tr7,_Inc4tr8,_Inc4tr9,_Inc4tr10,_Inc4tr11,_Inc4tr12,_Inc4tr13,PRINTO=3
 ;average travel time by mode
 PRINT LIST='Avg Travel Time by Income Bin and Mode',PRINTO=3
 PRINT LIST='Income Bin,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=3
 PRINT CSV=T,LIST='Income bin 1',_Inc1trt,_Inc1trt1,_Inc1trt2,_Inc1trt3,_Inc1trt4,_Inc1trt5,_Inc1trt6,_Inc1trt7,_Inc1trt8,_Inc1trt9,_Inc1trt10,_Inc1trt11,_Inc1trt12,_Inc1trt13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 2',_Inc2trt,_Inc2trt1,_Inc2trt2,_Inc2trt3,_Inc2trt4,_Inc2trt5,_Inc2trt6,_Inc2trt7,_Inc2trt8,_Inc2trt9,_Inc2trt10,_Inc2trt11,_Inc2trt12,_Inc2trt13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 3',_Inc3trt,_Inc3trt1,_Inc3trt2,_Inc3trt3,_Inc3trt4,_Inc3trt5,_Inc3trt6,_Inc3trt7,_Inc3trt8,_Inc3trt9,_Inc3trt10,_Inc3trt11,_Inc3trt12,_Inc3trt13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 4',_Inc4trt,_Inc4trt1,_Inc4trt2,_Inc4trt3,_Inc4trt4,_Inc4trt5,_Inc4trt6,_Inc4trt7,_Inc4trt8,_Inc4trt9,_Inc4trt10,_Inc4trt11,_Inc4trt12,_Inc4trt13,PRINTO=3
;average travel distance by mode
 PRINT LIST='Avg Travel Distance by Income Bin and Mode',PRINTO=3
 PRINT LIST='Income Bin,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=3
 PRINT CSV=T,LIST='Income bin 1',_Inc1trd,_Inc1trd1,_Inc1trd2,_Inc1trd3,_Inc1trd4,_Inc1trd5,_Inc1trd6,_Inc1trd7,_Inc1trd8,_Inc1trd9,_Inc1trd10,_Inc1trd11,_Inc1trd12,_Inc1trd13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 2',_Inc2trd,_Inc2trd1,_Inc2trd2,_Inc2trd3,_Inc2trd4,_Inc2trd5,_Inc2trd6,_Inc2trd7,_Inc2trd8,_Inc2trd9,_Inc2trd10,_Inc2trd11,_Inc2trd12,_Inc2trd13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 3',_Inc3trd,_Inc3trd1,_Inc3trd2,_Inc3trd3,_Inc3trd4,_Inc3trd5,_Inc3trd6,_Inc3trd7,_Inc3trd8,_Inc3trd9,_Inc3trd10,_Inc3trd11,_Inc3trd12,_Inc3trd13,PRINTO=3
 PRINT CSV=T,LIST='Income bin 4',_Inc4trd,_Inc4trd1,_Inc4trd2,_Inc4trd3,_Inc4trd4,_Inc4trd5,_Inc4trd6,_Inc4trd7,_Inc4trd8,_Inc4trd9,_Inc4trd10,_Inc4trd11,_Inc4trd12,_Inc4trd13,PRINTO=3
 
 ;PRINT TO TEXT
 print list=' ',FILE=EVAL\ABMsum{year}.txt,append=t
 print list=' ',FILE=EVAL\ABMsum{year}.txt,append=t
 print list=' ',FILE=EVAL\ABMsum{year}.txt,append=t
 print list='---------------------------------------------------------------------------------',FILE=EVAL\ABMsum{year}.txt,append=t
 print list='INCOME BIN SUMMARIES',FILE=EVAL\ABMsum{year}.txt,append=t
 print list='---------------------------------------------------------------------------------',FILE=EVAL\ABMsum{year}.txt,append=t
 print list='TRIPS BY MODE         INCOME 1    INCOME 2    INCOME 3    INCOME 4',FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='SOV Free          ',_Inc1tr1,_Inc2tr1,_Inc3tr1,_Inc4tr1,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='SOV Pay           ',_Inc1tr2,_Inc2tr2,_Inc3tr2,_Inc4tr2,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='SR2 Free          ',_Inc1tr3,_Inc2tr3,_Inc3tr3,_Inc4tr3,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='SR2 Pay           ',_Inc1tr4,_Inc2tr4,_Inc3tr4,_Inc4tr4,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='SR3 Free          ',_Inc1tr5,_Inc2tr5,_Inc3tr5,_Inc4tr5,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='SR3 Pay           ',_Inc1tr6,_Inc2tr6,_Inc3tr6,_Inc4tr6,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='Walk              ',_Inc1tr7,_Inc2tr7,_Inc3tr7,_Inc4tr7,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='Bike              ',_Inc1tr8,_Inc2tr8,_Inc3tr8,_Inc4tr8,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='Walk premium      ',_Inc1tr9,_Inc2tr9,_Inc3tr9,_Inc4tr9,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='Walk only local   ',_Inc1tr10,_Inc2tr10,_Inc3tr10,_Inc4tr10,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='Drive premium     ',_Inc1tr11,_Inc2tr11,_Inc3tr11,_Inc4tr11,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='Drive only local  ',_Inc1tr12,_Inc2tr12,_Inc3tr12,_Inc4tr12,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='School bus        ',_Inc1tr13,_Inc2tr13,_Inc3tr13,_Inc4tr13,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.0C,list='Total             ',_Inc1tr,_Inc2tr,_Inc3tr,_Inc4tr,FILE=EVAL\ABMsum{year}.txt,append=t
 print list=' ',FILE=EVAL\ABMsum{year}.txt,append=t
 print list='AVG TIME BY MODE      INCOME 1    INCOME 2    INCOME 3    INCOME 4',FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SOV Free          ',_Inc1trt1,_Inc2trt1,_Inc3trt1,_Inc4trt1,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SOV Pay           ',_Inc1trt2,_Inc2trt2,_Inc3trt2,_Inc4trt2,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR2 Free          ',_Inc1trt3,_Inc2trt3,_Inc3trt3,_Inc4trt3,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR2 Pay           ',_Inc1trt4,_Inc2trt4,_Inc3trt4,_Inc4trt4,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR3 Free          ',_Inc1trt5,_Inc2trt5,_Inc3trt5,_Inc4trt5,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR3 Pay           ',_Inc1trt6,_Inc2trt6,_Inc3trt6,_Inc4trt6,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Walk              ',_Inc1trt7,_Inc2trt7,_Inc3trt7,_Inc4trt7,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Bike              ',_Inc1trt8,_Inc2trt8,_Inc3trt8,_Inc4trt8,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Walk premium      ',_Inc1trt9,_Inc2trt9,_Inc3trt9,_Inc4trt9,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Walk only local   ',_Inc1trt10,_Inc2trt10,_Inc3trt10,_Inc4trt10,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Drive premium     ',_Inc1trt11,_Inc2trt11,_Inc3trt11,_Inc4trt11,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Drive only local  ',_Inc1trt12,_Inc2trt12,_Inc3trt12,_Inc4trt12,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='School bus        ',_Inc1trt13,_Inc2trt13,_Inc3trt13,_Inc4trt13,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Total             ',_Inc1trt,_Inc2trt,_Inc3trt,_Inc4trt,FILE=EVAL\ABMsum{year}.txt,append=t
 print list=' ',FILE=EVAL\ABMsum{year}.txt,append=t
 print list='AVG DIST BY MODE      INCOME 1    INCOME 2    INCOME 3    INCOME 4',FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SOV Free          ',_Inc1trd1,_Inc2trd1,_Inc3trd1,_Inc4trd1,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SOV Pay           ',_Inc1trd2,_Inc2trd2,_Inc3trd2,_Inc4trd2,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR2 Free          ',_Inc1trd3,_Inc2trd3,_Inc3trd3,_Inc4trd3,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR2 Pay           ',_Inc1trd4,_Inc2trd4,_Inc3trd4,_Inc4trd4,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR3 Free          ',_Inc1trd5,_Inc2trd5,_Inc3trd5,_Inc4trd5,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='SR3 Pay           ',_Inc1trd6,_Inc2trd6,_Inc3trd6,_Inc4trd6,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Walk              ',_Inc1trd7,_Inc2trd7,_Inc3trd7,_Inc4trd7,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Bike              ',_Inc1trd8,_Inc2trd8,_Inc3trd8,_Inc4trd8,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Walk premium      ',_Inc1trd9,_Inc2trd9,_Inc3trd9,_Inc4trd9,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Walk only local   ',_Inc1trd10,_Inc2trd10,_Inc3trd10,_Inc4trd10,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Drive premium     ',_Inc1trd11,_Inc2trd11,_Inc3trd11,_Inc4trd11,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Drive only local  ',_Inc1trd12,_Inc2trd12,_Inc3trd12,_Inc4trd12,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='School bus        ',_Inc1trd13,_Inc2trd13,_Inc3trd13,_Inc4trd13,FILE=EVAL\ABMsum{year}.txt,append=t
 print form=12.1,list='Total             ',_Inc1trd,_Inc2trd,_Inc3trd,_Inc4trd,FILE=EVAL\ABMsum{year}.txt,append=t
;===================================================================================
;PRINT AREA TYPE SUMMARIES
;trips by mode
 PRINT LIST='SOV free trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr1,_a12tr1,_a13tr1,_a14tr1,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr1,_a22tr1,_a23tr1,_a24tr1,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr1,_a32tr1,_a33tr1,_a34tr1,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr1,_a42tr1,_a43tr1,_a44tr1,PRINTO=4
 PRINT LIST='SOV pay trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr2,_a12tr2,_a13tr2,_a14tr2,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr2,_a22tr2,_a23tr2,_a24tr2,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr2,_a32tr2,_a33tr2,_a34tr2,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr2,_a42tr2,_a43tr2,_a44tr2,PRINTO=4
 PRINT LIST='HOV2 free trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr3,_a12tr3,_a13tr3,_a14tr3,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr3,_a22tr3,_a23tr3,_a24tr3,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr3,_a32tr3,_a33tr3,_a34tr3,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr3,_a42tr3,_a43tr3,_a44tr3,PRINTO=4
 PRINT LIST='HOV2 pay trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr4,_a12tr4,_a13tr4,_a14tr4,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr4,_a22tr4,_a23tr4,_a24tr4,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr4,_a32tr4,_a33tr4,_a34tr4,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr4,_a42tr4,_a43tr4,_a44tr4,PRINTO=4
 PRINT LIST='HOV3 free trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr5,_a12tr5,_a13tr5,_a14tr5,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr5,_a22tr5,_a23tr5,_a24tr5,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr5,_a32tr5,_a33tr5,_a34tr5,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr5,_a42tr5,_a43tr5,_a44tr5,PRINTO=4
 PRINT LIST='HOV3 pay trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr6,_a12tr6,_a13tr6,_a14tr6,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr6,_a22tr6,_a23tr6,_a24tr6,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr6,_a32tr6,_a33tr6,_a34tr6,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr6,_a42tr6,_a43tr6,_a44tr6,PRINTO=4
 PRINT LIST='Walk trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr7,_a12tr7,_a13tr7,_a14tr7,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr7,_a22tr7,_a23tr7,_a24tr7,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr7,_a32tr7,_a33tr7,_a34tr7,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr7,_a42tr7,_a43tr7,_a44tr7,PRINTO=4
 PRINT LIST='Bike trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr8,_a12tr8,_a13tr8,_a14tr8,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr8,_a22tr8,_a23tr8,_a24tr8,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr8,_a32tr8,_a33tr8,_a34tr8,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr8,_a42tr8,_a43tr8,_a44tr8,PRINTO=4
 PRINT LIST='Walk premium transit trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr9,_a12tr9,_a13tr9,_a14tr9,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr9,_a22tr9,_a23tr9,_a24tr9,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr9,_a32tr9,_a33tr9,_a34tr9,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr9,_a42tr9,_a43tr9,_a44tr9,PRINTO=4
 PRINT LIST='Walk non-premium transit trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr10,_a12tr10,_a13tr10,_a14tr10,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr10,_a22tr10,_a23tr10,_a24tr10,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr10,_a32tr10,_a33tr10,_a34tr10,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr10,_a42tr10,_a43tr10,_a44tr10,PRINTO=4
 PRINT LIST='PNR/KNR premium transit trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr11,_a12tr11,_a13tr11,_a14tr11,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr11,_a22tr11,_a23tr11,_a24tr11,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr11,_a32tr11,_a33tr11,_a34tr11,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr11,_a42tr11,_a43tr11,_a44tr11,PRINTO=4
 PRINT LIST='PNR/KNR non-premium transit trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr12,_a12tr12,_a13tr12,_a14tr12,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr12,_a22tr12,_a23tr12,_a24tr12,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr12,_a32tr12,_a33tr12,_a34tr12,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr12,_a42tr12,_a43tr12,_a44tr12,PRINTO=4
 PRINT LIST='School bus trips between area types by mode',PRINTO=4
 PRINT LIST='Area Type,Major Activity Center,Urban,Suburban,Rural',PRINTO=4
 PRINT CSV=T,LIST='Major Activity Center',_a11tr13,_a12tr13,_a13tr13,_a14tr13,PRINTO=4
 PRINT CSV=T,LIST='Urban                ',_a21tr13,_a22tr13,_a23tr13,_a24tr13,PRINTO=4
 PRINT CSV=T,LIST='Suburban             ',_a31tr13,_a32tr13,_a33tr13,_a34tr13,PRINTO=4
 PRINT CSV=T,LIST='Rural                ',_a41tr13,_a42tr13,_a43tr13,_a44tr13,PRINTO=4
;===================================================================================
;===================================================================================
;PRINT HOUSEHOLD TYPE SUMMARIES
;trips by mode
 PRINT LIST='Trips by Household Type and Mode',PRINTO=5
 PRINT LIST='Household Type,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=5
 PRINT CSV=T,LIST='Single',_ht1tr,_ht1tr1,_ht1tr2,_ht1tr3,_ht1tr4,_ht1tr5,_ht1tr6,_ht1tr7,_ht1tr8,_ht1tr9,_ht1tr10,_ht1tr11,_ht1tr12,_ht1tr13,PRINTO=5
 PRINT CSV=T,LIST='Single income w/ kids',_ht2tr,_ht2tr1,_ht2tr2,_ht2tr3,_ht2tr4,_ht2tr5,_ht2tr6,_ht2tr7,_ht2tr8,_ht2tr9,_ht2tr10,_ht2tr11,_ht2tr12,_ht2tr13,PRINTO=5
 PRINT CSV=T,LIST='Single income w/out kids',_ht3tr,_ht3tr1,_ht3tr2,_ht3tr3,_ht3tr4,_ht3tr5,_ht3tr6,_ht3tr7,_ht3tr8,_ht3tr9,_ht3tr10,_ht3tr11,_ht3tr12,_ht3tr13,PRINTO=5
 PRINT CSV=T,LIST='Double income w/ kids',_ht4tr,_ht4tr1,_ht4tr2,_ht4tr3,_ht4tr4,_ht4tr5,_ht4tr6,_ht4tr7,_ht4tr8,_ht4tr9,_ht4tr10,_ht4tr11,_ht4tr12,_ht4tr13,PRINTO=5
 PRINT CSV=T,LIST='Double income w/out kids',_ht5tr,_ht5tr1,_ht5tr2,_ht5tr3,_ht5tr4,_ht5tr5,_ht5tr6,_ht5tr7,_ht5tr8,_ht5tr9,_ht5tr10,_ht5tr11,_ht5tr12,_ht5tr13,PRINTO=5
 PRINT CSV=T,LIST='Retired',_ht6tr,_ht6tr1,_ht6tr2,_ht6tr3,_ht6tr4,_ht6tr5,_ht6tr6,_ht6tr7,_ht6tr8,_ht6tr9,_ht6tr10,_ht6tr11,_ht6tr12,_ht6tr13,PRINTO=5
 PRINT CSV=T,LIST='Multi-person Non-worker',_ht7tr,_ht7tr1,_ht7tr2,_ht7tr3,_ht7tr4,_ht7tr5,_ht7tr6,_ht7tr7,_ht7tr8,_ht7tr9,_ht7tr10,_ht7tr11,_ht7tr12,_ht7tr13,PRINTO=5
 ;avg time by mode
 PRINT LIST='Avg Time by Household Type and Mode',PRINTO=5
 PRINT LIST='Household Type,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=5
 PRINT CSV=T,LIST='Single',_ht1trt,_ht1trt1,_ht1trt2,_ht1trt3,_ht1trt4,_ht1trt5,_ht1trt6,_ht1trt7,_ht1trt8,_ht1trt9,_ht1trt10,_ht1trt11,_ht1trt12,_ht1trt13,PRINTO=5
 PRINT CSV=T,LIST='Single income w/ kids',_ht2trt,_ht2trt1,_ht2trt2,_ht2trt3,_ht2trt4,_ht2trt5,_ht2trt6,_ht2trt7,_ht2trt8,_ht2trt9,_ht2trt10,_ht2trt11,_ht2trt12,_ht2trt13,PRINTO=5
 PRINT CSV=T,LIST='Single income w/out kids',_ht3trt,_ht3trt1,_ht3trt2,_ht3trt3,_ht3trt4,_ht3trt5,_ht3trt6,_ht3trt7,_ht3trt8,_ht3trt9,_ht3trt10,_ht3trt11,_ht3trt12,_ht3trt13,PRINTO=5
 PRINT CSV=T,LIST='Double income w/ kids',_ht4trt,_ht4trt1,_ht4trt2,_ht4trt3,_ht4trt4,_ht4trt5,_ht4trt6,_ht4trt7,_ht4trt8,_ht4trt9,_ht4trt10,_ht4trt11,_ht4trt12,_ht4trt13,PRINTO=5
 PRINT CSV=T,LIST='Double income w/out kids',_ht5trt,_ht5trt1,_ht5trt2,_ht5trt3,_ht5trt4,_ht5trt5,_ht5trt6,_ht5trt7,_ht5trt8,_ht5trt9,_ht5trt10,_ht5trt11,_ht5trt12,_ht5trt13,PRINTO=5
 PRINT CSV=T,LIST='Retired',_ht6trt,_ht6trt1,_ht6trt2,_ht6trt3,_ht6trt4,_ht6trt5,_ht6trt6,_ht6trt7,_ht6trt8,_ht6trt9,_ht6trt10,_ht6trt11,_ht6trt12,_ht6trt13,PRINTO=5
 PRINT CSV=T,LIST='Multi-person Non-worker',_ht7trt,_ht7trt1,_ht7trt2,_ht7trt3,_ht7trt4,_ht7trt5,_ht7trt6,_ht7trt7,_ht7trt8,_ht7trt9,_ht7trt10,_ht7trt11,_ht7trt12,_ht7trt13,PRINTO=5
;avg dist by mode
 PRINT LIST='Avg Distance by Household Type and Mode',PRINTO=5
 PRINT LIST='Household Type,All Modes,SOVFree,SOVPay,SR2Free,SR2Pay,SR3Free,SR3Pay,Walk,Bike,WlkPrm,WlkNon,DrvPrm,DrvNon,SchBus',PRINTO=5
 PRINT CSV=T,LIST='Single',_ht1trd,_ht1trd1,_ht1trd2,_ht1trd3,_ht1trd4,_ht1trd5,_ht1trd6,_ht1trd7,_ht1trd8,_ht1trd9,_ht1trd10,_ht1trd11,_ht1trd12,_ht1trd13,PRINTO=5
 PRINT CSV=T,LIST='Single income w/ kids',_ht2trd,_ht2trd1,_ht2trd2,_ht2trd3,_ht2trd4,_ht2trd5,_ht2trd6,_ht2trd7,_ht2trd8,_ht2trd9,_ht2trd10,_ht2trd11,_ht2trd12,_ht2trd13,PRINTO=5
 PRINT CSV=T,LIST='Single income w/out kids',_ht3trd,_ht3trd1,_ht3trd2,_ht3trd3,_ht3trd4,_ht3trd5,_ht3trd6,_ht3trd7,_ht3trd8,_ht3trd9,_ht3trd10,_ht3trd11,_ht3trd12,_ht3trd13,PRINTO=5
 PRINT CSV=T,LIST='Double income w/ kids',_ht4trd,_ht4trd1,_ht4trd2,_ht4trd3,_ht4trd4,_ht4trd5,_ht4trd6,_ht4trd7,_ht4trd8,_ht4trd9,_ht4trd10,_ht4trd11,_ht4trd12,_ht4trd13,PRINTO=5
 PRINT CSV=T,LIST='Double income w/out kids',_ht5trd,_ht5trd1,_ht5trd2,_ht5trd3,_ht5trd4,_ht5trd5,_ht5trd6,_ht5trd7,_ht5trd8,_ht5trd9,_ht5trd10,_ht5trd11,_ht5trd12,_ht5trd13,PRINTO=5
 PRINT CSV=T,LIST='Retired',_ht6trd,_ht6trd1,_ht6trd2,_ht6trd3,_ht6trd4,_ht6trd5,_ht6trd6,_ht6trd7,_ht6trd8,_ht6trd9,_ht6trd10,_ht6trd11,_ht6trd12,_ht6trd13,PRINTO=5
 PRINT CSV=T,LIST='Multi-person Non-worker',_ht7trd,_ht7trd1,_ht7trd2,_ht7trd3,_ht7trd4,_ht7trd5,_ht7trd6,_ht7trd7,_ht7trd8,_ht7trd9,_ht7trd10,_ht7trd11,_ht7trd12,_ht7trd13,PRINTO=5
 
;================================================================
;print ETA summaries
;compute totals
 _etatot = _etasov + _etahov + _etabpd + _etatrn
 _netatot = _netasov + _netahov + _netabpd + _netatrn
;compute percent
;eta
 _etasovpct = _etasov / _etatot * 100
 _etahovpct = _etahov / _etatot * 100
 _etabpdpct = _etabpd / _etatot * 100
 _etatrnpct = _etatrn / _etatot * 100
;neta
 _netasovpct = _netasov / _netatot * 100
 _netahovpct = _netahov / _netatot * 100
 _netabpdpct = _netabpd / _netatot * 100
 _netatrnpct = _netatrn / _netatot * 100

 PRINT LIST='Trips by Mode for ETAs and non-ETAs',PRINTO=6
 PRINT LIST='Mode,ETA,Non-ETA,ETA Percent,Non-ETA Percent',PRINTO=6
 PRINT CSV=T,LIST='SOV',_etasov,_netasov,_etasovpct,_netasovpct,PRINTO=6
 PRINT CSV=T,LIST='HOV',_etahov,_netahov,_etahovpct,_netahovpct,PRINTO=6
 PRINT CSV=T,LIST='Bike/Ped',_etabpd,_netabpd,_etabpdpct,_netabpdpct,PRINTO=6
 PRINT CSV=T,LIST='Transit',_etatrn,_netatrn,_etatrnpct,_netatrnpct,PRINTO=6
;================================================================
;PRINT TRIP PURPOSE SUMMARIES
;compute percent
 _wrktrippct = _wrktrip / _tottrip * 100
 _atwtrippct = _atwtrip / _tottrip * 100
 _eattrippct = _eattrip / _tottrip * 100
 _esctrippct = _esctrip / _tottrip * 100
 _homtrippct = _homtrip / _tottrip * 100
 _distrippct = _distrip / _tottrip * 100
 _mnttrippct = _mnttrip / _tottrip * 100
 _schtrippct = _schtrip / _tottrip * 100
 _shptrippct = _shptrip / _tottrip * 100
 _soctrippct = _soctrip / _tottrip * 100
 _unvtrippct = _unvtrip / _tottrip * 100
 _tottrippct = _tottrip / _tottrip * 100

;trips by purpose
 PRINT LIST='Trips by Destination Purpose',PRINTO=7
 PRINT LIST='Trip Purpose,Trips,Percent',PRINTO=7
 PRINT CSV=T,LIST='Work',_wrktrip,_wrktrippct,PRINTO=7
 PRINT CSV=T,LIST='At-work',_atwtrip,_atwtrippct,PRINTO=7
 PRINT CSV=T,LIST='Eatout',_eattrip,_eattrippct,PRINTO=7
 PRINT CSV=T,LIST='Escort',_esctrip,_esctrippct,PRINTO=7
 PRINT CSV=T,LIST='Home',_homtrip,_homtrippct,PRINTO=7
 PRINT CSV=T,LIST='Other discretionary',_distrip,_distrippct,PRINTO=7
 PRINT CSV=T,LIST='Other maintenance',_mnttrip,_mnttrippct,PRINTO=7
 PRINT CSV=T,LIST='School',_schtrip,_schtrippct,PRINTO=7
 PRINT CSV=T,LIST='Shopping',_shptrip,_shptrippct,PRINTO=7
 PRINT CSV=T,LIST='Social',_soctrip,_soctrippct,PRINTO=7
 PRINT CSV=T,LIST='University',_unvtrip,_unvtrippct,PRINTO=7
 PRINT CSV=T,LIST='Total',_tottrip,_tottrippct,PRINTO=7
;================================================================
;PRINT TRAVEL TIME SUMMARIES
;compute percent
 _alltr1pct = _alltr1 / _tottrip * 100
 _alltr2pct = _alltr2 / _tottrip * 100
 _alltr3pct = _alltr3 / _tottrip * 100
 _alltr4pct = _alltr4 / _tottrip * 100
 _alltr5pct = _alltr5 / _tottrip * 100
 _alltr6pct = _alltr6 / _tottrip * 100
 _alltr7pct = _alltr7 / _tottrip * 100
 _alltr8pct = _alltr8 / _tottrip * 100
 _alltr9pct = _alltr9 / _tottrip * 100
 _alltr10pct = _alltr10 / _tottrip * 100
 _alltr11pct = _alltr11 / _tottrip * 100
 _alltr12pct = _alltr12 / _tottrip * 100
 _alltr13pct = _alltr13 / _tottrip * 100
 _alltrpct = _alltr / _tottrip * 100
;===================================================================================
;trips by mode
 PRINT LIST='Avg Travel Time and Distance by Mode',PRINTO=8
 PRINT LIST='Mode,Trips,Avg Time,Avg Dist,Percent',PRINTO=8
 PRINT CSV=T,LIST='SOV free',_alltr1,_alltrt1,_alltrd1,_alltr1pct,PRINTO=8
 PRINT CSV=T,LIST='SOV pay',_alltr2,_alltrt2,_alltrd2,_alltr2pct,PRINTO=8
 PRINT CSV=T,LIST='SR2 free',_alltr3,_alltrt3,_alltrd3,_alltr3pct,PRINTO=8
 PRINT CSV=T,LIST='SR2 pay',_alltr4,_alltrt4,_alltrd4,_alltr4pct,PRINTO=8
 PRINT CSV=T,LIST='SR3 free',_alltr5,_alltrt5,_alltrd5,_alltr5pct,PRINTO=8
 PRINT CSV=T,LIST='SR3 pay',_alltr6,_alltrt6,_alltrd6,_alltr6pct,PRINTO=8
 PRINT CSV=T,LIST='Walk',_alltr7,_alltrt7,_alltrd7,_alltr7pct,PRINTO=8
 PRINT CSV=T,LIST='Bike',_alltr8,_alltrt8,_alltrd8,_alltr8pct,PRINTO=8
 PRINT CSV=T,LIST='Wlk premium',_alltr9,_alltrt9,_alltrd9,_alltr9pct,PRINTO=8
 PRINT CSV=T,LIST='Wlk non-premium',_alltr10,_alltrt10,_alltrd10,_alltr10pct,PRINTO=8
 PRINT CSV=T,LIST='Drv premium',_alltr11,_alltrt11,_alltrd11,_alltr11pct,PRINTO=8
 PRINT CSV=T,LIST='Drv non-premium',_alltr12,_alltrt12,_alltrd12,_alltr12pct,PRINTO=8
 PRINT CSV=T,LIST='School bus',_alltr13,_alltrt13,_alltrd13,_alltr13pct,PRINTO=8
 PRINT CSV=T,LIST='All trips',_alltr,_alltrt,_alltrd,_alltrpct,PRINTO=8
;================================================================
;PRINT TRIP MODE SUMMARY BY WORK/NON-WORK TOURS
;trips by mode
;compute total
 _wrktrtot = _wrktourtr1+_wrktourtr2+_wrktourtr3+_wrktourtr4+_wrktourtr5+_wrktourtr6+_wrktourtr7+_wrktourtr8+_wrktourtr9+_wrktourtr10+_wrktourtr11+_wrktourtr12+_wrktourtr13
 _nwktrtot = _nwktourtr1+_nwktourtr2+_nwktourtr3+_nwktourtr4+_nwktourtr5+_nwktourtr6+_nwktourtr7+_nwktourtr8+_nwktourtr9+_nwktourtr10+_nwktourtr11+_nwktourtr12+_nwktourtr13
;compute percent
;trips on work tours
 _wrktr1pct = _wrktourtr1 / _wrktrtot * 100
 _wrktr2pct = _wrktourtr2 / _wrktrtot * 100
 _wrktr3pct = _wrktourtr3 / _wrktrtot * 100
 _wrktr4pct = _wrktourtr4 / _wrktrtot * 100
 _wrktr5pct = _wrktourtr5 / _wrktrtot * 100
 _wrktr6pct = _wrktourtr6 / _wrktrtot * 100
 _wrktr7pct = _wrktourtr7 / _wrktrtot * 100
 _wrktr8pct = _wrktourtr8 / _wrktrtot * 100
 _wrktr9pct = _wrktourtr9 / _wrktrtot * 100
 _wrktr10pct = _wrktourtr10 / _wrktrtot * 100
 _wrktr11pct = _wrktourtr11 / _wrktrtot * 100
 _wrktr12pct = _wrktourtr12 / _wrktrtot * 100
 _wrktr13pct = _wrktourtr13 / _wrktrtot * 100
;trips on non-work tours
 _nwktr1pct = _nwktourtr1 / _nwktrtot * 100
 _nwktr2pct = _nwktourtr2 / _nwktrtot * 100
 _nwktr3pct = _nwktourtr3 / _nwktrtot * 100
 _nwktr4pct = _nwktourtr4 / _nwktrtot * 100
 _nwktr5pct = _nwktourtr5 / _nwktrtot * 100
 _nwktr6pct = _nwktourtr6 / _nwktrtot * 100
 _nwktr7pct = _nwktourtr7 / _nwktrtot * 100
 _nwktr8pct = _nwktourtr8 / _nwktrtot * 100
 _nwktr9pct = _nwktourtr9 / _nwktrtot * 100
 _nwktr10pct = _nwktourtr10 / _nwktrtot * 100
 _nwktr11pct = _nwktourtr11 / _nwktrtot * 100
 _nwktr12pct = _nwktourtr12 / _nwktrtot * 100
 _nwktr13pct = _nwktourtr13 / _nwktrtot * 100
 
 PRINT LIST='Trips by Mode for Work and Non-work Tours',PRINTO=9
 PRINT LIST='Mode,Trips on Work Tours,Trips on Non-Work Tours,Percent Work Tours,Percent Non-Work Tours',PRINTO=9
 PRINT CSV=T,LIST='SOV free',_wrktourtr1,_nwktourtr1,_wrktr1pct,_nwktr1pct,PRINTO=9
 PRINT CSV=T,LIST='SOV pay',_wrktourtr2,_nwktourtr2,_wrktr2pct,_nwktr2pct,PRINTO=9
 PRINT CSV=T,LIST='SR2 free',_wrktourtr3,_nwktourtr3,_wrktr3pct,_nwktr3pct,PRINTO=9
 PRINT CSV=T,LIST='SR2 pay',_wrktourtr4,_nwktourtr4,_wrktr4pct,_nwktr4pct,PRINTO=9
 PRINT CSV=T,LIST='SR3 free',_wrktourtr5,_nwktourtr5,_wrktr5pct,_nwktr5pct,PRINTO=9
 PRINT CSV=T,LIST='SR3 pay',_wrktourtr6,_nwktourtr6,_wrktr6pct,_nwktr6pct,PRINTO=9
 PRINT CSV=T,LIST='Walk',_wrktourtr7,_nwktourtr7,_wrktr7pct,_nwktr7pct,PRINTO=9
 PRINT CSV=T,LIST='Bike',_wrktourtr8,_nwktourtr8,_wrktr8pct,_nwktr8pct,PRINTO=9
 PRINT CSV=T,LIST='Wlk premium',_wrktourtr9,_nwktourtr9,_wrktr9pct,_nwktr9pct,PRINTO=9
 PRINT CSV=T,LIST='Wlk non-premium',_wrktourtr10,_nwktourtr10,_wrktr10pct,_nwktr10pct,PRINTO=9
 PRINT CSV=T,LIST='Drv premium',_wrktourtr11,_nwktourtr11,_wrktr11pct,_nwktr11pct,PRINTO=9
 PRINT CSV=T,LIST='Drv non-premium',_wrktourtr12,_nwktourtr12,_wrktr12pct,_nwktr12pct,PRINTO=9
 PRINT CSV=T,LIST='School bus',_wrktourtr13,_nwktourtr13,_wrktr13pct,_nwktr13pct,PRINTO=9
;===================================================================================
;---------------------------------------
;Print walk to transit time bins
 PRINT LIST='Walk to transit travel time distribution',PRINTO=10
 PRINT LIST='Time Bin Cutoff,Walk time,Drive time,Wait time,In-vehicle time',PRINTO=10
 PRINT CSV=T,LIST='5',_wwlk5,_wdrv5,_wxfr5,_wivt5,PRINTO=10
 PRINT CSV=T,LIST='10',_wwlk10,_wdrv10,_wxfr10,_wivt10,PRINTO=10
 PRINT CSV=T,LIST='15',_wwlk15,_wdrv15,_wxfr15,_wivt15,PRINTO=10
 PRINT CSV=T,LIST='20',_wwlk20,_wdrv20,_wxfr20,_wivt20,PRINTO=10
 PRINT CSV=T,LIST='25',_wwlk25,_wdrv25,_wxfr25,_wivt25,PRINTO=10
 PRINT CSV=T,LIST='30',_wwlk30,_wdrv30,_wxfr30,_wivt30,PRINTO=10
 PRINT CSV=T,LIST='35',_wwlk35,_wdrv35,_wxfr35,_wivt35,PRINTO=10
 PRINT CSV=T,LIST='40',_wwlk40,_wdrv40,_wxfr40,_wivt40,PRINTO=10
 PRINT CSV=T,LIST='45',_wwlk45,_wdrv45,_wxfr45,_wivt45,PRINTO=10
 PRINT CSV=T,LIST='60',_wwlk60,_wdrv60,_wxfr60,_wivt60,PRINTO=10
 PRINT CSV=T,LIST='>60',_wwlk99,_wdrv99,_wxfr99,_wivt99,PRINTO=10
;Print drive to transit time bins
 PRINT LIST='Drive to transit travel time distribution',PRINTO=10
 PRINT LIST='Time Bin Cutoff,Walk time,Drive time,Wait time,In-vehicle time',PRINTO=10
 PRINT CSV=T,LIST='5',_dwlk5,_ddrv5,_dxfr5,_divt5,PRINTO=10
 PRINT CSV=T,LIST='10',_dwlk10,_ddrv10,_dxfr10,_divt10,PRINTO=10
 PRINT CSV=T,LIST='15',_dwlk15,_ddrv15,_dxfr15,_divt15,PRINTO=10
 PRINT CSV=T,LIST='20',_dwlk20,_ddrv20,_dxfr20,_divt20,PRINTO=10
 PRINT CSV=T,LIST='25',_dwlk25,_ddrv25,_dxfr25,_divt25,PRINTO=10
 PRINT CSV=T,LIST='30',_dwlk30,_ddrv30,_dxfr30,_divt30,PRINTO=10
 PRINT CSV=T,LIST='35',_dwlk35,_ddrv35,_dxfr35,_divt35,PRINTO=10
 PRINT CSV=T,LIST='40',_dwlk40,_ddrv40,_dxfr40,_divt40,PRINTO=10
 PRINT CSV=T,LIST='45',_dwlk45,_ddrv45,_dxfr45,_divt45,PRINTO=10
 PRINT CSV=T,LIST='60',_dwlk60,_ddrv60,_dxfr60,_divt60,PRINTO=10
 PRINT CSV=T,LIST='>60',_dwlk99,_ddrv99,_dxfr99,_divt99,PRINTO=10
;===================================================================================
;---------------------------------------
;Print walk to transit time bins
 PRINT LIST='Walk to transit average travel time distribution',PRINTO=10
 PRINT LIST='Time Bin Cutoff,Walk time,Drive time,Wait time,In-vehicle time,Total Time',PRINTO=10
 PRINT CSV=T,LIST='10',_avgwwlkb1,_avgwautb1,_avgwxfrb1,_avgwivtb1,_avgwtmeb1,PRINTO=10
 PRINT CSV=T,LIST='20',_avgwwlkb2,_avgwautb2,_avgwxfrb2,_avgwivtb2,_avgwtmeb2,PRINTO=10
 PRINT CSV=T,LIST='30',_avgwwlkb3,_avgwautb3,_avgwxfrb3,_avgwivtb3,_avgwtmeb3,PRINTO=10
 PRINT CSV=T,LIST='45',_avgwwlkb4,_avgwautb4,_avgwxfrb4,_avgwivtb4,_avgwtmeb4,PRINTO=10
 PRINT CSV=T,LIST='60',_avgwwlkb5,_avgwautb5,_avgwxfrb5,_avgwivtb5,_avgwtmeb5,PRINTO=10
 PRINT CSV=T,LIST='75',_avgwwlkb6,_avgwautb6,_avgwxfrb6,_avgwivtb6,_avgwtmeb6,PRINTO=10
 PRINT CSV=T,LIST='>75',_avgwwlkb7,_avgwautb7,_avgwxfrb7,_avgwivtb7,_avgwtmeb7,PRINTO=10
 PRINT LIST='Drive to transit average travel time distribution',PRINTO=10
 PRINT LIST='Time Bin Cutoff,Walk time,Drive time,Wait time,In-vehicle time,Total Time',PRINTO=10
 PRINT CSV=T,LIST='10',_avgawlkb1,_avgaautb1,_avgaxfrb1,_avgaivtb1,_avgatmeb1,PRINTO=10
 PRINT CSV=T,LIST='20',_avgawlkb2,_avgaautb2,_avgaxfrb2,_avgaivtb2,_avgatmeb2,PRINTO=10
 PRINT CSV=T,LIST='30',_avgawlkb3,_avgaautb3,_avgaxfrb3,_avgaivtb3,_avgatmeb3,PRINTO=10
 PRINT CSV=T,LIST='45',_avgawlkb4,_avgaautb4,_avgaxfrb4,_avgaivtb4,_avgatmeb4,PRINTO=10
 PRINT CSV=T,LIST='60',_avgawlkb5,_avgaautb5,_avgaxfrb5,_avgaivtb5,_avgatmeb5,PRINTO=10
 PRINT CSV=T,LIST='75',_avgawlkb6,_avgaautb6,_avgaxfrb6,_avgaivtb6,_avgatmeb6,PRINTO=10
 PRINT CSV=T,LIST='>75',_avgawlkb7,_avgaautb7,_avgaxfrb7,_avgaivtb7,_avgatmeb7,PRINTO=10 
;===================================================================================
 ENDIF ;last record check
ENDRUN                                 

EndDistributeMULTISTEP ;end the parallel distribution

;distribute the steps processing tours to run while the previous three steps are running
DistributeMultistep ProcessID="{ProcID}",ProcessNum=11

;===============================================================================
;PROCESS INDIV TOUR DATA
RUN PGM=MATRIX
RECI=@tour_data@,DELIMITER=',' HHID=1,PERID=2,PURP(C)=7,ORIG_TAZ=8,DEST_TAZ=10,START_PER=12,END_PER=13,MODE=14
RECO[1]=Eval\WorkToursEA.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[2]=Eval\WorkToursAM.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[3]=Eval\WorkToursMD.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[4]=Eval\WorkToursPM.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[5]=Eval\WorkToursEV.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[6]=Eval\WorkToursAll.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[7]=Eval\IndNonWorkToursEA.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[8]=Eval\IndNonWorkToursAM.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[9]=Eval\IndNonWorkToursMD.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[10]=Eval\IndNonWorkToursPM.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[11]=Eval\IndNonWorkToursEV.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
RECO[12]=Eval\IndNonWorkToursAll.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
PRINTO[1]=Eval\IndivTourSummary.CSV

IF(RECI.RECNO>1)
;----------------------------------------
;create numeric purpose for work tours
 IF(RI.PURP='work_bluecollar')
  RO.TPURP=1
 ELSEIF(RI.PURP='work_health')
  RO.TPURP=2
 ELSEIF(RI.PURP='work_retailandfood')
  RO.TPURP=3
 ELSEIF(RI.PURP='work_services')
  RO.TPURP=4
 ELSEIF(RI.PURP='work_whitecollar')
  RO.TPURP=5
 ELSE
  RO.TPURP=0
 ENDIF
 RO.HHID=RI.HHID
 RO.PERID=RI.PERID
 RO.ORIG_TAZ=RI.ORIG_TAZ
 RO.DEST_TAZ=RI.DEST_TAZ
 RO.START_PER=RI.START_PER
 RO.MODE=RI.MODE
  DA = 0                                
 DATOLL = 0                                
 SR2 = 0                                
 SR2TOLL = 0                                
 SR3 = 0                                
 SR3TOLL = 0                                
 WALK = 0
 BIKE = 0
 WLKALLWLK = 0
 WLKPRMWLK = 0
 PNRALLWLK = 0
 WLKALLPNR = 0
 PNRPRMWLK = 0
 WLKPRMPNR = 0
 KNRALLWLK = 0
 WLKALLKNR = 0
 KNRPRMWLK = 0
 WLKPRMKNR = 0
 SCHLBUS = 0 
 IF(RI.MODE=1)
  DA = 1
 ELSEIF(RI.MODE=2)
  DATOLL = 1
 ELSEIF(RI.MODE=3)
  SR2 = 1
 ELSEIF(RI.MODE=4)
  SR2TOLL = 1
 ELSEIF(RI.MODE=5)
  SR3 = 1
 ELSEIF(RI.MODE=6)
  SR3TOLL = 1
 ELSEIF(RI.MODE=7)
  WALK = 1
 ELSEIF(RI.MODE=8)
  BIKE = 1
 ELSEIF(RI.MODE=9)
  WLKALLWLK = 1
 ELSEIF(RI.MODE=10)
  WLKPRMWLK = 1
 ELSEIF(RI.MODE=11)
   PNRALLWLK = 1
 ELSEIF(RI.MODE=12)
   PNRPRMWLK = 1
 ELSEIF(RI.MODE=13)
   KNRALLWLK = 1
 ELSEIF(RI.MODE=14)
   KNRPRMWLK = 1
 ELSEIF(RI.MODE=15)
  SCHLBUS = 1
 ENDIF
 ;write out work tours
 IF(RO.TPURP>0)
  IF(RO.START_PER=1-6)
   WRITE RECO=1
  ELSEIF(RO.START_PER=7-14)
   WRITE RECO=2
  ELSEIF(RO.START_PER=15-24)
   WRITE RECO=3
  ELSEIF(RO.START_PER=25-32)
   WRITE RECO=4
  ELSEIF(RO.START_PER=33-48)
   WRITE RECO=5
  ENDIF
  WRITE RECO=6
 ;write out non-work tours
 ELSE
  IF(RO.START_PER=1-6)
   WRITE RECO=7
  ELSEIF(RO.START_PER=7-14)
   WRITE RECO=8
  ELSEIF(RO.START_PER=15-24)
   WRITE RECO=9
  ELSEIF(RO.START_PER=25-32)
   WRITE RECO=10
  ELSEIF(RO.START_PER=33-48)
   WRITE RECO=11
  ENDIF
  WRITE RECO=12
 ENDIF
;----------------------------------------
;summarize number of tours by purpose
 IF(RI.PURP='work_bluecollar')
  _wrk = _wrk + 1
 ELSEIF(RI.PURP='work_health')
  _wrk = _wrk + 1
 ELSEIF(RI.PURP='work_retailandfood')
  _wrk = _wrk + 1
 ELSEIF(RI.PURP='work_services')
  _wrk = _wrk + 1
 ELSEIF(RI.PURP='work_whitecollar')
  _wrk = _wrk + 1
 ELSEIF(RI.PURP='atwork_business')
  _atw = _atw + 1
 ELSEIF(RI.PURP='atwork_eat')
  _atw = _atw + 1
 ELSEIF(RI.PURP='atwork_maint')
  _atw = _atw + 1
 ELSEIF(RI.PURP='eatout')
  _eat = _eat + 1
 ELSEIF(RI.PURP='escort_kids')
  _esc = _esc + 1
 ELSEIF(RI.PURP='escort_no kids')
  _esc = _esc + 1
 ELSEIF(RI.PURP='othdiscr')
  _dis = _dis + 1
 ELSEIF(RI.PURP='othmaint')
  _mai = _mai + 1
 ELSEIF(RI.PURP='school_drive')
  _sch = _sch + 1
 ELSEIF(RI.PURP='school_predrive')
  _sch = _sch + 1
 ELSEIF(RI.PURP='shopping')
  _shp = _shp + 1
 ELSEIF(RI.PURP='social')
  _soc = _soc + 1
 ELSEIF(RI.PURP='university')
  _unv = _unv + 1
 ENDIF
;----------------------------------------
ENDIF ;end first record check
;----------------------------------------
IF(RECI.RECNO=RECI.NUMRECORDS)

;print # tours by purpose
 PRINT LIST='Individual Tours by Purpose',PRINTO=1
 PRINT LIST='Tour Purpose,Tours',PRINTO=1
 PRINT CSV=T,LIST='Work',_wrk,PRINTO=1
 PRINT CSV=T,LIST='At-Work',_atw,PRINTO=1
 PRINT CSV=T,LIST='Eat out',_eat,PRINTO=1
 PRINT CSV=T,LIST='Escort',_esc,PRINTO=1
 PRINT CSV=T,LIST='Discretionary',_dis,PRINTO=1
 PRINT CSV=T,LIST='Maintenance',_mai,PRINTO=1
 PRINT CSV=T,LIST='School',_sch,PRINTO=1
 PRINT CSV=T,LIST='Shopping',_shp,PRINTO=1
 PRINT CSV=T,LIST='Social',_soc,PRINTO=1
 PRINT CSV=T,LIST='University',_unv,PRINTO=1
ENDIF
ENDRUN

;Process joint tour data 
RUN PGM=MATRIX
  RECI=@jointTour_data@,delimiter=',' hhid=#1,tour_participants(C)=6,orig_taz=7,dest_taz=9,start=11,end=12,mode=13
  RECO[1]="Eval\jointToursEA.dbf",fields=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,PAR,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
  RECO[2]="Eval\jointToursAM.dbf",fields=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,PAR,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
  RECO[3]="Eval\jointToursMD.dbf",fields=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,PAR,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
  RECO[4]="Eval\jointToursPM.dbf",fields=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,PAR,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
  RECO[5]="Eval\jointToursEV.dbf",fields=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,PAR,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
  RECO[6]="Eval\jointToursAll.dbf",fields=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,PAR,START_PER,MODE,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                     WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
  
  RO.HHID=RI.hhid
  RO.PERID=1 ;dummy for consistency in later steps
  RO.TURP=0  ;dummy for consistency in later steps
  RO.ORIG_TAZ=RI.orig_taz
  RO.DEST_TAZ=RI.dest_taz
  RO.START_PER=RI.START
  
  ; process number of participants traveling
  mystring = RI.TOUR_PARTICIPANTS
  strlength = STRLEN(mystring)  ;get strength length for looping
  
  print list=strlength, file=debug.prn
  
  _mycount=0
  loop strposition=1,strlength
    IF(substr(mystring,strposition,1)=' ') _mycount=_mycount+1  ;count number of spaces
  endloop
  RO.PAR = _mycount+1      ;final = # of spaces + 1
  
 ;write out modes 
 RO.MODE=RI.MODE
 DA = 0                                
 DATOLL = 0                                
 SR2 = 0                                
 SR2TOLL = 0                                
 SR3 = 0                                
 SR3TOLL = 0                                
 WALK = 0
 BIKE = 0
 WLKALLWLK = 0
 WLKPRMWLK = 0
 PNRALLWLK = 0
 WLKALLPNR = 0
 PNRPRMWLK = 0
 WLKPRMPNR = 0
 KNRALLWLK = 0
 WLKALLKNR = 0
 KNRPRMWLK = 0
 WLKPRMKNR = 0
 SCHLBUS = 0 
 IF(RI.MODE=1)
  DA = 1 * RO.PAR
 ELSEIF(RI.MODE=2)
  DATOLL = 1 * RO.PAR
 ELSEIF(RI.MODE=3)
  SR2 = 1 * RO.PAR
 ELSEIF(RI.MODE=4)
  SR2TOLL = 1 * RO.PAR
 ELSEIF(RI.MODE=5)
  SR3 = 1 * RO.PAR
 ELSEIF(RI.MODE=6)
  SR3TOLL = 1 * RO.PAR
 ELSEIF(RI.MODE=7)
  WALK = 1 * RO.PAR
 ELSEIF(RI.MODE=8)
  BIKE = 1 * RO.PAR
 ELSEIF(RI.MODE=9)
  WLKALLWLK = 1 * RO.PAR
 ELSEIF(RI.MODE=10)
  WLKPRMWLK = 1 * RO.PAR
 ELSEIF(RI.MODE=11)
   PNRALLWLK = 1 * RO.PAR
 ELSEIF(RI.MODE=12)
   PNRPRMWLK = 1 * RO.PAR
 ELSEIF(RI.MODE=13)
   KNRALLWLK = 1 * RO.PAR
 ELSEIF(RI.MODE=14)
   KNRPRMWLK = 1 * RO.PAR
 ELSEIF(RI.MODE=15)
  SCHLBUS = 1 * RO.PAR
 ENDIF
IF(RECI.RECNO>1)
  IF(RO.START_PER=1-6)
   WRITE RECO=1
  ELSEIF(RO.START_PER=7-14)
   WRITE RECO=2
  ELSEIF(RO.START_PER=15-24)
   WRITE RECO=3
  ELSEIF(RO.START_PER=25-32)
   WRITE RECO=4
  ELSEIF(RO.START_PER=33-48)
   WRITE RECO=5
  ENDIF
  WRITE RECO=6
ENDIF   
ENDRUN

EndDistributeMULTISTEP

;================================================================
;SKIM TABLE PREPARATION
LOOP N=1,2
IF(N=1)
 PER='EA'
ELSEIF(N=2)
 PER='AM'
ENDIF 
;CREATE SINGLE SET OF EA AND AM SKIMS
RUN PGM=MATRIX
MATI[1]=SOV_FREE_@PER@.SKM
MATI[2]=SOV_TOLL_@PER@.SKM
MATI[3]=HOV2_FREE_@PER@.SKM
MATI[4]=HOV2_TOLL_@PER@.SKM
MATI[5]=HOV3_FREE_@PER@.SKM
MATI[6]=HOV3_TOLL_@PER@.SKM
MATI[7]=WLK_ALLTRN_WLK_@PER@.SKM
MATI[8]=WLK_PRMTRN_WLK_@PER@.SKM
MATI[9]=PNR_ALLTRN_WLK_@PER@.SKM
MATI[10]=PNR_PRMTRN_WLK_@PER@.SKM
MATI[11]=KNR_ALLTRN_WLK_@PER@.SKM
MATI[12]=KNR_PRMTRN_WLK_@PER@.SKM
MATO[1]=@PER@TIME.SKM,MO=1-18,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
MATO[2]=@PER@DIST.SKM,MO=21-38,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
ZONEMSG=25

; Cube Cluster Controls
DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

;------------------------------------------------------------------
;PROCESS TIMES
FILLMW MW[1]=MI.1.TIME        ;SOV FREE
FILLMW MW[2]=MI.2.TIME        ;SOV PAY
FILLMW MW[3]=MI.3.TIME        ;SR2 FREE
FILLMW MW[4]=MI.4.TIME        ;SR2 PAY
FILLMW MW[5]=MI.5.TIME        ;SR3 FREE
FILLMW MW[6]=MI.6.TIME        ;SR3 PAY
FILLMW MW[7]=MI.1.DISTANCE    ;WALK (USE DISTANCE TO COMPUTE TIME)
FILLMW MW[8]=MI.1.DISTANCE    ;BIKE (USE DISTANCE TO COMPUTE TIME)
WALK = ROWFAC(7,(60/3))       ;WALK COMPUTE TIME
BIKE = ROWFAC(8,(60/12))      ;BIKE COMPUTE TIME

FILLMW MW[101]=MI.7.1(9)      ;WLKALLWLK tables
FILLMW MW[201]=MI.8.1(9)      ;WLKPRMWLK tables
FILLMW MW[301]=MI.9.1(10)     ;PNRALLWLK tables
FILLMW MW[401]=MI.10.1(10)    ;PNRPRMWLK tables
FILLMW MW[501]=MI.11.1(10)    ;KNRALLWLK tables
FILLMW MW[601]=MI.12.1(10)    ;KNRPRMWLK tables

WLKALLWLK = ROWADD(9,101,102,103,104,105,106,107,108,109)       ;WLKALLWLK total
WLKPRMWLK = ROWADD(10,201,202,203,204,205,206,207,208,209)      ;WLKPRMWLK total
PNRALLWLK = ROWADD(11,301,302,303,304,305,306,307,308,309,310)  ;PNRALLWLK total
PNRPRMWLK = ROWADD(13,401,402,403,404,405,406,407,408,409,410)  ;PNRPRMWLK total
KNRALLWLK = ROWADD(15,501,502,503,504,505,506,507,508,509,510)  ;KNRALLWLK total
KNRPRMWLK = ROWADD(17,601,602,603,604,605,606,607,608,609,610)  ;KNRPRMWLK total
;------------------------------------------------------------------
;PROCESS DISTANCES
FILLMW MW[21]=MI.1.DISTANCE    ;SOV FREE
FILLMW MW[22]=MI.2.DISTANCE    ;SOV PAY
FILLMW MW[23]=MI.3.DISTANCE    ;SR2 FREE
FILLMW MW[24]=MI.4.DISTANCE    ;SR2 PAY
FILLMW MW[25]=MI.5.DISTANCE    ;SR3 FREE
FILLMW MW[26]=MI.6.DISTANCE    ;SR3 PAY
FILLMW MW[27]=MI.1.DISTANCE    ;WALK (USE SOV FREE)
FILLMW MW[28]=MI.1.DISTANCE    ;BIKE (USE SOV FREE)
FILLMW MW[29]=MI.7.DIST        ;WLKALLWLK
FILLMW MW[30]=MI.8.DIST        ;WLKPRMWLK
FILLMW MW[31]=MI.9.DIST        ;PNRALLWLK
FILLMW MW[33]=MI.10.DIST       ;PNRPRMWLK
FILLMW MW[35]=MI.11.DIST       ;PNRALLWLK
FILLMW MW[37]=MI.12.DIST       ;PNRPRMWLK
;------------------------------------------------------------------
ENDRUN
ENDLOOP

;CREATE SINGLE SET OF MD SKIMS
RUN PGM=MATRIX
MATI[1]=SOV_FREE_MD.SKM
MATI[2]=SOV_TOLL_MD.SKM
MATI[3]=HOV2_FREE_MD.SKM
MATI[4]=HOV2_TOLL_MD.SKM
MATI[5]=HOV3_FREE_MD.SKM
MATI[6]=HOV3_TOLL_MD.SKM
MATI[7]=WLK_ALLTRN_WLK_MD.SKM
MATI[8]=WLK_PRMTRN_WLK_MD.SKM
MATI[9]=PNR_ALLTRN_WLK_MD.SKM
MATI[10]=WLK_ALLTRN_PNR_MD.SKM
MATI[11]=PNR_PRMTRN_WLK_MD.SKM
MATI[12]=WLK_PRMTRN_PNR_MD.SKM
MATI[13]=KNR_ALLTRN_WLK_MD.SKM
MATI[14]=WLK_ALLTRN_KNR_MD.SKM
MATI[15]=KNR_PRMTRN_WLK_MD.SKM
MATI[16]=WLK_PRMTRN_KNR_MD.SKM
MATO[1]=MDTIME.SKM,MO=1-18,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
MATO[2]=MDDIST.SKM,MO=21-38,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
ZONEMSG=25

; Cube Cluster Controls
DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}

;------------------------------------------------------------------
;PROCESS TIMES
FILLMW MW[1]=MI.1.TIME        ;SOV FREE
FILLMW MW[2]=MI.2.TIME        ;SOV PAY
FILLMW MW[3]=MI.3.TIME        ;SR2 FREE
FILLMW MW[4]=MI.4.TIME        ;SR2 PAY
FILLMW MW[5]=MI.5.TIME        ;SR3 FREE
FILLMW MW[6]=MI.6.TIME        ;SR3 PAY
FILLMW MW[7]=MI.1.DISTANCE    ;WALK (USE DISTANCE TO COMPUTE TIME)
FILLMW MW[8]=MI.1.DISTANCE    ;BIKE (USE DISTANCE TO COMPUTE TIME)
WALK = ROWFAC(7,(60/3))       ;WALK COMPUTE TIME
BIKE = ROWFAC(8,(60/12))      ;WALK COMPUTE TIME

FILLMW MW[101]=MI.7.1(9)      ;WLKALLWLK
FILLMW MW[201]=MI.8.1(9)      ;WLKPRMWLK
FILLMW MW[301]=MI.9.1(10)     ;PNRALLWLK
FILLMW MW[401]=MI.10.1(10)    ;WLKALLPNR
FILLMW MW[501]=MI.11.1(10)    ;PNRPRMWLK
FILLMW MW[601]=MI.12.1(10)    ;WLKPNRPRM
FILLMW MW[701]=MI.13.1(10)    ;KNRALLWLK
FILLMW MW[801]=MI.14.1(10)    ;WLKALLKNR
FILLMW MW[901]=MI.15.1(10)    ;KNRPRMWLK
FILLMW MW[951]=MI.16.1(10)    ;WLKPRMKNR

WLKALLWLK = ROWADD(9,101,102,103,104,105,106,107,108,109)       ;WLKALLWLK total
WLKPRMWLK = ROWADD(10,201,202,203,204,205,206,207,208,209)      ;WLKPRMWLK total
PNRALLWLK = ROWADD(11,301,302,303,304,305,306,307,308,309,310)  ;PNRALLWLK total
WLKALLPNR = ROWADD(12,401,402,403,404,405,406,407,408,409,410)  ;WLKALLPNR total
PNRPRMWLK = ROWADD(13,501,502,503,504,505,506,507,508,509,510)  ;PNRPRMWLK total
WLKPRMPNR = ROWADD(14,601,602,603,604,605,606,607,608,609,610)  ;WLKPRMPNR total
KNRALLWLK = ROWADD(15,701,702,703,704,705,706,707,708,709,710)  ;KNRALLWLK total
WLKALLKNR = ROWADD(16,801,802,803,804,805,806,807,808,809,810)  ;WLKALLKNR total
KNRPRMWLK = ROWADD(17,901,902,903,904,905,906,907,908,909,910)  ;KNRPRMWLK total
WLKPRMKNR = ROWADD(18,951,952,953,954,955,956,957,958,959,960)  ;WLKPRMKNR total
;------------------------------------------------------------------
;PROCESS DISTANCES
FILLMW MW[21]=MI.1.DISTANCE    ;SOV FREE
FILLMW MW[22]=MI.2.DISTANCE    ;SOV PAY
FILLMW MW[23]=MI.3.DISTANCE    ;SR2 FREE
FILLMW MW[24]=MI.4.DISTANCE    ;SR2 PAY
FILLMW MW[25]=MI.5.DISTANCE    ;SR3 FREE
FILLMW MW[26]=MI.6.DISTANCE    ;SR3 PAY
FILLMW MW[27]=MI.1.DISTANCE    ;WALK (USE SOV FREE)
FILLMW MW[28]=MI.1.DISTANCE    ;BIKE (USE SOV FREE)
FILLMW MW[29]=MI.7.DIST        ;WLKALLWLK
FILLMW MW[30]=MI.8.DIST        ;WLKPRMWLK
FILLMW MW[31]=MI.9.DIST        ;PNRALLWLK
FILLMW MW[32]=MI.10.DIST       ;WLKALLPNR
FILLMW MW[33]=MI.11.DIST       ;PNRPRMWLK
FILLMW MW[34]=MI.12.DIST       ;WLKPRMPNR
FILLMW MW[35]=MI.13.DIST       ;KNRALLWLK
FILLMW MW[36]=MI.14.DIST       ;WLKALLKNR
FILLMW MW[37]=MI.15.DIST       ;KNRPRMWLK
FILLMW MW[38]=MI.16.DIST       ;WLKPRMKNR
;------------------------------------------------------------------
ENDRUN

;CREATE SINGLE SET OF PM SKIMS
RUN PGM=MATRIX
MATI[1]=SOV_FREE_PM.SKM
MATI[2]=SOV_TOLL_PM.SKM
MATI[3]=HOV2_FREE_PM.SKM
MATI[4]=HOV2_TOLL_PM.SKM
MATI[5]=HOV3_FREE_PM.SKM
MATI[6]=HOV3_TOLL_PM.SKM
MATI[7]=WLK_ALLTRN_WLK_PM.SKM
MATI[8]=WLK_PRMTRN_WLK_PM.SKM
MATI[9]=WLK_ALLTRN_PNR_PM.SKM
MATI[10]=WLK_PRMTRN_PNR_PM.SKM
MATI[11]=WLK_ALLTRN_KNR_PM.SKM
MATI[12]=WLK_PRMTRN_KNR_PM.SKM
MATO[1]=PMTIME.SKM,MO=1-18,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
MATO[2]=PMDIST.SKM,MO=21-38,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
ZONEMSG=25

; Cube Cluster Controls
DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}
;------------------------------------------------------------------
;PROCESS TIMES
FILLMW MW[1]=MI.1.TIME        ;SOV FREE
FILLMW MW[2]=MI.2.TIME        ;SOV PAY
FILLMW MW[3]=MI.3.TIME        ;SR2 FREE
FILLMW MW[4]=MI.4.TIME        ;SR2 PAY
FILLMW MW[5]=MI.5.TIME        ;SR3 FREE
FILLMW MW[6]=MI.6.TIME        ;SR3 PAY
FILLMW MW[7]=MI.1.DISTANCE    ;WALK (USE DISTANCE TO COMPUTE TIME)
FILLMW MW[8]=MI.1.DISTANCE    ;BIKE (USE DISTANCE TO COMPUTE TIME)
WALK = ROWFAC(7,(60/3))       ;WALK COMPUTE TIME
BIKE = ROWFAC(8,(60/12))      ;BIKE COMPUTE TIME

FILLMW MW[101]=MI.7.1(9)      ;WLKALLWLK
FILLMW MW[201]=MI.8.1(9)      ;WLKPRMWLK
FILLMW MW[301]=MI.9.1(10)     ;WLKALLPNR
FILLMW MW[401]=MI.10.1(10)    ;WLKPRMPNR
FILLMW MW[501]=MI.11.1(10)    ;WLKALLKNR
FILLMW MW[601]=MI.12.1(10)    ;WLKPRMKNR

WLKALLWLK = ROWADD(9,101,102,103,104,105,106,107,108,109)        ;WLKALLWLK total
WLKPRMWLK = ROWADD(10,201,202,203,204,205,206,207,208,209)       ;WLKPRMWLK total
WLKALLPNR = ROWADD(12,301,302,303,304,305,306,307,308,309,310)   ;WLKALLPNR total
WLKPRMPNR = ROWADD(14,401,402,403,404,405,406,407,408,409,410)   ;WLKPMRPNR total
WLKALLKNR = ROWADD(16,501,502,503,504,505,506,507,508,509,510)   ;WLKALLKNR total
WLKPRMKNR = ROWADD(18,601,602,603,604,605,606,607,608,609,610)   ;WLKPRMKNR total
;------------------------------------------------------------------
;PROCESS DISTANCES
FILLMW MW[21]=MI.1.DISTANCE    ;SOV FREE
FILLMW MW[22]=MI.2.DISTANCE    ;SOV PAY
FILLMW MW[23]=MI.3.DISTANCE    ;SR2 FREE
FILLMW MW[24]=MI.4.DISTANCE    ;SR2 PAY
FILLMW MW[25]=MI.5.DISTANCE    ;SR3 FREE
FILLMW MW[26]=MI.6.DISTANCE    ;SR3 PAY
FILLMW MW[27]=MI.1.DISTANCE    ;WALK (USE SOV FREE)
FILLMW MW[28]=MI.1.DISTANCE    ;BIKE (USE SOV FREE)
FILLMW MW[29]=MI.7.DIST        ;WLKALLWLK
FILLMW MW[30]=MI.8.DIST        ;WLKPRMWLK
FILLMW MW[32]=MI.9.DIST        ;PNRALLWLK
FILLMW MW[34]=MI.10.DIST       ;PNRPRMWLK
FILLMW MW[36]=MI.11.DIST       ;PNRALLWLK
FILLMW MW[38]=MI.12.DIST       ;PNRPRMWLK
;------------------------------------------------------------------
ENDRUN

;CREATE SINGLE SET OF EV SKIMS
RUN PGM=MATRIX
MATI[1]=SOV_FREE_EV.SKM
MATI[2]=SOV_TOLL_EV.SKM
MATI[3]=HOV2_FREE_EV.SKM
MATI[4]=HOV2_TOLL_EV.SKM
MATI[5]=HOV3_FREE_EV.SKM
MATI[6]=HOV3_TOLL_EV.SKM
MATI[7]=WLK_ALLTRN_WLK_EV.SKM
MATI[8]=WLK_PRMTRN_WLK_EV.SKM
MATO[1]=EVTIME.SKM,MO=1-18,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
MATO[2]=EVDIST.SKM,MO=21-38,NAME=SOVFR,SOVTL,HOV2FR,HOV2TL,HOV3FR,HOV3TL,WALK,BIKE,WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,KNRPRMWLK,WLKPRMKNR
ZONEMSG=25

; Cube Cluster Controls
DISTRIBUTEINTRASTEP PROCESSID='{ProcID}', PROCESSLIST=1-{XCPU}
;------------------------------------------------------------------
;PROCESS TIMES
FILLMW MW[1]=MI.1.TIME        ;SOV FREE
FILLMW MW[2]=MI.2.TIME        ;SOV PAY
FILLMW MW[3]=MI.3.TIME        ;SR2 FREE
FILLMW MW[4]=MI.4.TIME        ;SR2 PAY
FILLMW MW[5]=MI.5.TIME        ;SR3 FREE
FILLMW MW[6]=MI.6.TIME        ;SR3 PAY
FILLMW MW[7]=MI.1.DISTANCE    ;WALK (USE DISTANCE TO COMPUTE TIME)
FILLMW MW[8]=MI.1.DISTANCE    ;BIKE (USE DISTANCE TO COMPUTE TIME)
WALK = ROWFAC(7,(60/3))       ;WALK COMPUTE TIME
BIKE = ROWFAC(8,(60/12))      ;BIKE COMPUTE TIME

FILLMW MW[101]=MI.7.1(9)      ;WLKALLWLK
FILLMW MW[201]=MI.8.1(9)      ;WLKPRMWLK

WLKALLWLK = ROWADD(9,101,102,103,104,105,106,107,108,109)  ;WLKALLWLK total
WLKPRMWLK = ROWADD(10,201,202,203,204,205,206,207,208,209) ;WLKPRMWLK total
;------------------------------------------------------------------
;PROCESS DISTANCES
FILLMW MW[21]=MI.1.DISTANCE    ;SOV FREE
FILLMW MW[22]=MI.2.DISTANCE    ;SOV PAY
FILLMW MW[23]=MI.3.DISTANCE    ;SR2 FREE
FILLMW MW[24]=MI.4.DISTANCE    ;SR2 PAY
FILLMW MW[25]=MI.5.DISTANCE    ;SR3 FREE
FILLMW MW[26]=MI.6.DISTANCE    ;SR3 PAY
FILLMW MW[27]=MI.1.DISTANCE    ;WALK (USE SOV FREE)
FILLMW MW[28]=MI.1.DISTANCE    ;BIKE (USE SOV FREE)
FILLMW MW[29]=MI.7.DIST        ;WLKALLWLK
FILLMW MW[30]=MI.8.DIST        ;WLKPRMWLK
;------------------------------------------------------------------
ENDRUN
;===============================================================================

;wait for steps that creates tour data
Wait4Files Files={PROCID}11.script.end

LOOP N=1,15

IF(N=1)
 PER='EA'
 PURP='Work'
ELSEIF(N=2)
 PER='AM'
 PURP='Work'
ELSEIF(N=3)
 PER='MD'
 PURP='Work'
ELSEIF(N=4)
 PER='PM'
 PURP='Work'
ELSEIF(N=5)
 PER='EV'
 PURP='Work'
ELSEIF(N=6)
 PER='EA'
 PURP='IndNonWork'
ELSEIF(N=7)
 PER='AM'
 PURP='IndNonWork'
ELSEIF(N=8)
 PER='MD'
 PURP='IndNonWork'
ELSEIF(N=9)
 PER='PM'
 PURP='IndNonWork'
ELSEIF(N=10)
 PER='EV'
 PURP='IndNonWork'
ELSEIF(N=11)
 PER='EA'
 PURP='Joint'
ELSEIF(N=12)
 PER='AM'
 PURP='Joint'
ELSEIF(N=13)
 PER='MD'
 PURP='Joint'
ELSEIF(N=14)
 PER='PM'
 PURP='Joint'
ELSEIF(N=15)
 PER='EV'
 PURP='Joint'
ENDIF

DistributeMultistep ProcessID="{ProcID}",ProcessNum=N

RUN PGM=MATRIX
RECI=Eval\@purp@Tours@PER@.DBF,SORT=ORIG_TAZ,DEST_TAZ
RECO=Eval\@purp@Tours@PER@_SORT.DBF,FIELDS=RECI.ALLFIELDS
WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
MATI[1]=@PER@TIME.SKM
MATI[2]=@PER@DIST.SKM
RECI=Eval\@purp@Tours@PER@.DBF
RECO=Eval\@purp@Tours@PER@_TimeDist.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,TIME,DIST
ZONEMSG=25

RO.HHID=RI.HHID
RO.PERID=RI.PERID
RO.TPURP=RI.TPURP
RO.ORIG_TAZ=RI.ORIG_TAZ
RO.DEST_TAZ=RI.DEST_TAZ
RO.START_PER=RI.START_PER
RO.MODE=RI.MODE

;get travel times based on mode
 IF(RO.MODE=1)      ;sov free
  RO.TIME=MATVAL(1,1,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=2)  ;sov pay
  RO.TIME=MATVAL(1,2,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=3)  ;sr2 free
  RO.TIME=MATVAL(1,3,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=4)  ;sr2 pay
  RO.TIME=MATVAL(1,4,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=5)  ;sr3 free
  RO.TIME=MATVAL(1,5,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=6)  ;sr3 pay
  RO.TIME=MATVAL(1,6,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=7)  ;walk
  RO.TIME=MATVAL(1,7,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=8)  ;bike
  RO.TIME=MATVAL(1,8,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=9)  ;wlkalltrn
  RO.TIME=MATVAL(1,9,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=10) ;wlkprmtrn
  RO.TIME=MATVAL(1,10,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=11) ;pnr alltrn
  RO.TIME=MAX(MATVAL(1,11,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(1,12,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ELSEIF(RO.MODE=12) ;pnr prmtrn
  RO.TIME=MAX(MATVAL(1,13,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(1,14,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ELSEIF(RO.MODE=13) ;knr alltrn
  RO.TIME=MAX(MATVAL(1,15,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(1,16,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ELSEIF(RO.MODE=14) ;knr prmtrn
  RO.TIME=MAX(MATVAL(1,17,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(1,18,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ENDIF
;get travel distance based on mode
 IF(RO.MODE=1)      ;sov free
  RO.DIST=MATVAL(2,1,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=2)  ;sov pay
  RO.DIST=MATVAL(2,2,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=3)  ;sr2 free
  RO.DIST=MATVAL(2,3,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=4)  ;sr2 pay
  RO.DIST=MATVAL(2,4,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=5)  ;sr3 free
  RO.DIST=MATVAL(2,5,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=6)  ;sr3 pay
  RO.DIST=MATVAL(2,6,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=7)  ;walk
  RO.DIST=MATVAL(2,7,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=8)  ;bike
  RO.DIST=MATVAL(2,8,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=9)  ;wlkalltrn
  RO.DIST=MATVAL(2,9,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=10) ;wlkprmtrn
  RO.DIST=MATVAL(2,10,RO.ORIG_TAZ,RO.DEST_TAZ,-1)
 ELSEIF(RO.MODE=11) ;pnr alltrn
  RO.DIST=MAX(MATVAL(2,11,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(2,12,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ELSEIF(RO.MODE=12) ;pnr prmtrn
  RO.DIST=MAX(MATVAL(2,13,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(2,14,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ELSEIF(RO.MODE=13) ;knr alltrn
  RO.DIST=MAX(MATVAL(2,15,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(2,16,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ELSEIF(RO.MODE=14) ;knr prmtrn
  RO.DIST=MAX(MATVAL(2,17,RO.ORIG_TAZ,RO.DEST_TAZ,-1),MATVAL(2,18,RO.ORIG_TAZ,RO.DEST_TAZ,-1))
 ENDIF 
 WRITE RECO=1
ENDRUN

RUN PGM=MATRIX
RECI=Eval\@purp@Tours@PER@_TimeDist.DBF
PRINTO[1]=Eval\@purp@Tours@PER@_Summary.CSV

;------------------------------------------------
;tabulate data for averages
 _all = _all + 1
 _allt = _allt + RI.TIME
 _alld = _alld + RI.DIST

IF(RI.MODE=1)
 _sovfr = _sovfr + 1
 _sovfrt = _sovfrt + RI.TIME
 _sovfrd = _sovfrd + RI.DIST
ELSEIF(RI.MODE=2)
 _sovpy = _sovpy + 1
 _sovpyt = _sovpyt + RI.TIME
 _sovpyd = _sovpyd + RI.DIST
ELSEIF(RI.MODE=3)
 _sr2fr = _sr2fr + 1
 _sr2frt = _sr2frt + RI.TIME
 _sr2frd = _sr2frd + RI.DIST
ELSEIF(RI.MODE=4)
 _sr2py = _sr2py + 1
 _sr2pyt = _sr2pyt + RI.TIME
 _sr2pyd = _sr2pyd + RI.DIST
ELSEIF(RI.MODE=5)
 _sr3fr = _sr3fr + 1
 _sr3frt = _sr3frt + RI.TIME
 _sr3frd = _sr3frd + RI.DIST
ELSEIF(RI.MODE=6)
 _sr3py = _sr3py + 1
 _sr3pyt = _sr3pyt + RI.TIME
 _sr3pyd = _sr3pyd + RI.DIST
ELSEIF(RI.MODE=7)
 _walk = _walk + 1
 _walkt = _walkt + RI.TIME
 _walkd = _walkd + RI.DIST
ELSEIF(RI.MODE=8)
 _bike = _bike + 1
 _biket = _biket + RI.TIME
 _biked = _biked + RI.DIST
ELSEIF(RI.MODE=9)
 _wlkat = _wlkat + 1
 _wlkatt = _wlkatt + RI.TIME
 _wlkatd = _wlkatd + RI.DIST
ELSEIF(RI.MODE=10)
 _wlkpt = _wlkpt + 1
 _wlkptt = _wlkptt + RI.TIME
 _wlkptd = _wlkptd + RI.DIST
ELSEIF(RI.MODE=11,13)
 _drvat = _drvat + 1
 _drvatt = _drvatt + RI.TIME
 _drvatd = _drvatd + RI.DIST
ELSEIF(RI.MODE=12,14)
 _drvpt = _drvpt + 1
 _drvptt = _drvptt + RI.TIME
 _drvptd = _drvptd + RI.DIST
ENDIF

IF(RECI.RECNO=RECI.NUMRECORDS)
 ;compute averages
;TIME
  _avgall = _allt / max(_all,1)
  _avgsovfr = _sovfrt / max(_sovfr,1)
  _avgsovpy = _sovpyt / max(_sovpy,1)
  _avgsr2fr = _sr2frt / max(_sr2fr,1)
  _avgsr2py = _sr2pyt / max(_sr2py,1)
  _avgsr3fr = _sr3frt / max(_sr3fr,1)
  _avgsr3py = _sr3pyt / max(_sr3py,1)
  _avgwalk = _walkt / max(_walk,1)
  _avgbike = _biket / max(_bike,1)
  _avgwlkat = _wlkatt / max(_wlkat,1)
  _avgwlkpt = _wlkptt / max(_wlkpt,1)
  _avgdrvat = _drvatt / max(_drvat,1)
  _avgdrvpt = _drvptt / max(_drvpt,1)
;DIST
  _avgalld = _alld / max(_all,1)
  _avgsovfrd = _sovfrd / max(_sovfr,1)
  _avgsovpyd = _sovpyd / max(_sovpy,1)
  _avgsr2frd = _sr2frd / max(_sr2fr,1)
  _avgsr2pyd = _sr2pyd / max(_sr2py,1)
  _avgsr3frd = _sr3frd / max(_sr3fr,1)
  _avgsr3pyd = _sr3pyd / max(_sr3py,1)
  _avgwalkd = _walkd / max(_walk,1)
  _avgbiked = _biked / max(_bike,1)
  _avgwlkatd = _wlkatd / max(_wlkat,1)
  _avgwlkptd = _wlkptd / max(_wlkpt,1)
  _avgdrvatd = _drvatd / max(_drvat,1)
  _avgdrvptd = _drvptd / max(_drvpt,1)

 PRINT LIST='Mode,Tours,Avg Travel Time,Avg Travel Distance',PRINTO=1
 PRINT CSV=T,LIST='All modes',_all,_avgall,,_avgalld,PRINTO=1
 PRINT CSV=T,LIST='SOV free',_sovfr,_avgsovfr,_avgsovfrd,PRINTO=1
 PRINT CSV=T,LIST='SOV pay',_sovpy,_avgsovpy,_avgsovpyd,PRINTO=1
 PRINT CSV=T,LIST='SR2 free',_sr2fr,_avgsr2fr,_avgsr2frd,PRINTO=1
 PRINT CSV=T,LIST='SR2 pay',_sr2py,_avgsr2py,_avgsr2pyd,PRINTO=1
 PRINT CSV=T,LIST='SR3 free',_sr3fr,_avgsr3fr,_avgsr3frd,PRINTO=1
 PRINT CSV=T,LIST='SR3 pay',_sr3py,_avgsr3py,_avgsr3pyd,PRINTO=1
 PRINT CSV=T,LIST='Walk',_walk,_avgwalk,_avgwalkd,PRINTO=1
 PRINT CSV=T,LIST='Bike',_bike,_avgbike,_avgbiked,PRINTO=1
 PRINT CSV=T,LIST='Wlkall trn',_wlkat,_avgwlkat,_avgwlkatd,PRINTO=1
 PRINT CSV=T,LIST='Wlkprm trn',_wlkpt,_avgwlkpt,_avgwlkptd,PRINTO=1
 PRINT CSV=T,LIST='Drive all trn',_drvat,_avgdrvat,_avgdrvatd,PRINTO=1
 PRINT CSV=T,LIST='Drive prm trn',_drvpt,_avgdrvpt,_avgdrvptd,PRINTO=1
  
ENDIF

ENDRUN

;Create work & non-work tour tables by time of day
RUN PGM=MATRIX
MATI=Eval\@purp@Tours@PER@_Sort.DBF,PATTERN=IJM:V,FIELDS=ORIG_TAZ,DEST_TAZ,0,DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
MATO=Eval\@purp@Tours@PER@.TPP,MO=1-15,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
ZONES={lastin}
ZONEMSG=100
FILLMW MW[1]=MI.1.1(15)
ENDRUN
EndDistributeMULTISTEP
ENDLOOP


Wait4Files Files={PROCID}1.script.end,{PROCID}2.script.end,{PROCID}3.script.end,{PROCID}4.script.end,{PROCID}5.script.end,
                 {PROCID}6.script.end,{PROCID}7.script.end,{PROCID}8.script.end,{PROCID}9.script.end,{PROCID}10.script.end,
                 {PROCID}11.script.end,{PROCID}12.script.end,{PROCID}13.script.end,{PROCID}14.script.end,{PROCID}15.script.end

;create work tour daily table
RUN PGM=MATRIX
MATI[1]=Eval\WorkToursEA.TPP
MATI[2]=Eval\WorkToursAM.TPP
MATI[3]=Eval\WorkToursMD.TPP
MATI[4]=Eval\WorkToursPM.TPP
MATI[5]=Eval\WorkToursEV.TPP
MATO[1]=Eval\WorkToursAll.TPP,MO=1-15,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
ZONEMSG=50
FILLMW MW[101]=MI.1.1(15)
FILLMW MW[201]=MI.2.1(15)
FILLMW MW[301]=MI.3.1(15)
FILLMW MW[401]=MI.4.1(15)
FILLMW MW[501]=MI.5.1(15)

DA =        ROWADD(1,101,201,301,401,501)
DATOLL =    ROWADD(2,102,202,302,402,502)
SR2 =       ROWADD(3,103,203,303,403,503)
SR2TOLL =   ROWADD(4,104,204,304,404,504)
SR3 =       ROWADD(5,105,205,305,405,505)
SR3TOLL =   ROWADD(6,106,206,306,406,506)
WALK =      ROWADD(7,107,207,307,407,507)
BIKE =      ROWADD(8,108,208,308,408,508)
WLKALLWLK = ROWADD(9,109,209,309,409,509)
WLKPRMWLK = ROWADD(10,110,210,310,410,510)
PNRALLWLK = ROWADD(11,112,211,311,412,512)
PNRPRMWLK = ROWADD(12,113,212,312,413,513)
KNRALLWLK = ROWADD(13,113,213,313,413,513)
KNRPRMWLK = ROWADD(14,114,214,314,414,514)
SCHLBUS =   ROWADD(15,115,215,315,415,515)
                                
ENDRUN  

;create individual non-work tour daily table
RUN PGM=MATRIX
MATI[1]=Eval\IndNonWorkToursEA.TPP
MATI[2]=Eval\IndNonWorkToursAM.TPP
MATI[3]=Eval\IndNonWorkToursMD.TPP
MATI[4]=Eval\IndNonWorkToursPM.TPP
MATI[5]=Eval\IndNonWorkToursEV.TPP
MATO[1]=Eval\IndNonWorkToursAll.TPP,MO=1-15,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
ZONEMSG=50
FILLMW MW[101]=MI.1.1(15)
FILLMW MW[201]=MI.2.1(15)
FILLMW MW[301]=MI.3.1(15)
FILLMW MW[401]=MI.4.1(15)
FILLMW MW[501]=MI.5.1(15)

DA =        ROWADD(1,101,201,301,401,501)
DATOLL =    ROWADD(2,102,202,302,402,502)
SR2 =       ROWADD(3,103,203,303,403,503)
SR2TOLL =   ROWADD(4,104,204,304,404,504)
SR3 =       ROWADD(5,105,205,305,405,505)
SR3TOLL =   ROWADD(6,106,206,306,406,506)
WALK =      ROWADD(7,107,207,307,407,507)
BIKE =      ROWADD(8,108,208,308,408,508)
WLKALLWLK = ROWADD(9,109,209,309,409,509)
WLKPRMWLK = ROWADD(10,110,210,310,410,510)
PNRALLWLK = ROWADD(11,112,211,311,412,512)
PNRPRMWLK = ROWADD(12,113,212,312,413,513)
KNRALLWLK = ROWADD(13,113,213,313,413,513)
KNRPRMWLK = ROWADD(14,114,214,314,414,514)
SCHLBUS =   ROWADD(15,115,215,315,415,515)
                                
ENDRUN  

;create joint tour daily table
RUN PGM=MATRIX
MATI[1]=Eval\JointToursEA.TPP
MATI[2]=Eval\JointToursAM.TPP
MATI[3]=Eval\JointToursMD.TPP
MATI[4]=Eval\JointToursPM.TPP
MATI[5]=Eval\JointToursEV.TPP
MATO[1]=Eval\JointToursAll.TPP,MO=1-15,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
ZONEMSG=50
FILLMW MW[101]=MI.1.1(15)
FILLMW MW[201]=MI.2.1(15)
FILLMW MW[301]=MI.3.1(15)
FILLMW MW[401]=MI.4.1(15)
FILLMW MW[501]=MI.5.1(15)

DA =        ROWADD(1,101,201,301,401,501)
DATOLL =    ROWADD(2,102,202,302,402,502)
SR2 =       ROWADD(3,103,203,303,403,503)
SR2TOLL =   ROWADD(4,104,204,304,404,504)
SR3 =       ROWADD(5,105,205,305,405,505)
SR3TOLL =   ROWADD(6,106,206,306,406,506)
WALK =      ROWADD(7,107,207,307,407,507)
BIKE =      ROWADD(8,108,208,308,408,508)
WLKALLWLK = ROWADD(9,109,209,309,409,509)
WLKPRMWLK = ROWADD(10,110,210,310,410,510)
PNRALLWLK = ROWADD(11,112,211,311,412,512)
PNRPRMWLK = ROWADD(12,113,212,312,413,513)
KNRALLWLK = ROWADD(13,113,213,313,413,513)
KNRPRMWLK = ROWADD(14,114,214,314,414,514)
SCHLBUS =   ROWADD(15,115,215,315,415,515)
                                
ENDRUN  

;combine individual non-work tours and joint tours
;loop through 5 time periods + daily
LOOP N=1,6
 IF(N=1) PER='EA'
 IF(N=2) PER='AM'
 IF(N=3) PER='MD'
 IF(N=4) PER='PM'
 IF(N=5) PER='EV'
 IF(N=6) PER='ALL'
RUN PGM=MATRIX
MATI[1]=Eval\IndNonWorkTours@per@.TPP
MATI[2]=Eval\JointTours@per@.TPP
MATO[1]=Eval\NonWorkTours@per@.TPP,MO=1-15,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                WLKALLWLK,WLKPRMWLK,PNRALLWLK,PNRPRMWLK,KNRALLWLK,KNRPRMWLK,SCHLBUS
ZONEMSG=50
FILLMW MW[101]=MI.1.1(15)
FILLMW MW[201]=MI.2.1(15)

DA =        ROWADD(1,101,201)
DATOLL =    ROWADD(2,102,202)
SR2 =       ROWADD(3,103,203)
SR2TOLL =   ROWADD(4,104,204)
SR3 =       ROWADD(5,105,205)
SR3TOLL =   ROWADD(6,106,206)
WALK =      ROWADD(7,107,207)
BIKE =      ROWADD(8,108,208)
WLKALLWLK = ROWADD(9,109,209)
WLKPRMWLK = ROWADD(10,110,210)
PNRALLWLK = ROWADD(11,112,211)
PNRPRMWLK = ROWADD(12,113,212)
KNRALLWLK = ROWADD(13,113,213)
KNRPRMWLK = ROWADD(14,114,214)
SCHLBUS =   ROWADD(15,115,215)
                                
ENDRUN  
ENDLOOP

;Create summary work tours by time/distance bins
;Write record file for all work tours with time/distance
RUN PGM=MATRIX
DBI[1]=Eval\WorkToursEA_TimeDist.DBF
DBI[2]=Eval\WorkToursAM_TimeDist.DBF
DBI[3]=Eval\WorkToursMD_TimeDist.DBF
DBI[4]=Eval\WorkToursPM_TimeDist.DBF
DBI[5]=Eval\WorkToursEV_TimeDist.DBF
RECO[1]=Eval\WorkToursAll_TimeDist.DBF,FIELDS=HHID,PERID,TPURP,ORIG_TAZ,DEST_TAZ,START_PER,MODE,TIME,DIST
PRINTO[1]=Eval\WorkTour_Frequency.CSV

ZONES=1
;------------------------------------------------
LOOP EA=1,DBI.1.NUMRECORDS  ;loop through EA
 x = DBIReadRecord(1,EA)
  RO.HHID=DI.1.HHID
  RO.PERID=DI.1.PERID
  RO.TPURP=DI.1.TPURP
  RO.ORIG_TAZ=DI.1.ORIG_TAZ
  RO.DEST_TAZ=DI.1.DEST_TAZ
  RO.START_PER=DI.1.START_PER
  RO.MODE=DI.1.MODE
  RO.TIME=DI.1.TIME
  RO.DIST=DI.1.DIST
  WRITE RECO=1
 IF(DI.1.TIME<=5)
  _TBIN1 = _TBIN1 + 1
 ELSEIF(DI.1.TIME<=10)
  _TBIN2 = _TBIN2 + 1
 ELSEIF(DI.1.TIME<=15)
  _TBIN3 = _TBIN3 + 1
 ELSEIF(DI.1.TIME<=20)
  _TBIN4 = _TBIN4 + 1
 ELSEIF(DI.1.TIME<=25)
  _TBIN5 = _TBIN5 + 1
 ELSEIF(DI.1.TIME<=30)
  _TBIN6 = _TBIN6 + 1
 ELSEIF(DI.1.TIME<=35)
  _TBIN7 = _TBIN7 + 1
 ELSEIF(DI.1.TIME<=40)
  _TBIN8 = _TBIN8 + 1
 ELSEIF(DI.1.TIME<=45)
  _TBIN9 = _TBIN9 + 1
 ELSE
  _TBIN10= _TBIN10+ 1
 ENDIF
 ;tabulate tours by DIST bin
 IF(DI.1.DIST<=1)
  _DBIN0 = _DBIN0 + 1
 ELSEIF(DI.1.DIST<=3)
  _DBIN1 = _DBIN1 + 1
 ELSEIF(DI.1.DIST<=5)
  _DBIN2 = _DBIN2 + 1
 ELSEIF(DI.1.DIST<=7)
  _DBIN3 = _DBIN3 + 1
 ELSEIF(DI.1.DIST<=10)
  _DBIN4 = _DBIN4 + 1
 ELSEIF(DI.1.DIST<=15)
  _DBIN5 = _DBIN5 + 1
 ELSEIF(DI.1.DIST<=20)
  _DBIN6 = _DBIN6 + 1
 ELSE
  _DBIN7 = _DBIN7 + 1
 ENDIF
ENDLOOP
;------------------------------------------------
LOOP AM=1,DBI.2.NUMRECORDS  ;loop through AM
 x = DBIReadRecord(2,AM)
  RO.HHID=DI.2.HHID
  RO.PERID=DI.2.PERID
  RO.TPURP=DI.2.TPURP
  RO.ORIG_TAZ=DI.2.ORIG_TAZ
  RO.DEST_TAZ=DI.2.DEST_TAZ
  RO.START_PER=DI.2.START_PER
  RO.MODE=DI.2.MODE
  RO.TIME=DI.2.TIME
  RO.DIST=DI.2.DIST
  WRITE RECO=1
  ;tabulate tours by time bin
 IF(DI.2.TIME<=5)
  _TBIN1 = _TBIN1 + 1
 ELSEIF(DI.2.TIME<=10)
  _TBIN2 = _TBIN2 + 1
 ELSEIF(DI.2.TIME<=15)
  _TBIN3 = _TBIN3 + 1
 ELSEIF(DI.2.TIME<=20)
  _TBIN4 = _TBIN4 + 1
 ELSEIF(DI.2.TIME<=25)
  _TBIN5 = _TBIN5 + 1
 ELSEIF(DI.2.TIME<=30)
  _TBIN6 = _TBIN6 + 1
 ELSEIF(DI.2.TIME<=35)
  _TBIN7 = _TBIN7 + 1
 ELSEIF(DI.2.TIME<=40)
  _TBIN8 = _TBIN8 + 1
 ELSEIF(DI.2.TIME<=45)
  _TBIN9 = _TBIN9 + 1
 ELSE
  _TBIN10= _TBIN10+ 1
 ENDIF
 ;tabulate tours by DIST bin
 IF(DI.2.DIST<=1)
  _DBIN0 = _DBIN0 + 1
 ELSEIF(DI.2.DIST<=3)
  _DBIN1 = _DBIN1 + 1
 ELSEIF(DI.2.DIST<=5)
  _DBIN2 = _DBIN2 + 1
 ELSEIF(DI.2.DIST<=7)
  _DBIN3 = _DBIN3 + 1
 ELSEIF(DI.2.DIST<=10)
  _DBIN4 = _DBIN4 + 1
 ELSEIF(DI.2.DIST<=15)
  _DBIN5 = _DBIN5 + 1
 ELSEIF(DI.2.DIST<=20)
  _DBIN6 = _DBIN6 + 1
 ELSE
  _DBIN7 = _DBIN7 + 1
 ENDIF
ENDLOOP
;------------------------------------------------
LOOP MD=1,DBI.3.NUMRECORDS  ;loop through MD
 x = DBIReadRecord(3,MD)
  RO.HHID=DI.3.HHID
  RO.PERID=DI.3.PERID
  RO.TPURP=DI.3.TPURP
  RO.ORIG_TAZ=DI.3.ORIG_TAZ
  RO.DEST_TAZ=DI.3.DEST_TAZ
  RO.START_PER=DI.3.START_PER
  RO.MODE=DI.3.MODE
  RO.TIME=DI.3.TIME
  RO.DIST=DI.3.DIST
  WRITE RECO=1
  ;tabulate tours by time bin
 IF(DI.3.TIME<=5)
  _TBIN1 = _TBIN1 + 1
 ELSEIF(DI.3.TIME<=10)
  _TBIN2 = _TBIN2 + 1
 ELSEIF(DI.3.TIME<=15)
  _TBIN3 = _TBIN3 + 1
 ELSEIF(DI.3.TIME<=20)
  _TBIN4 = _TBIN4 + 1
 ELSEIF(DI.3.TIME<=25)
  _TBIN5 = _TBIN5 + 1
 ELSEIF(DI.3.TIME<=30)
  _TBIN6 = _TBIN6 + 1
 ELSEIF(DI.3.TIME<=35)
  _TBIN7 = _TBIN7 + 1
 ELSEIF(DI.3.TIME<=40)
  _TBIN8 = _TBIN8 + 1
 ELSEIF(DI.3.TIME<=45)
  _TBIN9= _TBIN9 + 1
 ELSE
  _TBIN10= _TBIN10+ 1
 ENDIF
 ;tabulate tours by DIST bin
 IF(DI.3.DIST<=1)
  _DBIN0 = _DBIN0 + 1
 ELSEIF(DI.3.DIST<=3)
  _DBIN1 = _DBIN1 + 1
 ELSEIF(DI.3.DIST<=5)
  _DBIN2 = _DBIN2 + 1
 ELSEIF(DI.3.DIST<=7)
  _DBIN3 = _DBIN3 + 1
 ELSEIF(DI.3.DIST<=10)
  _DBIN4 = _DBIN4 + 1
 ELSEIF(DI.3.DIST<=15)
  _DBIN5 = _DBIN5 + 1
 ELSEIF(DI.3.DIST<=20)
  _DBIN6 = _DBIN6 + 1
 ELSE
  _DBIN7 = _DBIN7 + 1
 ENDIF
ENDLOOP
;------------------------------------------------
LOOP PM=1,DBI.4.NUMRECORDS  ;loop through PM
 x = DBIReadRecord(4,PM)
  RO.HHID=DI.4.HHID
  RO.PERID=DI.4.PERID
  RO.TPURP=DI.4.TPURP
  RO.ORIG_TAZ=DI.4.ORIG_TAZ
  RO.DEST_TAZ=DI.4.DEST_TAZ
  RO.START_PER=DI.4.START_PER
  RO.MODE=DI.4.MODE
  RO.TIME=DI.4.TIME
  RO.DIST=DI.4.DIST
  WRITE RECO=1
  ;tabulate tours by time bin
 IF(DI.4.TIME<=5)
  _TBIN1 = _TBIN1 + 1
 ELSEIF(DI.4.TIME<=10)
  _TBIN2 = _TBIN2 + 1
 ELSEIF(DI.4.TIME<=15)
  _TBIN3 = _TBIN3 + 1
 ELSEIF(DI.4.TIME<=20)
  _TBIN4 = _TBIN4 + 1
 ELSEIF(DI.4.TIME<=25)
  _TBIN5 = _TBIN5 + 1
 ELSEIF(DI.4.TIME<=30)
  _TBIN6 = _TBIN6 + 1
 ELSEIF(DI.4.TIME<=35)
  _TBIN7 = _TBIN7 + 1
 ELSEIF(DI.4.TIME<=40)
  _TBIN8 = _TBIN8 + 1
 ELSEIF(DI.4.TIME<=45)
  _TBIN9 = _TBIN9 + 1
 ELSE
  _TBIN10= _TBIN10+ 1
 ENDIF
 ;tabulate tours by DIST bin
 IF(DI.4.DIST<=1)
  _DBIN0 = _DBIN0 + 1
 ELSEIF(DI.4.DIST<=3)
  _DBIN1 = _DBIN1 + 1
 ELSEIF(DI.4.DIST<=5)
  _DBIN2 = _DBIN2 + 1
 ELSEIF(DI.4.DIST<=7)
  _DBIN3 = _DBIN3 + 1
 ELSEIF(DI.4.DIST<=10)
  _DBIN4 = _DBIN4 + 1
 ELSEIF(DI.4.DIST<=15)
  _DBIN5 = _DBIN5 + 1
 ELSEIF(DI.4.DIST<=20)
  _DBIN6 = _DBIN6 + 1
 ELSE
  _DBIN7 = _DBIN7 + 1
 ENDIF
ENDLOOP
;------------------------------------------------
LOOP EV=1,DBI.5.NUMRECORDS  ;loop through EV
 x = DBIReadRecord(5,EV)
  RO.HHID=DI.5.HHID
  RO.PERID=DI.5.PERID
  RO.TPURP=DI.5.TPURP
  RO.ORIG_TAZ=DI.5.ORIG_TAZ
  RO.DEST_TAZ=DI.5.DEST_TAZ
  RO.START_PER=DI.5.START_PER
  RO.MODE=DI.5.MODE
  RO.TIME=DI.5.TIME
  RO.DIST=DI.5.DIST
  WRITE RECO=1
  ;tabulate tours by time bin
 IF(DI.5.TIME<=5)
  _TBIN1 = _TBIN1 + 1
 ELSEIF(DI.5.TIME<=10)
  _TBIN2 = _TBIN2 + 1
 ELSEIF(DI.5.TIME<=15)
  _TBIN3 = _TBIN3 + 1
 ELSEIF(DI.5.TIME<=20)
  _TBIN4 = _TBIN4 + 1
 ELSEIF(DI.5.TIME<=25)
  _TBIN5 = _TBIN5 + 1
 ELSEIF(DI.5.TIME<=30)
  _TBIN6 = _TBIN6 + 1
 ELSEIF(DI.5.TIME<=35)
  _TBIN7 = _TBIN7 + 1
 ELSEIF(DI.5.TIME<=40)
  _TBIN8 = _TBIN8 + 1
 ELSEIF(DI.5.TIME<=45)
  _TBIN9 = _TBIN9 + 1
 ELSE
  _TBIN10= _TBIN10+ 1
 ENDIF
 ;tabulate tours by DIST bin
 IF(DI.5.DIST<=1)
  _DBIN0 = _DBIN0 + 1
 ELSEIF(DI.5.DIST<=3)
  _DBIN1 = _DBIN1 + 1
 ELSEIF(DI.5.DIST<=5)
  _DBIN2 = _DBIN2 + 1
 ELSEIF(DI.5.DIST<=7)
  _DBIN3 = _DBIN3 + 1
 ELSEIF(DI.5.DIST<=10)
  _DBIN4 = _DBIN4 + 1
 ELSEIF(DI.5.DIST<=15)
  _DBIN5 = _DBIN5 + 1
 ELSEIF(DI.5.DIST<=20)
  _DBIN6 = _DBIN6 + 1
 ELSE
  _DBIN7 = _DBIN7 + 1
 ENDIF
 IF(DBI.5.RECNO=DBI.5.NUMRECORDS)  ;last record check
 
 ;total tours
  _total = _dbin0+_dbin1+_dbin2+_dbin3+_dbin4+_dbin5+_dbin6+_dbin7
  
 ;compute percent
 ;time
  _tbin1pct = _tbin1 / _total * 100
  _tbin2pct = _tbin2 / _total * 100
  _tbin3pct = _tbin3 / _total * 100
  _tbin4pct = _tbin4 / _total * 100
  _tbin5pct = _tbin5 / _total * 100
  _tbin6pct = _tbin6 / _total * 100
  _tbin7pct = _tbin7 / _total * 100
  _tbin8pct = _tbin8 / _total * 100
  _tbin9pct = _tbin9 / _total * 100
  _tbin10pct = _tbin10 / _total * 100
 ;distance
  _dbin0pct = _dbin0 / _total * 100
  _dbin1pct = _dbin1 / _total * 100
  _dbin2pct = _dbin2 / _total * 100
  _dbin3pct = _dbin3 / _total * 100
  _dbin4pct = _dbin4 / _total * 100
  _dbin5pct = _dbin5 / _total * 100
  _dbin6pct = _dbin6 / _total * 100
  _dbin7pct = _dbin7 / _total * 100
 
;Print summary all travel time & distance bins to CSV
;travel time ---------------------------------------
 PRINT LIST='Travel time summary',PRINTO=1
 PRINT LIST='Time Bin Cutoff,Tours,Percent',PRINTO=1
 PRINT CSV=T,LIST='5',_tbin1,_tbin1pct,PRINTO=1
 PRINT CSV=T,LIST='10',_tbin2,_tbin2pct,PRINTO=1
 PRINT CSV=T,LIST='15',_tbin3,_tbin3pct,PRINTO=1
 PRINT CSV=T,LIST='20',_tbin4,_tbin4pct,PRINTO=1
 PRINT CSV=T,LIST='25',_tbin5,_tbin5pct,PRINTO=1
 PRINT CSV=T,LIST='30',_tbin6,_tbin6pct,PRINTO=1
 PRINT CSV=T,LIST='35',_tbin7,_tbin7pct,PRINTO=1
 PRINT CSV=T,LIST='40',_tbin8,_tbin8pct,PRINTO=1
 PRINT CSV=T,LIST='45',_tbin9,_tbin9pct,PRINTO=1
 PRINT CSV=T,LIST='>45',_tbin10,_tbin10pct,PRINTO=1
;travel distance ---------------------------------------
 PRINT LIST='Travel distance summary',PRINTO=1
 PRINT LIST='Dist Bin Cutoff,Tours,Percent',PRINTO=1
 PRINT CSV=T,LIST='1', _dbin0,_dbin0pct,PRINTO=1
 PRINT CSV=T,LIST='3', _dbin1,_dbin1pct,PRINTO=1
 PRINT CSV=T,LIST='5',_dbin2,_dbin2pct,PRINTO=1
 PRINT CSV=T,LIST='7',_dbin3,_dbin3pct,PRINTO=1
 PRINT CSV=T,LIST='10',_dbin4,_dbin4pct,PRINTO=1
 PRINT CSV=T,LIST='15',_dbin5,_dbin5pct,PRINTO=1
 PRINT CSV=T,LIST='20',_dbin6,_dbin6pct,PRINTO=1
 PRINT CSV=T,LIST='>20',_dbin7,_dbin7pct,PRINTO=1
 ENDIF  ;last record check
 ENDLOOP
 ENDRUN
 
;create summary of avg travel for all work tours
RUN PGM=MATRIX
DBI[1]=Eval\WorkToursEA_Summary.CSV,DELIMITER=',' MODE(C)=1,TRIPS=2,TIME=3,DIST=4
DBI[2]=Eval\WorkToursAM_Summary.CSV,DELIMITER=',' MODE(C)=1,TRIPS=2,TIME=3,DIST=4
DBI[3]=Eval\WorkToursMD_Summary.CSV,DELIMITER=',' MODE(C)=1,TRIPS=2,TIME=3,DIST=4
DBI[4]=Eval\WorkToursPM_Summary.CSV,DELIMITER=',' MODE(C)=1,TRIPS=2,TIME=3,DIST=4
DBI[5]=Eval\WorkToursEV_Summary.CSV,DELIMITER=',' MODE(C)=1,TRIPS=2,TIME=3,DIST=4
PRINTO[1]=Eval\WorkToursAll_Summary.CSV

ZONES=1

LOOP EA=1,DBI.1.NUMRECORDS  ;loop through EA
 x = DBIReadRecord(1,EA)
  IF(DI.1.MODE='All modes')
  _all = _all + DI.1.TRIPS
  _allt = _allt + DI.1.TRIPS * DI.1.TIME
  _alld = _alld + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='SOV free')
   _sovfr = _sovfr + DI.1.TRIPS
   _sovfrt = _sovfrt + DI.1.TRIPS * DI.1.TIME
   _sovfrd = _sovfrd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='SOV pay')
   _sovpy = _sovpy + DI.1.TRIPS
   _sovpyt = _sovpyt + DI.1.TRIPS * DI.1.TIME
   _sovpyd = _sovpyd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='SR2 free')
   _sr2fr = _sr2fr + DI.1.TRIPS
   _sr2frt = _sr2frt + DI.1.TRIPS * DI.1.TIME
   _sr2frd = _sr2frd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='SR2 pay')
   _sr2py = _sr2py + DI.1.TRIPS
   _sr2pyt = _sr2pyt + DI.1.TRIPS * DI.1.TIME
   _sr2pyd = _sr2pyd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='SR3 free')
   _sr3fr = _sr3fr + DI.1.TRIPS
   _sr3frt = _sr3frt + DI.1.TRIPS * DI.1.TIME
   _sr3frd = _sr3frd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='SR3 pay')
   _sr3py = _sr3py + DI.1.TRIPS
   _sr3pyt = _sr3pyt + DI.1.TRIPS * DI.1.TIME
   _sr3pyd = _sr3pyd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='Walk')
   _walk = _walk + DI.1.TRIPS
   _walkt = _walkt + DI.1.TRIPS * DI.1.TIME
   _walkd = _walkd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='Bike')
   _bike = _bike + DI.1.TRIPS
   _biket = _biket + DI.1.TRIPS * DI.1.TIME
   _biked = _biked + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='wlkall trn')
   _wlkat = _wlkat + DI.1.TRIPS
   _wlkatt = _wlkatt + DI.1.TRIPS * DI.1.TIME
   _wlkatd = _wlkatd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='wlkprm trn')
   _wlkpt = _wlkpt + DI.1.TRIPS
   _wlkptt = _wlkptt + DI.1.TRIPS * DI.1.TIME
   _wlkptd = _wlkptd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='Drive all trn')
   _drvat = _drvat + DI.1.TRIPS
   _drvatt = _drvatt + DI.1.TRIPS * DI.1.TIME
   _drvatd = _drvatd + DI.1.TRIPS * DI.1.DIST
  ELSEIF(DI.1.MODE='Drive prm trn')
   _drvpt = _drvpt + DI.1.TRIPS
   _drvptt = _drvptt + DI.1.TRIPS * DI.1.TIME
   _drvptd = _drvptd + DI.1.TRIPS * DI.1.DIST
  ENDIF
ENDLOOP
LOOP AM=1,DBI.2.NUMRECORDS  ;loop through AM
 x = DBIReadRecord(2,AM)
  IF(DI.2.MODE='All modes')
  _all = _all + DI.2.TRIPS
  _allt = _allt + DI.2.TRIPS * DI.2.TIME
  _alld = _alld + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='SOV free')
   _sovfr = _sovfr + DI.2.TRIPS
   _sovfrt = _sovfrt + DI.2.TRIPS * DI.2.TIME
   _sovfrd = _sovfrd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='SOV pay')
   _sovpy = _sovpy + DI.2.TRIPS
   _sovpyt = _sovpyt + DI.2.TRIPS * DI.2.TIME
   _sovpyd = _sovpyd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='SR2 free')
   _sr2fr = _sr2fr + DI.2.TRIPS
   _sr2frt = _sr2frt + DI.2.TRIPS * DI.2.TIME
   _sr2frd = _sr2frd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='SR2 pay')
   _sr2py = _sr2py + DI.2.TRIPS
   _sr2pyt = _sr2pyt + DI.2.TRIPS * DI.2.TIME
   _sr2pyd = _sr2pyd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='SR3 free')
   _sr3fr = _sr3fr + DI.2.TRIPS
   _sr3frt = _sr3frt + DI.2.TRIPS * DI.2.TIME
   _sr3frd = _sr3frd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='SR3 pay')
   _sr3py = _sr3py + DI.2.TRIPS
   _sr3pyt = _sr3pyt + DI.2.TRIPS * DI.2.TIME
   _sr3pyd = _sr3pyd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='Walk')
   _walk = _walk + DI.2.TRIPS
   _walkt = _walkt + DI.2.TRIPS * DI.2.TIME
   _walkd = _walkd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='Bike')
   _bike = _bike + DI.2.TRIPS
   _biket = _biket + DI.2.TRIPS * DI.2.TIME
   _biked = _biked + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='wlkall trn')
   _wlkat = _wlkat + DI.2.TRIPS
   _wlkatt = _wlkatt + DI.2.TRIPS * DI.2.TIME
   _wlkatd = _wlkatd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='wlkprm trn')
   _wlkpt = _wlkpt + DI.2.TRIPS
   _wlkptt = _wlkptt + DI.2.TRIPS * DI.2.TIME
   _wlkptd = _wlkptd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='Drive all trn')
   _drvat = _drvat + DI.2.TRIPS
   _drvatt = _drvatt + DI.2.TRIPS * DI.2.TIME
   _drvatd = _drvatd + DI.2.TRIPS * DI.2.DIST
  ELSEIF(DI.2.MODE='Drive prm trn')
   _drvpt = _drvpt + DI.2.TRIPS
   _drvptt = _drvptt + DI.2.TRIPS * DI.2.TIME
   _drvptd = _drvptd + DI.2.TRIPS * DI.2.DIST
  ENDIF
ENDLOOP
LOOP MD=1,DBI.3.NUMRECORDS  ;loop through MD
 x = DBIReadRecord(3,MD)
  IF(DI.3.MODE='All modes')
  _all = _all + DI.3.TRIPS
  _allt = _allt + DI.3.TRIPS * DI.3.TIME
  _alld = _alld + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='SOV free')
   _sovfr = _sovfr + DI.3.TRIPS
   _sovfrt = _sovfrt + DI.3.TRIPS * DI.3.TIME
   _sovfrd = _sovfrd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='SOV pay')
   _sovpy = _sovpy + DI.3.TRIPS
   _sovpyt = _sovpyt + DI.3.TRIPS * DI.3.TIME
   _sovpyd = _sovpyd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='SR2 free')
   _sr2fr = _sr2fr + DI.3.TRIPS
   _sr2frt = _sr2frt + DI.3.TRIPS * DI.3.TIME
   _sr2frd = _sr2frd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='SR2 pay')
   _sr2py = _sr2py + DI.3.TRIPS
   _sr2pyt = _sr2pyt + DI.3.TRIPS * DI.3.TIME
   _sr2pyd = _sr2pyd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='SR3 free')
   _sr3fr = _sr3fr + DI.3.TRIPS
   _sr3frt = _sr3frt + DI.3.TRIPS * DI.3.TIME
   _sr3frd = _sr3frd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='SR3 pay')
   _sr3py = _sr3py + DI.3.TRIPS
   _sr3pyt = _sr3pyt + DI.3.TRIPS * DI.3.TIME
   _sr3pyd = _sr3pyd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='Walk')
   _walk = _walk + DI.3.TRIPS
   _walkt = _walkt + DI.3.TRIPS * DI.3.TIME
   _walkd = _walkd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='Bike')
   _bike = _bike + DI.3.TRIPS
   _biket = _biket + DI.3.TRIPS * DI.3.TIME
   _biked = _biked + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='wlkall trn')
   _wlkat = _wlkat + DI.3.TRIPS
   _wlkatt = _wlkatt + DI.3.TRIPS * DI.3.TIME
   _wlkatd = _wlkatd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='wlkprm trn')
   _wlkpt = _wlkpt + DI.3.TRIPS
   _wlkptt = _wlkptt + DI.3.TRIPS * DI.3.TIME
   _wlkptd = _wlkptd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='Drive all trn')
   _drvat = _drvat + DI.3.TRIPS
   _drvatt = _drvatt + DI.3.TRIPS * DI.3.TIME
   _drvatd = _drvatd + DI.3.TRIPS * DI.3.DIST
  ELSEIF(DI.3.MODE='Drive prm trn')
   _drvpt = _drvpt + DI.3.TRIPS
   _drvptt = _drvptt + DI.3.TRIPS * DI.3.TIME
   _drvptd = _drvptd + DI.3.TRIPS * DI.3.DIST
  ENDIF
ENDLOOP
LOOP PM=1,DBI.4.NUMRECORDS  ;loop through PM
 x = DBIReadRecord(4,PM)
  IF(DI.4.MODE='All modes')
  _all = _all + DI.4.TRIPS
  _allt = _allt + DI.4.TRIPS * DI.4.TIME
  _alld = _alld + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='SOV free')
   _sovfr = _sovfr + DI.4.TRIPS
   _sovfrt = _sovfrt + DI.4.TRIPS * DI.4.TIME
   _sovfrd = _sovfrd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='SOV pay')
   _sovpy = _sovpy + DI.4.TRIPS
   _sovpyt = _sovpyt + DI.4.TRIPS * DI.4.TIME
   _sovpyd = _sovpyd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='SR2 free')
   _sr2fr = _sr2fr + DI.4.TRIPS
   _sr2frt = _sr2frt + DI.4.TRIPS * DI.4.TIME
   _sr2frd = _sr2frd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='SR2 pay')
   _sr2py = _sr2py + DI.4.TRIPS
   _sr2pyt = _sr2pyt + DI.4.TRIPS * DI.4.TIME
   _sr2pyd = _sr2pyd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='SR3 free')
   _sr3fr = _sr3fr + DI.4.TRIPS
   _sr3frt = _sr3frt + DI.4.TRIPS * DI.4.TIME
   _sr3frd = _sr3frd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='SR3 pay')
   _sr3py = _sr3py + DI.4.TRIPS
   _sr3pyt = _sr3pyt + DI.4.TRIPS * DI.4.TIME
   _sr3pyd = _sr3pyd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='Walk')
   _walk = _walk + DI.4.TRIPS
   _walkt = _walkt + DI.4.TRIPS * DI.4.TIME
   _walkd = _walkd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='Bike')
   _bike = _bike + DI.4.TRIPS
   _biket = _biket + DI.4.TRIPS * DI.4.TIME
   _biked = _biked + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='wlkall trn')
   _wlkat = _wlkat + DI.4.TRIPS
   _wlkatt = _wlkatt + DI.4.TRIPS * DI.4.TIME
   _wlkatd = _wlkatd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='wlkprm trn')
   _wlkpt = _wlkpt + DI.4.TRIPS
   _wlkptt = _wlkptt + DI.4.TRIPS * DI.4.TIME
   _wlkptd = _wlkptd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='Drive all trn')
   _drvat = _drvat + DI.4.TRIPS
   _drvatt = _drvatt + DI.4.TRIPS * DI.4.TIME
   _drvatd = _drvatd + DI.4.TRIPS * DI.4.DIST
  ELSEIF(DI.4.MODE='Drive prm trn')
   _drvpt = _drvpt + DI.4.TRIPS
   _drvptt = _drvptt + DI.4.TRIPS * DI.4.TIME
   _drvptd = _drvptd + DI.4.TRIPS * DI.4.DIST
  ENDIF
ENDLOOP
LOOP EV=1,DBI.5.NUMRECORDS  ;loop through EV
 x = DBIReadRecord(5,EV)
  IF(DI.5.MODE='All modes')
  _all = _all + DI.5.TRIPS
  _allt = _allt + DI.5.TRIPS * DI.5.TIME
  _alld = _alld + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='SOV free')
   _sovfr = _sovfr + DI.5.TRIPS
   _sovfrt = _sovfrt + DI.5.TRIPS * DI.5.TIME
   _sovfrd = _sovfrd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='SOV pay')
   _sovpy = _sovpy + DI.5.TRIPS
   _sovpyt = _sovpyt + DI.5.TRIPS * DI.5.TIME
   _sovpyd = _sovpyd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='SR2 free')
   _sr2fr = _sr2fr + DI.5.TRIPS
   _sr2frt = _sr2frt + DI.5.TRIPS * DI.5.TIME
   _sr2frd = _sr2frd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='SR2 pay')
   _sr2py = _sr2py + DI.5.TRIPS
   _sr2pyt = _sr2pyt + DI.5.TRIPS * DI.5.TIME
   _sr2pyd = _sr2pyd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='SR3 free')
   _sr3fr = _sr3fr + DI.5.TRIPS
   _sr3frt = _sr3frt + DI.5.TRIPS * DI.5.TIME
   _sr3frd = _sr3frd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='SR3 pay')
   _sr3py = _sr3py + DI.5.TRIPS
   _sr3pyt = _sr3pyt + DI.5.TRIPS * DI.5.TIME
   _sr3pyd = _sr3pyd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='Walk')
   _walk = _walk + DI.5.TRIPS
   _walkt = _walkt + DI.5.TRIPS * DI.5.TIME
   _walkd = _walkd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='Bike')
   _bike = _bike + DI.5.TRIPS
   _biket = _biket + DI.5.TRIPS * DI.5.TIME
   _biked = _biked + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='wlkall trn')
   _wlkat = _wlkat + DI.5.TRIPS
   _wlkatt = _wlkatt + DI.5.TRIPS * DI.5.TIME
   _wlkatd = _wlkatd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='wlkprm trn')
   _wlkpt = _wlkpt + DI.5.TRIPS
   _wlkptt = _wlkptt + DI.5.TRIPS * DI.5.TIME
   _wlkptd = _wlkptd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='Drive all trn')
   _drvat = _drvat + DI.5.TRIPS
   _drvatt = _drvatt + DI.5.TRIPS * DI.5.TIME
   _drvatd = _drvatd + DI.5.TRIPS * DI.5.DIST
  ELSEIF(DI.5.MODE='Drive prm trn')
   _drvpt = _drvpt + DI.5.TRIPS
   _drvptt = _drvptt + DI.5.TRIPS * DI.5.TIME
   _drvptd = _drvptd + DI.5.TRIPS * DI.5.DIST
  ENDIF
 IF(DBI.5.RECNO=DBI.5.NUMRECORDS)  ;last record check
 ;compute average travel times by mode
  _avgall = _allt / max(_all,1)
  _avgsovfr = _sovfrt / max(_sovfr,1)
  _avgsovpy = _sovpyt / max(_sovpy,1)
  _avgsr2fr = _sr2frt / max(_sr2fr,1)
  _avgsr2py = _sr2pyt / max(_sr2py,1)
  _avgsr3fr = _sr3frt / max(_sr3fr,1)
  _avgsr3py = _sr3pyt / max(_sr3py,1)
  _avgwalk = _walkt / max(_walk,1)
  _avgbike = _biket / max(_bike,1)
  _avgwlkat = _wlkatt / max(_wlkat,1)
  _avgwlkpt = _wlkptt / max(_wlkpt,1)
  _avgdrvat = _drvatt / max(_drvat,1)
  _avgdrvpt = _drvptt / max(_drvpt,1)
 ;compute average travel times by mode
  _avgalld = _alld / max(_all,1)
  _avgsovfrd = _sovfrd / max(_sovfr,1)
  _avgsovpyd = _sovpyd / max(_sovpy,1)
  _avgsr2frd = _sr2frd / max(_sr2fr,1)
  _avgsr2pyd = _sr2pyd / max(_sr2py,1)
  _avgsr3frd = _sr3frd / max(_sr3fr,1)
  _avgsr3pyd = _sr3pyd / max(_sr3py,1)
  _avgwalkd = _walkd / max(_walk,1)
  _avgbiked = _biked / max(_bike,1)
  _avgwlkatd = _wlkatd / max(_wlkat,1)
  _avgwlkptd = _wlkptd / max(_wlkpt,1)
  _avgdrvatd = _drvatd / max(_drvat,1)
  _avgdrvptd = _drvptd / max(_drvpt,1)
;Print summary of all modes to csv
 PRINT LIST='Mode,Tours,Avg Travel Time,Avg Travel Distance',PRINTO=1
 PRINT CSV=T,LIST='All modes',_all,_avgall,_avgalld,PRINTO=1
 PRINT CSV=T,LIST='SOV free',_sovfr,_avgsovfr,_avgsovfrd,PRINTO=1
 PRINT CSV=T,LIST='SOV pay',_sovpy,_avgsovpy,_avgsovpyd,PRINTO=1
 PRINT CSV=T,LIST='SR2 free',_sr2fr,_avgsr2fr,_avgsr2frd,PRINTO=1
 PRINT CSV=T,LIST='SR2 pay',_sr2py,_avgsr2py,_avgsr2pyd,PRINTO=1
 PRINT CSV=T,LIST='SR3 free',_sr3fr,_avgsr3fr,_avgsr3frd,PRINTO=1
 PRINT CSV=T,LIST='SR3 pay',_sr3py,_avgsr3py,_avgsr3pyd,PRINTO=1
 PRINT CSV=T,LIST='Walk',_walk,_avgwalk,_avgwalkd,PRINTO=1
 PRINT CSV=T,LIST='Bike',_bike,_avgbike,_avgbiked,PRINTO=1
 PRINT CSV=T,LIST='wlkall trn',_wlkat,_avgwlkat,_avgwlkatd,PRINTO=1
 PRINT CSV=T,LIST='wlkprm trn',_wlkpt,_avgwlkpt,_avgwlkptd,PRINTO=1
 PRINT CSV=T,LIST='Drive all trn',_drvat,_avgdrvat,_avgdrvatd,PRINTO=1
 PRINT CSV=T,LIST='Drive prm trn',_drvpt,_avgdrvpt,_avgdrvptd,PRINTO=1
 ENDIF  ;last record check
ENDLOOP  ;EV record loop

ENDRUN

;==================================================================================
;Tabulate peak work tours that are less than 30 minutes
RUN PGM=MATRIX
RECI=Eval\WorkToursAll_TimeDist.DBF
PRINTO[1]=Eval\PeakWorkToursWithin45MinutesByMode.CSV

;peak period is considered AM / PM
IF(RI.START_PER=7-14,25-32)
                                   _all = _all + 1           ;all
 IF(RI.TIME<=45)                   _all45 = _all45 + 1       ;all w/in 45
 IF(RI.MODE = 1)                   _sovf =   _sovf + 1       ;sov free
 IF(RI.MODE = 1 & RI.TIME<=45)     _sovf45 = _sovf45 + 1     ;sov free w/in 45
 IF(RI.MODE = 2)                   _sovp =   _sovp + 1       ;sov pay
 IF(RI.MODE = 2 & RI.TIME<=45)     _sovp45 = _sovp45 + 1     ;sov pay w/in 45
 IF(RI.MODE = 3)                   _sr2f =   _sr2f + 1       ;sr2 free
 IF(RI.MODE = 3 & RI.TIME<=45)     _sr2f45 = _sr2f45 + 1     ;sr2 free w/in 45
 IF(RI.MODE = 4)                   _sr2p =   _sr2p + 1       ;sr2 pay
 IF(RI.MODE = 4 & RI.TIME<=45)     _sr2p45 = _sr2p45 + 1     ;sr2 pay w/in 45
 IF(RI.MODE = 5)                   _sr3f =   _sr3f + 1       ;sr3 free
 IF(RI.MODE = 5 & RI.TIME<=45)     _sr3f45 = _sr3f45 + 1     ;sr3 free w/in 45
 IF(RI.MODE = 6)                   _sr3p =   _sr3p + 1       ;sr3 pay
 IF(RI.MODE = 6 & RI.TIME<=45)     _sr3p45 = _sr3p45 + 1     ;sr3 pay w/in 45
 IF(RI.MODE = 7)                   _walk =   _walk + 1       ;walk
 IF(RI.MODE = 7 & RI.TIME<=45)     _walk45 = _walk45 + 1     ;walk w/in 45
 IF(RI.MODE = 8)                   _bike =   _bike + 1       ;bike
 IF(RI.MODE = 8 & RI.TIME<=45)     _bike45 = _bike45 + 1     ;bike w/in 45
 IF(RI.MODE = 9-10)                _wlkt =   _wlkt + 1       ;walk transit
 IF(RI.MODE = 9-10 & RI.TIME<=45)  _wlkt45 = _wlkt45 + 1     ;walk transit w/in 45
 IF(RI.MODE = 11-14)               _drvt =   _drvt + 1       ;drive transit
 IF(RI.MODE = 11-14 & RI.TIME<=45) _drvt45 = _drvt45 + 1     ;drive transit w/in 45
ENDIF
 IF(RECI.RECNO=RECI.NUMRECORDS)
  _sovfpct = _sovf45/max(_sovf,1)*100
  _sovppct = _sovp45/max(_sovp,1)*100
  _sr2fpct = _sr2f45/max(_sr2f,1)*100
  _sr2ppct = _sr2p45/max(_sr2p,1)*100
  _sr3fpct = _sr3f45/max(_sr3f,1)*100
  _sr3ppct = _sr3p45/max(_sr3p,1)*100
  _walkpct = _walk45/max(_walk,1)*100
  _bikepct = _bike45/max(_bike,1)*100
  _wlktpct = _wlkt45/max(_wlkt,1)*100
  _drvtpct = _drvt45/max(_drvt,1)*100
  _allpct = _all45/max(_all,1)*100
  
 ;tours by mode
 PRINT LIST='Peak Work Tours by mode w/in 45 minutes',PRINTO=1
 PRINT LIST='Mode,Total,Within 45 minutes,Percent within 45 minutes',PRINTO=1
 PRINT CSV=T,LIST='SOV Free',_sovf,_sovf45,_sovfpct,PRINTO=1
 PRINT CSV=T,LIST='SOV Pay',_sovp,_sovp45,_sovppct,PRINTO=1
 PRINT CSV=T,LIST='SR2 Free',_sr2f,_sr2f45,_sr2fpct,PRINTO=1
 PRINT CSV=T,LIST='SR2 Pay',_sr2p,_sr2p45,_sr2ppct,PRINTO=1
 PRINT CSV=T,LIST='SR3 Free',_sr3f,_sr3f45,_sr3fpct,PRINTO=1
 PRINT CSV=T,LIST='SR3 Pay',_sr3p,_sr3p45,_sr3ppct,PRINTO=1
 PRINT CSV=T,LIST='Walk',_walk,_walk45,_walkpct,PRINTO=1
 PRINT CSV=T,LIST='Bike',_bike,_bike45,_bikepct,PRINTO=1
 PRINT CSV=T,LIST='Walk transit',_wlkt,_wlkt45,_wlktpct,PRINTO=1
 PRINT CSV=T,LIST='Drive transit',_drvt,_drvt45,_drvtpct,PRINTO=1
 PRINT CSV=T,LIST='Total',_all,_all45,_allpct,PRINTO=1
 ENDIF
ENDRUN
 
;=================================================================================================
;CREATE SUMMARIES FOR:
; County to County trips by mode
; Super District to Super District trips by mode
; Activity Center to Activity center trips by mode
;=================================================================================================

;create daily trip matrix
RUN PGM=MATRIX
MATI[1]=tripsEA.TPP
MATI[2]=tripsAM.TPP
MATI[3]=tripsMD.TPP
MATI[4]=tripsPM.TPP
MATI[5]=tripsEV.TPP
MATO=EVAL\trips_Day.TPP,MO=1-19,NAME=DA,DATOLL,SR2,SR2TOLL,SR3,SR3TOLL,WALK,BIKE,
                                WLKALLWLK,WLKPRMWLK,PNRALLWLK,WLKALLPNR,PNRPRMWLK,WLKPRMPNR,KNRALLWLK,WLKALLKNR,
                                KNRPRMWLK,WLKPRMKNR,SCHLBUS
                                
ZONEMSG=50
                                
FILLMW MW[101]=MI.1.1(19)
FILLMW MW[201]=MI.2.1(19)
FILLMW MW[301]=MI.3.1(19)
FILLMW MW[401]=MI.4.1(19)
FILLMW MW[501]=MI.5.1(19)

DA        = ROWADD(1,101,201,301,401,501)
DATOLL    = ROWADD(2,102,202,302,402,502)
SR2       = ROWADD(3,103,203,303,403,503)
SR2TOLL   = ROWADD(4,104,204,304,404,504)
SR3       = ROWADD(5,105,205,305,405,505)
SR3TOLL   = ROWADD(6,106,206,306,406,506)
WALK      = ROWADD(7,107,207,307,407,507)
BIKE      = ROWADD(8,108,208,308,408,508)
WLKALLWLK = ROWADD(9,109,209,309,409,509)
WLKPRMWLK = ROWADD(10,110,210,310,410,510)
PNRALLWLK = ROWADD(11,111,211,311,411,511)
WLKALLPNR = ROWADD(12,112,212,312,412,512)
PNRPRMWLK = ROWADD(13,113,213,313,413,513)
WLKPRMPNR = ROWADD(14,114,214,314,414,514)
KNRALLWLK = ROWADD(15,115,215,315,415,515)
WLKALLKNR = ROWADD(16,116,216,316,416,516)
KNRPRMWLK = ROWADD(17,117,217,317,417,517)
WLKPRMKNR = ROWADD(18,118,218,318,418,518)
SCHLBUS   = ROWADD(19,119,219,319,419,519)


ENDRUN

;================================================================
;County to County
RUN PGM=MATRIX
MATI[1]=EVAL\trips_Day.TPP
MATI[2]=EVAL\WorkToursAll.TPP
MATI[3]=EVAL\NonWorkToursAll.TPP
ZDATI[1]=Parameters\TAZ_Data.DBF,Z=ZONE
MATO[1]=Eval\CountyToCounty_Trips.TPP,MO=1-6,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
MATO[2]=Eval\CountyToCounty_WorkTours.TPP,MO=11-16,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
MATO[3]=Eval\CountyToCounty_NonWorkTours.TPP,MO=21-26,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
ZONEMSG=50

FILLMW MW[101]=MI.1.1(19)
FILLMW MW[201]=MI.2.1(15)
FILLMW MW[301]=MI.3.1(15)
;trips
SOV = ROWADD(1,101,102)
HOV = ROWADD(2,103,104,105,106)
BPD = ROWADD(3,107,108)
TRN = ROWADD(4,109,110,111,112,113,114,115,116,117,118)
SCH = ROWADD(5,119)
ALL = ROWADD(6,1,2,3,4,5)
;work tours
SOV = ROWADD(11,201,202)
HOV = ROWADD(12,203,204,205,206)
BPD = ROWADD(13,207,208)
TRN = ROWADD(14,209,210,211,212,213,214)
SCH = ROWADD(15,215)
ALL = ROWADD(16,11,12,13,14,15)
;non-work tours
SOV = ROWADD(21,301,302)
HOV = ROWADD(22,303,304,305,306)
BPD = ROWADD(23,307,308)
TRN = ROWADD(24,309,310,311,312,313,314)
SCH = ROWADD(25,315)
ALL = ROWADD(26,21,22,23,24,25)

RENUMBER ZONEO=ZI.1.COUNTYNUM,MISSINGZI=W,MISSINGZO=W

ENDRUN
;loop through trips, work tours, and non-work tours
LOOP N=1,3
 IF(N=1)  FILE='Trips'
 IF(N=2)  FILE='WorkTours'
 IF(N=3)  FILE='NonWorkTours'

RUN PGM=MATRIX
MATI[1]=Eval\CountyToCounty_@File@.TPP
MATO[1]=Eval\CountyToCountySOV_@File@.TMP,MO=1,PATTERN=IJ:V,DELIMITER=','
MATO[2]=Eval\CountyToCountyHOV_@File@.TMP,MO=2,PATTERN=IJ:V,DELIMITER=','
MATO[3]=Eval\CountyToCountyBikePed_@File@.TMP,MO=3,PATTERN=IJ:V,DELIMITER=','
MATO[4]=Eval\CountyToCountyTransit_@File@.TMP,MO=4,PATTERN=IJ:V,DELIMITER=','
MATO[5]=Eval\CountyToCountySchoolBus_@File@.TMP,MO=5,PATTERN=IJ:V,DELIMITER=','
MATO[6]=Eval\CountyToCountyAll_@File@.TMP,MO=6,PATTERN=IJ:V,DELIMITER=','

FILLMW MW[1]=MI.1.1(6)

JLOOP
 IF(MW[1]=0) MW[1]=-1
 IF(MW[2]=0) MW[2]=-1
 IF(MW[3]=0) MW[3]=-1
 IF(MW[4]=0) MW[4]=-1
 IF(MW[5]=0) MW[5]=-1
 IF(MW[6]=0) MW[6]=-1
ENDJLOOP
ENDRUN

ENDLOOP
;================================================================
;================================================================
;SuperDistrict to SuperDistrict
RUN PGM=MATRIX
MATI[1]=EVAL\trips_Day.TPP
MATI[2]=EVAL\WorkToursAll.TPP
MATI[3]=EVAL\NonWorkToursAll.TPP
ZDATI[1]=Parameters\TAZ_Data.DBF,Z=ZONE
MATO[1]=Eval\SuperDistrictToSuperDistrict_Trips.TPP,MO=1-6,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
MATO[2]=Eval\SuperDistrictToSuperDistrict_WorkTours.TPP,MO=11-16,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
MATO[3]=Eval\SuperDistrictToSuperDistrict_NonWorkTours.TPP,MO=21-26,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
ZONEMSG=50

FILLMW MW[101]=MI.1.1(19)
FILLMW MW[201]=MI.2.1(15)
FILLMW MW[301]=MI.3.1(15)
;trips
SOV = ROWADD(1,101,102)
HOV = ROWADD(2,103,104,105,106)
BPD = ROWADD(3,107,108)
TRN = ROWADD(4,109,110,111,112,113,114,115,116,117,118)
SCH = ROWADD(5,119)
ALL = ROWADD(6,1,2,3,4,5)
;work tours
SOV = ROWADD(11,201,202)
HOV = ROWADD(12,203,204,205,206)
BPD = ROWADD(13,207,208)
TRN = ROWADD(14,209,210,211,212,213,214)
SCH = ROWADD(15,215)
ALL = ROWADD(16,11,12,13,14,15)
;non-work tours
SOV = ROWADD(21,301,302)
HOV = ROWADD(22,303,304,305,306)
BPD = ROWADD(23,307,308)
TRN = ROWADD(24,309,310,311,312,313,314)
SCH = ROWADD(25,315)
ALL = ROWADD(26,21,22,23,24,25)

RENUMBER ZONEO=ZI.1.SUPDISTNUM,MISSINGZI=W,MISSINGZO=W

ENDRUN
;loop through trips, work tours, and non-work tours
LOOP N=1,3
 IF(N=1)  FILE='Trips'
 IF(N=2)  FILE='WorkTours'
 IF(N=3)  FILE='NonWorkTours'

RUN PGM=MATRIX
MATI[1]=Eval\SuperDistrictToSuperDistrict_@File@.TPP
MATO[1]=Eval\SuperDistrictToSuperDistrictSOV_@File@.TMP,MO=1,PATTERN=IJ:V,DELIMITER=','
MATO[2]=Eval\SuperDistrictToSuperDistrictHOV_@File@.TMP,MO=2,PATTERN=IJ:V,DELIMITER=','
MATO[3]=Eval\SuperDistrictToSuperDistrictBikePed_@File@.TMP,MO=3,PATTERN=IJ:V,DELIMITER=','
MATO[4]=Eval\SuperDistrictToSuperDistrictTransit_@File@.TMP,MO=4,PATTERN=IJ:V,DELIMITER=','
MATO[5]=Eval\SuperDistrictToSuperDistrictSchoolBus_@File@.TMP,MO=5,PATTERN=IJ:V,DELIMITER=','
MATO[6]=Eval\SuperDistrictToSuperDistrictAll_@File@.TMP,MO=6,PATTERN=IJ:V,DELIMITER=','

FILLMW MW[1]=MI.1.1(6)

JLOOP
 IF(MW[1]=0) MW[1]=-1
 IF(MW[2]=0) MW[2]=-1
 IF(MW[3]=0) MW[3]=-1
 IF(MW[4]=0) MW[4]=-1
 IF(MW[5]=0) MW[5]=-1
 IF(MW[6]=0) MW[6]=-1
ENDJLOOP
ENDRUN
ENDLOOP
;================================================================
;================================================================
;ActivityCenter to ActivityCenter
RUN PGM=MATRIX
MATI[1]=EVAL\trips_Day.TPP
MATI[2]=EVAL\WorkToursAll.TPP
MATI[3]=EVAL\NonWorkToursAll.TPP
ZDATI[1]=Parameters\TAZ_DATA.DBF,Z=ZONE
MATO[1]=Eval\ActivityCenterToActivityCenter_Trips.TPP,MO=1-6,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
MATO[2]=Eval\ActivityCenterToActivityCenter_WorkTours.TPP,MO=11-16,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
MATO[3]=Eval\ActivityCenterToActivityCenter_NonWorkTours.TPP,MO=21-26,NAME=SOV,HOV,Walk_Bike,Transit,SchBus,All
ZONEMSG=50

FILLMW MW[101]=MI.1.1(19)
FILLMW MW[201]=MI.2.1(15)
FILLMW MW[301]=MI.3.1(15)
;trips
SOV = ROWADD(1,101,102)
HOV = ROWADD(2,103,104,105,106)
BPD = ROWADD(3,107,108)
TRN = ROWADD(4,109,110,111,112,113,114,115,116,117,118)
SCH = ROWADD(5,119)
ALL = ROWADD(6,1,2,3,4,5)

;work tours
SOV = ROWADD(11,201,202)
HOV = ROWADD(12,203,204,205,206)
BPD = ROWADD(13,207,208)
TRN = ROWADD(14,209,210,211,212,213,214)
SCH = ROWADD(15,215)
ALL = ROWADD(16,11,12,13,14,15)
;non-work tours
SOV = ROWADD(21,301,302)
HOV = ROWADD(22,303,304,305,306)
BPD = ROWADD(23,307,308)
TRN = ROWADD(24,309,310,311,312,313,314)
SCH = ROWADD(25,315)
ALL = ROWADD(26,21,22,23,24,25)

JLOOP
IF(ZI.1.ACTCTRNUM[I]>0 & ZI.1.ACTCTRNUM[J]>0)
 _bpdtrips = _bpdtrips + MW[3]
 _bpdtours = _bpdtours + MW[13]
 _bpdnwtours = _bpdnwtours + MW[23]

ENDIF
ENDJLOOP

RENUMBER ZONEO=ZI.1.ACTCTRNUM,MISSINGZI=W,MISSINGZO=W

log var = _bpdtrips  ;bike/ped trips
log var = _bpdtours  ;bike/ped work tours
log var = _bpdnwtours  ;bike/ped non-work tours

ENDRUN

;loop through trips, work tours, and non-work tours
LOOP N=1,3
 IF(N=1)  FILE='Trips'
 IF(N=2)  FILE='WorkTours'
 IF(N=3)  FILE='NonWorkTours'

RUN PGM=MATRIX
MATI[1]=Eval\ActivityCenterToActivityCenter_@File@.TPP
MATO[1]=Eval\ActivityCenterToActivityCenterSOV_@File@.TMP,MO=1,PATTERN=IJ:V,DELIMITER=','
MATO[2]=Eval\ActivityCenterToActivityCenterHOV_@File@.TMP,MO=2,PATTERN=IJ:V,DELIMITER=','
MATO[3]=Eval\ActivityCenterToActivityCenterBikePed_@File@.TMP,MO=3,PATTERN=IJ:V,DELIMITER=','
MATO[4]=Eval\ActivityCenterToActivityCenterTransit_@File@.TMP,MO=4,PATTERN=IJ:V,DELIMITER=','
MATO[5]=Eval\ActivityCenterToActivityCenterSchoolBus_@File@.TMP,MO=5,PATTERN=IJ:V,DELIMITER=','
MATO[6]=Eval\ActivityCenterToActivityCenterAll_@File@.TMP,MO=6,PATTERN=IJ:V,DELIMITER=','

FILLMW MW[1]=MI.1.1(6)

JLOOP
 IF(MW[1]=0) MW[1]=-1
 IF(MW[2]=0) MW[2]=-1
 IF(MW[3]=0) MW[3]=-1
 IF(MW[4]=0) MW[4]=-1
 IF(MW[5]=0) MW[5]=-1
 IF(MW[6]=0) MW[6]=-1
ENDJLOOP
ENDRUN
ENDLOOP

RUN PGM=MATRIX
ZDATI[1]=ZoneData.DBF,Z=ZONE
ZDATI[2]=Parameters\TAZ_DATA.DBF,Z=ZONE
ZONES={lastin}

IF(ZI.2.ACTCTRNUM = 1) _ACT1 = _ACT1 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 2) _ACT2 = _ACT2 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 3) _ACT3 = _ACT3 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 4) _ACT4 = _ACT4 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 5) _ACT5 = _ACT5 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 6) _ACT6 = _ACT6 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 7) _ACT7 = _ACT7 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 8) _ACT8 = _ACT8 + ZI.1.POP
IF(ZI.2.ACTCTRNUM = 9) _ACT9 = _ACT9 + ZI.1.POP
IF(ZI.2.ACTCTRNUM =10) _ACT10= _ACT10+ ZI.1.POP
IF(ZI.2.ACTCTRNUM =11) _ACT11= _ACT11+ ZI.1.POP
IF(ZI.2.ACTCTRNUM =12) _ACT12= _ACT12+ ZI.1.POP
IF(ZI.2.ACTCTRNUM =13) _ACT13= _ACT13+ ZI.1.POP

log var = _act1   ;activity center 1 pop
log var = _act2   ;activity center 2 pop
log var = _act3   ;activity center 3 pop
log var = _act4   ;activity center 4 pop
log var = _act5   ;activity center 5 pop
log var = _act6   ;activity center 6 pop
log var = _act7   ;activity center 7 pop
log var = _act8   ;activity center 8 pop
log var = _act9   ;activity center 9 pop
log var = _act10  ;activity center 10 pop
log var = _act11  ;activity center 11 pop
log var = _act12  ;activity center 12 pop
log var = _act13  ;activity center 13 pop

ENDRUN

;total walk/bike trips by activity center
RUN PGM=MATRIX
MATI[1]=Eval\ActivityCenterToActivityCenter_Trips.TPP
MATI[2]=Eval\ActivityCenterToActivityCenter_WorkTours.TPP
MATI[3]=Eval\ActivityCenterToActivityCenter_NonWorkTours.TPP
PRINTO[1]=Eval\ActivityCenterWalkBikeTrips.CSV
PRINTO[2]=Eval\ActivityCenterWalkBikeWorkTours.CSV
PRINTO[3]=Eval\ActivityCenterWalkBikeNonWorkTours.CSV

FILLMW MW[1]=MI.1.Walk_Bike
FILLMW MW[2]=MI.2.Walk_Bike
FILLMW MW[3]=MI.3.Walk_Bike

Trips = ROWSUM(1)
Tours = ROWSUM(2)
NWTours = ROWSUM(3)

PctTrips = Trips / @MATRIX._bpdtrips@ * 100
PctTours = Tours / @MATRIX._bpdtours@ * 100
PctNWTours = NWTours / @MATRIX._bpdnwtours@ * 100

IF(I=1)
 NAME = 'Airport'
 POP = @MATRIX._act1@
ELSEIF(I=2)
 NAME = 'Buckhead'
 POP = @MATRIX._act2@
ELSEIF(I=3)
 NAME = 'Cumberland'
 POP = @MATRIX._act3@
ELSEIF(I=4)
 NAME = 'Downtown'
 POP = @MATRIX._act4@
ELSEIF(I=5)
 NAME = 'Emory'
 POP = @MATRIX._act5@
ELSEIF(I=6)
 NAME = 'FltnInd'
 POP = @MATRIX._act6@
ELSEIF(I=7)
 NAME = 'GwtPlace'
 POP = @MATRIX._act7@
ELSEIF(I=8)
 NAME = 'Midtown'
 POP = @MATRIX._act8@
ELSEIF(I=9)
 NAME = 'Norcross'
 POP = @MATRIX._act9@
ELSEIF(I=10)
 NAME = 'NorthPoint'
 POP = @MATRIX._act10@
ELSEIF(I=11)
 NAME = 'Perimeter'
 POP = @MATRIX._act11@
ELSEIF(I=12) 
 NAME = 'Southlake'
 POP = @MATRIX._act12@
ELSEIF(I=13)
 NAME = 'TownCenter'
 POP = @MATRIX._act13@
ENDIF
 
 PERCAPW = TOURS / POP
 PERCAPN = NWTOURS / POP

IF(I=1)
 PRINT LIST='Walk/bike trips from Activity Center',PRINTO=1
 PRINT LIST='Activity Center,Trips',PRINTO=1
 PRINT LIST='Walk/bike Work tours from Activity Center',PRINTO=2
 PRINT LIST='Activity Center,Tours,PerCapita',PRINTO=2
 PRINT LIST='Walk/bike Non-Work tours from Activity Center',PRINTO=3
 PRINT LIST='Activity Center,Tours,PerCapita',PRINTO=3
ENDIF
PRINT CSV=T,LIST=Name,Trips,PctTrips,PRINTO=1
PRINT CSV=T,LIST=Name,Tours,PerCapW,PRINTO=2
PRINT CSV=T,LIST=Name,NWTours,PerCapN,PRINTO=3

ENDRUN
;==================================================================================
;Build county to county CSV
;loop through trips, work tours, and non-work tours
LOOP N=1,3
IF(N=1) TYPE='_Trips'
IF(N=2) TYPE='_WorkTours'
IF(N=3) TYPE='_NonWorkTours'

;create county to county CSV
RUN PGM=MATRIX
DBI[1]=Eval\CountyToCountySOV@TYPE@.TMP,DELIMITER=',' COUNTY=1,C1=3,C2=4,C3=5,C4=6,C5=7,C6=8,C7=9,C8=10,C9=11,C10=12,
                                                      C11=13,C12=14,C13=15,C14=16,C15=17,C16=18,C17=19,C18=20,C19=21,C20=22,C21=23
DBI[2]=Eval\CountyToCountyHOV@TYPE@.TMP,DELIMITER=',' COUNTY=1,C1=3,C2=4,C3=5,C4=6,C5=7,C6=8,C7=9,C8=10,C9=11,C10=12,
                                                      C11=13,C12=14,C13=15,C14=16,C15=17,C16=18,C17=19,C18=20,C19=21,C20=22,C21=23
DBI[3]=Eval\CountyToCountyBikePed@TYPE@.TMP,DELIMITER=',' COUNTY=1,C1=3,C2=4,C3=5,C4=6,C5=7,C6=8,C7=9,C8=10,C9=11,C10=12,
                                                      C11=13,C12=14,C13=15,C14=16,C15=17,C16=18,C17=19,C18=20,C19=21,C20=22,C21=23
DBI[4]=Eval\CountyToCountyTransit@TYPE@.TMP,DELIMITER=',' COUNTY=1,C1=3,C2=4,C3=5,C4=6,C5=7,C6=8,C7=9,C8=10,C9=11,C10=12,
                                                      C11=13,C12=14,C13=15,C14=16,C15=17,C16=18,C17=19,C18=20,C19=21,C20=22,C21=23
DBI[5]=Eval\CountyToCountySchoolBus@TYPE@.TMP,DELIMITER=',' COUNTY=1,C1=3,C2=4,C3=5,C4=6,C5=7,C6=8,C7=9,C8=10,C9=11,C10=12,
                                                      C11=13,C12=14,C13=15,C14=16,C15=17,C16=18,C17=19,C18=20,C19=21,C20=22,C21=23
DBI[6]=Eval\CountyToCountyAll@TYPE@.TMP,DELIMITER=',' COUNTY=1,C1=3,C2=4,C3=5,C4=6,C5=7,C6=8,C7=9,C8=10,C9=11,C10=12,
                                                      C11=13,C12=14,C13=15,C14=16,C15=17,C16=18,C17=19,C18=20,C19=21,C20=22,C21=23
PRINTO[1]=Eval\CountyToCounty@TYPE@.CSV
ZONES=1
;----------------------------------------------------------------------------
LOOP SOV=1,DBI.1.NUMRECORDS  ;loop through all sov records
 x = DBIReadRecord(1,SOV)          ;read each individual record

 IF(SOV=1) PRINT LIST='County to County Trips - SOV',PRINTO=1
 IF(SOV=1) PRINT LIST='County,Fulton,DeKalb,Cobb,Gwinnett,Rockdale,Henry,Clayton,Fayette,Douglas,Cherokee,Coweta,Forsyth,Paulding,Bartow,Carroll,Spalding,Newton,Walton,Barrow,Hall,Dawson',PRINTO=1
 IF(DI.1.COUNTY=1)  NAME = 'Fulton'
 IF(DI.1.COUNTY=2)  NAME = 'DeKalb'
 IF(DI.1.COUNTY=3)  NAME = 'Cobb'
 IF(DI.1.COUNTY=4)  NAME = 'Gwinnett'
 IF(DI.1.COUNTY=5)  NAME = 'Rockdale'
 IF(DI.1.COUNTY=6)  NAME = 'Henry'
 IF(DI.1.COUNTY=7)  NAME = 'Clayton'
 IF(DI.1.COUNTY=8)  NAME = 'Fayette'
 IF(DI.1.COUNTY=9)  NAME = 'Douglas'
 IF(DI.1.COUNTY=10) NAME = 'Cherokee'
 IF(DI.1.COUNTY=11) NAME = 'Coweta'
 IF(DI.1.COUNTY=12) NAME = 'Forsyth'
 IF(DI.1.COUNTY=13) NAME = 'Paulding'
 IF(DI.1.COUNTY=14) NAME = 'Bartow'
 IF(DI.1.COUNTY=15) NAME = 'Carroll'
 IF(DI.1.COUNTY=16) NAME = 'Spalding'
 IF(DI.1.COUNTY=17) NAME = 'Newton'
 IF(DI.1.COUNTY=18) NAME = 'Walton'
 IF(DI.1.COUNTY=19) NAME = 'Barrow'
 IF(DI.1.COUNTY=20) NAME = 'Hall'
 IF(DI.1.COUNTY=21) NAME = 'Dawson'

 C1 = MAX(DI.1.C1,0)
 C2 = MAX(DI.1.C2,0)
 C3 = MAX(DI.1.C3,0)
 C4 = MAX(DI.1.C4,0)
 C5 = MAX(DI.1.C5,0)
 C6 = MAX(DI.1.C6,0)
 C7 = MAX(DI.1.C7,0)
 C8 = MAX(DI.1.C8,0)
 C9 = MAX(DI.1.C9,0)
 C10 = MAX(DI.1.C10,0)
 C11 = MAX(DI.1.C11,0)
 C12 = MAX(DI.1.C12,0)
 C13 = MAX(DI.1.C13,0)
 C14 = MAX(DI.1.C14,0)
 C15 = MAX(DI.1.C15,0)
 C16 = MAX(DI.1.C16,0)
 C17 = MAX(DI.1.C17,0)
 C18 = MAX(DI.1.C18,0)
 C19 = MAX(DI.1.C19,0)
 C20 = MAX(DI.1.C20,0)
 C21 = MAX(DI.1.C21,0)

 PRINT CSV=T,LIST=Name,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,PRINTO=1
ENDLOOP ;sov loop
;----------------------------------------------------------------------------
LOOP HOV=1,DBI.2.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(2,HOV)          ;read each individual record

 IF(HOV=1) PRINT LIST='County to County Trips - HOV',PRINTO=1
 IF(HOV=1) PRINT LIST='County,Fulton,DeKalb,Cobb,Gwinnett,Rockdale,Henry,Clayton,Fayette,Douglas,Cherokee,Coweta,Forsyth,Paulding,Bartow,Carroll,Spalding,Newton,Walton,Barrow,Hall,Dawson',PRINTO=1
 IF(DI.2.COUNTY=1)  NAME = 'Fulton'
 IF(DI.2.COUNTY=2)  NAME = 'DeKalb'
 IF(DI.2.COUNTY=3)  NAME = 'Cobb'
 IF(DI.2.COUNTY=4)  NAME = 'Gwinnett'
 IF(DI.2.COUNTY=5)  NAME = 'Rockdale'
 IF(DI.2.COUNTY=6)  NAME = 'Henry'
 IF(DI.2.COUNTY=7)  NAME = 'Clayton'
 IF(DI.2.COUNTY=8)  NAME = 'Fayette'
 IF(DI.2.COUNTY=9)  NAME = 'Douglas'
 IF(DI.2.COUNTY=10) NAME = 'Cherokee'
 IF(DI.2.COUNTY=11) NAME = 'Coweta'
 IF(DI.2.COUNTY=12) NAME = 'Forsyth'
 IF(DI.2.COUNTY=13) NAME = 'Paulding'
 IF(DI.2.COUNTY=14) NAME = 'Bartow'
 IF(DI.2.COUNTY=15) NAME = 'Carroll'
 IF(DI.2.COUNTY=16) NAME = 'Spalding'
 IF(DI.2.COUNTY=17) NAME = 'Newton'
 IF(DI.2.COUNTY=18) NAME = 'Walton'
 IF(DI.2.COUNTY=19) NAME = 'Barrow'
 IF(DI.2.COUNTY=20) NAME = 'Hall'
 IF(DI.2.COUNTY=21) NAME = 'Dawson'

 C1 = MAX(DI.2.C1,0)
 C2 = MAX(DI.2.C2,0)
 C3 = MAX(DI.2.C3,0)
 C4 = MAX(DI.2.C4,0)
 C5 = MAX(DI.2.C5,0)
 C6 = MAX(DI.2.C6,0)
 C7 = MAX(DI.2.C7,0)
 C8 = MAX(DI.2.C8,0)
 C9 = MAX(DI.2.C9,0)
 C10 = MAX(DI.2.C10,0)
 C11 = MAX(DI.2.C11,0)
 C12 = MAX(DI.2.C12,0)
 C13 = MAX(DI.2.C13,0)
 C14 = MAX(DI.2.C14,0)
 C15 = MAX(DI.2.C15,0)
 C16 = MAX(DI.2.C16,0)
 C17 = MAX(DI.2.C17,0)
 C18 = MAX(DI.2.C18,0)
 C19 = MAX(DI.2.C19,0)
 C20 = MAX(DI.2.C20,0)
 C21 = MAX(DI.2.C21,0)

 PRINT CSV=T,LIST=Name,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,PRINTO=1
ENDLOOP ;hov loop
;----------------------------------------------------------------------------
LOOP BIKE=1,DBI.3.NUMRECORDS  ;loop through all bike records
 x = DBIReadRecord(3,BIKE)          ;read each individual record

 IF(BIKE=1) PRINT LIST='County to County Trips - Walk/Bike',PRINTO=1
 IF(BIKE=1) PRINT LIST='County,Fulton,DeKalb,Cobb,Gwinnett,Rockdale,Henry,Clayton,Fayette,Douglas,Cherokee,Coweta,Forsyth,Paulding,Bartow,Carroll,Spalding,Newton,Walton,Barrow,Hall,Dawson',PRINTO=1
 IF(DI.3.COUNTY=1)  NAME = 'Fulton'
 IF(DI.3.COUNTY=2)  NAME = 'DeKalb'
 IF(DI.3.COUNTY=3)  NAME = 'Cobb'
 IF(DI.3.COUNTY=4)  NAME = 'Gwinnett'
 IF(DI.3.COUNTY=5)  NAME = 'Rockdale'
 IF(DI.3.COUNTY=6)  NAME = 'Henry'
 IF(DI.3.COUNTY=7)  NAME = 'Clayton'
 IF(DI.3.COUNTY=8)  NAME = 'Fayette'
 IF(DI.3.COUNTY=9)  NAME = 'Douglas'
 IF(DI.3.COUNTY=10) NAME = 'Cherokee'
 IF(DI.3.COUNTY=11) NAME = 'Coweta'
 IF(DI.3.COUNTY=12) NAME = 'Forsyth'
 IF(DI.3.COUNTY=13) NAME = 'Paulding'
 IF(DI.3.COUNTY=14) NAME = 'Bartow'
 IF(DI.3.COUNTY=15) NAME = 'Carroll'
 IF(DI.3.COUNTY=16) NAME = 'Spalding'
 IF(DI.3.COUNTY=17) NAME = 'Newton'
 IF(DI.3.COUNTY=18) NAME = 'Walton'
 IF(DI.3.COUNTY=19) NAME = 'Barrow'
 IF(DI.3.COUNTY=20) NAME = 'Hall'
 IF(DI.3.COUNTY=21) NAME = 'Dawson'

 C1 = MAX(DI.3.C1,0)
 C2 = MAX(DI.3.C2,0)
 C3 = MAX(DI.3.C3,0)
 C4 = MAX(DI.3.C4,0)
 C5 = MAX(DI.3.C5,0)
 C6 = MAX(DI.3.C6,0)
 C7 = MAX(DI.3.C7,0)
 C8 = MAX(DI.3.C8,0)
 C9 = MAX(DI.3.C9,0)
 C10 = MAX(DI.3.C10,0)
 C11 = MAX(DI.3.C11,0)
 C12 = MAX(DI.3.C12,0)
 C13 = MAX(DI.3.C13,0)
 C14 = MAX(DI.3.C14,0)
 C15 = MAX(DI.3.C15,0)
 C16 = MAX(DI.3.C16,0)
 C17 = MAX(DI.3.C17,0)
 C18 = MAX(DI.3.C18,0)
 C19 = MAX(DI.3.C19,0)
 C20 = MAX(DI.3.C20,0)
 C21 = MAX(DI.3.C21,0)

 PRINT CSV=T,LIST=Name,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,PRINTO=1
ENDLOOP ;bike loop
;----------------------------------------------------------------------------
LOOP TRN=1,DBI.4.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(4,TRN)          ;read each individual record

 IF(TRN=1) PRINT LIST='County to County Trips - Transit',PRINTO=1
 IF(TRN=1) PRINT LIST='County,Fulton,DeKalb,Cobb,Gwinnett,Rockdale,Henry,Clayton,Fayette,Douglas,Cherokee,Coweta,Forsyth,Paulding,Bartow,Carroll,Spalding,Newton,Walton,Barrow,Hall,Dawson',PRINTO=1
 IF(DI.4.COUNTY=1)  NAME = 'Fulton'
 IF(DI.4.COUNTY=2)  NAME = 'DeKalb'
 IF(DI.4.COUNTY=3)  NAME = 'Cobb'
 IF(DI.4.COUNTY=4)  NAME = 'Gwinnett'
 IF(DI.4.COUNTY=5)  NAME = 'Rockdale'
 IF(DI.4.COUNTY=6)  NAME = 'Henry'
 IF(DI.4.COUNTY=7)  NAME = 'Clayton'
 IF(DI.4.COUNTY=8)  NAME = 'Fayette'
 IF(DI.4.COUNTY=9)  NAME = 'Douglas'
 IF(DI.4.COUNTY=10) NAME = 'Cherokee'
 IF(DI.4.COUNTY=11) NAME = 'Coweta'
 IF(DI.4.COUNTY=12) NAME = 'Forsyth'
 IF(DI.4.COUNTY=13) NAME = 'Paulding'
 IF(DI.4.COUNTY=14) NAME = 'Bartow'
 IF(DI.4.COUNTY=15) NAME = 'Carroll'
 IF(DI.4.COUNTY=16) NAME = 'Spalding'
 IF(DI.4.COUNTY=17) NAME = 'Newton'
 IF(DI.4.COUNTY=18) NAME = 'Walton'
 IF(DI.4.COUNTY=19) NAME = 'Barrow'
 IF(DI.4.COUNTY=20) NAME = 'Hall'
 IF(DI.4.COUNTY=21) NAME = 'Dawson'

 C1 = MAX(DI.4.C1,0)
 C2 = MAX(DI.4.C2,0)
 C3 = MAX(DI.4.C3,0)
 C4 = MAX(DI.4.C4,0)
 C5 = MAX(DI.4.C5,0)
 C6 = MAX(DI.4.C6,0)
 C7 = MAX(DI.4.C7,0)
 C8 = MAX(DI.4.C8,0)
 C9 = MAX(DI.4.C9,0)
 C10 = MAX(DI.4.C10,0)
 C11 = MAX(DI.4.C11,0)
 C12 = MAX(DI.4.C12,0)
 C13 = MAX(DI.4.C13,0)
 C14 = MAX(DI.4.C14,0)
 C15 = MAX(DI.4.C15,0)
 C16 = MAX(DI.4.C16,0)
 C17 = MAX(DI.4.C17,0)
 C18 = MAX(DI.4.C18,0)
 C19 = MAX(DI.4.C19,0)
 C20 = MAX(DI.4.C20,0)
 C21 = MAX(DI.4.C21,0)

 PRINT CSV=T,LIST=Name,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,PRINTO=1
ENDLOOP ;trn loop
;----------------------------------------------------------------------------
LOOP SCH=1,DBI.2.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(5,SCH)          ;read each individual record

 IF(SCH=1) PRINT LIST='County to County Trips - School Bus',PRINTO=1
 IF(SCH=1) PRINT LIST='County,Fulton,DeKalb,Cobb,Gwinnett,Rockdale,Henry,Clayton,Fayette,Douglas,Cherokee,Coweta,Forsyth,Paulding,Bartow,Carroll,Spalding,Newton,Walton,Barrow,Hall,Dawson',PRINTO=1
 IF(DI.5.COUNTY=1)  NAME = 'Fulton'
 IF(DI.5.COUNTY=2)  NAME = 'DeKalb'
 IF(DI.5.COUNTY=3)  NAME = 'Cobb'
 IF(DI.5.COUNTY=4)  NAME = 'Gwinnett'
 IF(DI.5.COUNTY=5)  NAME = 'Rockdale'
 IF(DI.5.COUNTY=6)  NAME = 'Henry'
 IF(DI.5.COUNTY=7)  NAME = 'Clayton'
 IF(DI.5.COUNTY=8)  NAME = 'Fayette'
 IF(DI.5.COUNTY=9)  NAME = 'Douglas'
 IF(DI.5.COUNTY=10) NAME = 'Cherokee'
 IF(DI.5.COUNTY=11) NAME = 'Coweta'
 IF(DI.5.COUNTY=12) NAME = 'Forsyth'
 IF(DI.5.COUNTY=13) NAME = 'Paulding'
 IF(DI.5.COUNTY=14) NAME = 'Bartow'
 IF(DI.5.COUNTY=15) NAME = 'Carroll'
 IF(DI.5.COUNTY=16) NAME = 'Spalding'
 IF(DI.5.COUNTY=17) NAME = 'Newton'
 IF(DI.5.COUNTY=18) NAME = 'Walton'
 IF(DI.5.COUNTY=19) NAME = 'Barrow'
 IF(DI.5.COUNTY=20) NAME = 'Hall'
 IF(DI.5.COUNTY=21) NAME = 'Dawson'

 C1 = MAX(DI.5.C1,0)
 C2 = MAX(DI.5.C2,0)
 C3 = MAX(DI.5.C3,0)
 C4 = MAX(DI.5.C4,0)
 C5 = MAX(DI.5.C5,0)
 C6 = MAX(DI.5.C6,0)
 C7 = MAX(DI.5.C7,0)
 C8 = MAX(DI.5.C8,0)
 C9 = MAX(DI.5.C9,0)
 C10 = MAX(DI.5.C10,0)
 C11 = MAX(DI.5.C11,0)
 C12 = MAX(DI.5.C12,0)
 C13 = MAX(DI.5.C13,0)
 C14 = MAX(DI.5.C14,0)
 C15 = MAX(DI.5.C15,0)
 C16 = MAX(DI.5.C16,0)
 C17 = MAX(DI.5.C17,0)
 C18 = MAX(DI.5.C18,0)
 C19 = MAX(DI.5.C19,0)
 C20 = MAX(DI.5.C20,0)
 C21 = MAX(DI.5.C21,0)

 PRINT CSV=T,LIST=Name,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,PRINTO=1
ENDLOOP ;sch loop
;----------------------------------------------------------------------------
LOOP ALL=1,DBI.6.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(6,ALL)          ;read each individual record

 IF(ALL=1) PRINT LIST='County to County Trips - ALL',PRINTO=1
 IF(ALL=1) PRINT LIST='County,Fulton,DeKalb,Cobb,Gwinnett,Rockdale,Henry,Clayton,Fayette,Douglas,Cherokee,Coweta,Forsyth,Paulding,Bartow,Carroll,Spalding,Newton,Walton,Barrow,Hall,Dawson',PRINTO=1
 IF(DI.6.COUNTY=1)  NAME = 'Fulton'
 IF(DI.6.COUNTY=2)  NAME = 'DeKalb'
 IF(DI.6.COUNTY=3)  NAME = 'Cobb'
 IF(DI.6.COUNTY=4)  NAME = 'Gwinnett'
 IF(DI.6.COUNTY=5)  NAME = 'Rockdale'
 IF(DI.6.COUNTY=6)  NAME = 'Henry'
 IF(DI.6.COUNTY=7)  NAME = 'Clayton'
 IF(DI.6.COUNTY=8)  NAME = 'Fayette'
 IF(DI.6.COUNTY=9)  NAME = 'Douglas'
 IF(DI.6.COUNTY=10) NAME = 'Cherokee'
 IF(DI.6.COUNTY=11) NAME = 'Coweta'
 IF(DI.6.COUNTY=12) NAME = 'Forsyth'
 IF(DI.6.COUNTY=13) NAME = 'Paulding'
 IF(DI.6.COUNTY=14) NAME = 'Bartow'
 IF(DI.6.COUNTY=15) NAME = 'Carroll'
 IF(DI.6.COUNTY=16) NAME = 'Spalding'
 IF(DI.6.COUNTY=17) NAME = 'Newton'
 IF(DI.6.COUNTY=18) NAME = 'Walton'
 IF(DI.6.COUNTY=19) NAME = 'Barrow'
 IF(DI.6.COUNTY=20) NAME = 'Hall'
 IF(DI.6.COUNTY=21) NAME = 'Dawson'

 C1 = MAX(DI.6.C1,0)
 C2 = MAX(DI.6.C2,0)
 C3 = MAX(DI.6.C3,0)
 C4 = MAX(DI.6.C4,0)
 C5 = MAX(DI.6.C5,0)
 C6 = MAX(DI.6.C6,0)
 C7 = MAX(DI.6.C7,0)
 C8 = MAX(DI.6.C8,0)
 C9 = MAX(DI.6.C9,0)
 C10 = MAX(DI.6.C10,0)
 C11 = MAX(DI.6.C11,0)
 C12 = MAX(DI.6.C12,0)
 C13 = MAX(DI.6.C13,0)
 C14 = MAX(DI.6.C14,0)
 C15 = MAX(DI.6.C15,0)
 C16 = MAX(DI.6.C16,0)
 C17 = MAX(DI.6.C17,0)
 C18 = MAX(DI.6.C18,0)
 C19 = MAX(DI.6.C19,0)
 C20 = MAX(DI.6.C20,0)
 C21 = MAX(DI.6.C21,0)

 PRINT CSV=T,LIST=Name,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,PRINTO=1
ENDLOOP ;all loop
ENDRUN
ENDLOOP
;==================================================================================
;Build super district to super district CSV
;loop through trips, work tours, and non-work
LOOP N=1,3
IF(N=1) TYPE='_Trips'
IF(N=2) TYPE='_WorkTours'
IF(N=3) TYPE='_NonWorkTours'

;create SuperDistrict to SuperDistrict CSV
RUN PGM=MATRIX
DBI[1]=Eval\SuperDistrictToSuperDistrictSOV@TYPE@.TMP,DELIMITER=',' SuperDist=1,S1=3,S2=4,S3=5,S4=6,S5=7,S6=8,S7=9,S8=10,S9=11,S10=12,
                                                                                S11=13,S12=14,S13=15,S14=16,S15=17,S16=18,S17=19,S18=20,S19=21,S20=22,
                                                                                S21=23,S22=24,S23=25,S24=26,S25=27,S26=28,S27=29,S28=30,S29=31,S30=32,
                                                                                S31=33,S32=34,S33=35,S34=36,S35=37,S36=38,S37=39,S38=40,S39=41,S40=42,
                                                                                S41=43,S42=44,S43=45,S44=46,S45=47,S46=48,S47=49,S48=50,S49=51,S50=52,
                                                                                S51=53,S52=54,S53=55,S54=56,S55=57,S56=58,S57=59,S58=60,S59=61,S60=62,
                                                                                S61=63,S62=64,S63=65,S64=66,S65=67,S66=68,S67=69,S68=70,S69=71,S70=72,
                                                                                S71=73,S72=74,S73=75,S74=76,S75=77,S76=78,S77=79,S78=80
DBI[2]=Eval\SuperDistrictToSuperDistrictHOV@TYPE@.TMP,DELIMITER=',' SuperDist=1,S1=3,S2=4,S3=5,S4=6,S5=7,S6=8,S7=9,S8=10,S9=11,S10=12,
                                                                                S11=13,S12=14,S13=15,S14=16,S15=17,S16=18,S17=19,S18=20,S19=21,S20=22,
                                                                                S21=23,S22=24,S23=25,S24=26,S25=27,S26=28,S27=29,S28=30,S29=31,S30=32,
                                                                                S31=33,S32=34,S33=35,S34=36,S35=37,S36=38,S37=39,S38=40,S39=41,S40=42,
                                                                                S41=43,S42=44,S43=45,S44=46,S45=47,S46=48,S47=49,S48=50,S49=51,S50=52,
                                                                                S51=53,S52=54,S53=55,S54=56,S55=57,S56=58,S57=59,S58=60,S59=61,S60=62,
                                                                                S61=63,S62=64,S63=65,S64=66,S65=67,S66=68,S67=69,S68=70,S69=71,S70=72,
                                                                                S71=73,S72=74,S73=75,S74=76,S75=77,S76=78,S77=79,S78=80
DBI[3]=Eval\SuperDistrictToSuperDistrictBikePed@TYPE@.TMP,DELIMITER=',' SuperDist=1,S1=3,S2=4,S3=5,S4=6,S5=7,S6=8,S7=9,S8=10,S9=11,S10=12,
                                                                                    S11=13,S12=14,S13=15,S14=16,S15=17,S16=18,S17=19,S18=20,S19=21,S20=22,
                                                                                    S21=23,S22=24,S23=25,S24=26,S25=27,S26=28,S27=29,S28=30,S29=31,S30=32,
                                                                                    S31=33,S32=34,S33=35,S34=36,S35=37,S36=38,S37=39,S38=40,S39=41,S40=42,
                                                                                    S41=43,S42=44,S43=45,S44=46,S45=47,S46=48,S47=49,S48=50,S49=51,S50=52,
                                                                                    S51=53,S52=54,S53=55,S54=56,S55=57,S56=58,S57=59,S58=60,S59=61,S60=62,
                                                                                    S61=63,S62=64,S63=65,S64=66,S65=67,S66=68,S67=69,S68=70,S69=71,S70=72,
                                                                                   S71=73,S72=74,S73=75,S74=76,S75=77,S76=78,S77=79,S78=80
DBI[4]=Eval\SuperDistrictToSuperDistrictTransit@TYPE@.TMP,DELIMITER=',' SuperDist=1,S1=3,S2=4,S3=5,S4=6,S5=7,S6=8,S7=9,S8=10,S9=11,S10=12,
                                                                                    S11=13,S12=14,S13=15,S14=16,S15=17,S16=18,S17=19,S18=20,S19=21,S20=22,
                                                                                    S21=23,S22=24,S23=25,S24=26,S25=27,S26=28,S27=29,S28=30,S29=31,S30=32,
                                                                                    S31=33,S32=34,S33=35,S34=36,S35=37,S36=38,S37=39,S38=40,S39=41,S40=42,
                                                                                    S41=43,S42=44,S43=45,S44=46,S45=47,S46=48,S47=49,S48=50,S49=51,S50=52,
                                                                                    S51=53,S52=54,S53=55,S54=56,S55=57,S56=58,S57=59,S58=60,S59=61,S60=62,
                                                                                    S61=63,S62=64,S63=65,S64=66,S65=67,S66=68,S67=69,S68=70,S69=71,S70=72,
                                                                                    S71=73,S72=74,S73=75,S74=76,S75=77,S76=78,S77=79,S78=80
DBI[5]=Eval\SuperDistrictToSuperDistrictSchoolBus@TYPE@.TMP,DELIMITER=',' SuperDist=1,S1=3,S2=4,S3=5,S4=6,S5=7,S6=8,S7=9,S8=10,S9=11,S10=12,
                                                                                      S11=13,S12=14,S13=15,S14=16,S15=17,S16=18,S17=19,S18=20,S19=21,S20=22,
                                                                                      S21=23,S22=24,S23=25,S24=26,S25=27,S26=28,S27=29,S28=30,S29=31,S30=32,
                                                                                      S31=33,S32=34,S33=35,S34=36,S35=37,S36=38,S37=39,S38=40,S39=41,S40=42,
                                                                                      S41=43,S42=44,S43=45,S44=46,S45=47,S46=48,S47=49,S48=50,S49=51,S50=52,
                                                                                      S51=53,S52=54,S53=55,S54=56,S55=57,S56=58,S57=59,S58=60,S59=61,S60=62,
                                                                                      S61=63,S62=64,S63=65,S64=66,S65=67,S66=68,S67=69,S68=70,S69=71,S70=72,
                                                                                      S71=73,S72=74,S73=75,S74=76,S75=77,S76=78,S77=79,S78=80
DBI[6]=Eval\SuperDistrictToSuperDistrictALL@TYPE@.TMP,DELIMITER=',' SuperDist=1,S1=3,S2=4,S3=5,S4=6,S5=7,S6=8,S7=9,S8=10,S9=11,S10=12,
                                                                                S11=13,S12=14,S13=15,S14=16,S15=17,S16=18,S17=19,S18=20,S19=21,S20=22,
                                                                                S21=23,S22=24,S23=25,S24=26,S25=27,S26=28,S27=29,S28=30,S29=31,S30=32,
                                                                                S31=33,S32=34,S33=35,S34=36,S35=37,S36=38,S37=39,S38=40,S39=41,S40=42,
                                                                                S41=43,S42=44,S43=45,S44=46,S45=47,S46=48,S47=49,S48=50,S49=51,S50=52,
                                                                                S51=53,S52=54,S53=55,S54=56,S55=57,S56=58,S57=59,S58=60,S59=61,S60=62,
                                                                                S61=63,S62=64,S63=65,S64=66,S65=67,S66=68,S67=69,S68=70,S69=71,S70=72,
                                                                                S71=73,S72=74,S73=75,S74=76,S75=77,S76=78,S77=79,S78=80
                                                                                
PRINTO[1]=Eval\SuperDistrictToSuperDistrict@TYPE@.CSV
ZONES=1
;----------------------------------------------------------------------------
LOOP SOV=1,DBI.1.NUMRECORDS  ;loop through all sov records
 x = DBIReadRecord(1,SOV)          ;read each individual record

 IF(SOV=1) PRINT LIST='SuperDistrict to SuperDistrict - SOV',PRINTO=1
 IF(SOV=1) PRINT LIST='Super Dist,N Fulton,Roswell,Sandy Springs,Buckhead,NW Atlanta,NE Atlanta,SW Atlanta,CBD Atlanta,SE Atlanta,S Fulton,Tri-Cities,Shannon,W Cherokee,N Cherokee,E Cent Cherokee,Woodstock,Airport,NE Clayton,Riverdale,S Clayton,NW Cobb,NE Cobb,SW Cobb,Marietta,Cumberland,S Cobb,Chamblee,NW DeKalb,NE DeKalb,Atlanta-DeKalb,Decatur,SW DeKalb,SE DeKalb,S DeKalb,W Douglas,E Douglas,W Fayette,E Fayette,N Gwinnett,Cent Gwinnett,E Gwinnett,Norcross,Lilburn,Snellville,N Henry,E Henry,S Henry,S Rockdale,N Rockdale,N Barrow,S Barrow,NW Bartow,NE Bartow,SW Bartow,Cartersville,NE Carroll,W Carroll,Central Carroll,SE Carroll,W Coweta,N Coweta,S Coweta,SE Coweta,N Forsyth,Cumming,S Forsyth,N Hall,Gainesville,S Hall,W Newton,E Newton,N Paulding,W Paulding,E Paulding,N Spalding,S Spalding,W Walton,E Walton',PRINTO=1

IF(DI.1.SuperDist=1)  NAME = 'N Fulton'
IF(DI.1.SuperDist=2)  NAME = 'Roswell'
IF(DI.1.SuperDist=3)  NAME = 'Sandy Springs'
IF(DI.1.SuperDist=4)  NAME = 'Buckhead'
IF(DI.1.SuperDist=5)  NAME = 'NW Atlanta'
IF(DI.1.SuperDist=6)  NAME = 'NE Atlanta'
IF(DI.1.SuperDist=7)  NAME = 'SW Atlanta'
IF(DI.1.SuperDist=8)  NAME = 'CBD Atlanta'
IF(DI.1.SuperDist=9)  NAME = 'SE Atlanta'
IF(DI.1.SuperDist=10) NAME = 'S Fulton'
IF(DI.1.SuperDist=11) NAME = 'TriCities'
IF(DI.1.SuperDist=12) NAME = 'Shannon'
IF(DI.1.SuperDist=13) NAME = 'W Cherokee'
IF(DI.1.SuperDist=14) NAME = 'N Cherokee'
IF(DI.1.SuperDist=15) NAME = 'E Cent Cherokee'
IF(DI.1.SuperDist=16) NAME = 'Woodstock'
IF(DI.1.SuperDist=17) NAME = 'Airport'
IF(DI.1.SuperDist=18) NAME = 'NE Clayton'
IF(DI.1.SuperDist=19) NAME = 'Riverdale'
IF(DI.1.SuperDist=20) NAME = 'S Clayton'
IF(DI.1.SuperDist=21) Name= 'NW Cobb'
IF(DI.1.SuperDist=22) Name= 'NE Cobb'
IF(DI.1.SuperDist=23) Name= 'SW Cobb'
IF(DI.1.SuperDist=24) Name= 'Marietta'
IF(DI.1.SuperDist=25) Name= 'Cumberland'
IF(DI.1.SuperDist=26) Name= 'S Cobb'
IF(DI.1.SuperDist=27) Name= 'Chamblee'
IF(DI.1.SuperDist=28) Name= 'NW DeKalb'
IF(DI.1.SuperDist=29) Name= 'NE DeKalb'
IF(DI.1.SuperDist=30) Name= 'Atlanta-DeKalb'
IF(DI.1.SuperDist=31) Name= 'Decatur'
IF(DI.1.SuperDist=32) Name= 'SW DeKalb'
IF(DI.1.SuperDist=33) Name= 'SE DeKalb'
IF(DI.1.SuperDist=34) Name= 'S DeKalb'
IF(DI.1.SuperDist=35) Name= 'W Douglas'
IF(DI.1.SuperDist=36) Name= 'E Douglas'
IF(DI.1.SuperDist=37) Name= 'W Fayette'
IF(DI.1.SuperDist=38) Name= 'E Fayette'
IF(DI.1.SuperDist=39) Name= 'N Gwinnett'
IF(DI.1.SuperDist=40) Name= 'Cent Gwinnett'
IF(DI.1.SuperDist=41) Name= 'E Gwinnett'
IF(DI.1.SuperDist=42) Name= 'Norcross'
IF(DI.1.SuperDist=43) Name= 'Lilburn'
IF(DI.1.SuperDist=44) Name= 'Snellville'
IF(DI.1.SuperDist=45) Name= 'N Henry'
IF(DI.1.SuperDist=46) Name= 'E Henry'
IF(DI.1.SuperDist=47) Name= 'S Henry'
IF(DI.1.SuperDist=48) Name= 'S Rockdale'
IF(DI.1.SuperDist=49) Name= 'N Rockdale'
IF(DI.1.SuperDist=50) Name= 'N Barrow'
IF(DI.1.SuperDist=51) Name= 'S Barrow'
IF(DI.1.SuperDist=52) Name= 'NW Bartow'
IF(DI.1.SuperDist=53) Name= 'NE Bartow'
IF(DI.1.SuperDist=54) Name= 'SW Bartow'
IF(DI.1.SuperDist=55) Name= 'Cartersville'
IF(DI.1.SuperDist=56) Name= 'NE Carroll'
IF(DI.1.SuperDist=57) Name= 'W Carroll'
IF(DI.1.SuperDist=58) Name= 'Central Carroll'
IF(DI.1.SuperDist=59) Name= 'SE Carroll'
IF(DI.1.SuperDist=60) Name= 'W Coweta'
IF(DI.1.SuperDist=61) Name= 'N Coweta'
IF(DI.1.SuperDist=62) Name= 'S Coweta'
IF(DI.1.SuperDist=63) Name= 'SE Coweta'
IF(DI.1.SuperDist=64) Name= 'N Forsyth'
IF(DI.1.SuperDist=65) Name= 'Cumming'
IF(DI.1.SuperDist=66) Name= 'S Forsyth'
IF(DI.1.SuperDist=67) Name= 'N Hall'
IF(DI.1.SuperDist=68) Name= 'Gainesville'
IF(DI.1.SuperDist=69) Name= 'S Hall'
IF(DI.1.SuperDist=70) Name= 'W Newton'
IF(DI.1.SuperDist=71) Name= 'E Newton'
IF(DI.1.SuperDist=72) Name= 'N Paulding'
IF(DI.1.SuperDist=73) Name= 'W Paulding'
IF(DI.1.SuperDist=74) Name= 'E Paulding'
IF(DI.1.SuperDist=75) Name= 'N Spalding'
IF(DI.1.SuperDist=76) Name= 'S Spalding'
IF(DI.1.SuperDist=77) Name= 'W Walton'
IF(DI.1.SuperDist=78) Name= 'E Walton'
 S1 = MAX(DI.1.S1,0)
 S2 = MAX(DI.1.S2,0)
 S3 = MAX(DI.1.S3,0)
 S4 = MAX(DI.1.S4,0)
 S5 = MAX(DI.1.S5,0)
 S6 = MAX(DI.1.S6,0)
 S7 = MAX(DI.1.S7,0)
 S8 = MAX(DI.1.S8,0)
 S9 = MAX(DI.1.S9,0)
 S10 = MAX(DI.1.S10,0)
 S11 = MAX(DI.1.S11,0)
 S12 = MAX(DI.1.S12,0)
 S13 = MAX(DI.1.S13,0)
 S14 = MAX(DI.1.S14,0)
 S15 = MAX(DI.1.S15,0)
 S16 = MAX(DI.1.S16,0)
 S17 = MAX(DI.1.S17,0)
 S18 = MAX(DI.1.S18,0)
 S19 = MAX(DI.1.S19,0)
 S20 = MAX(DI.1.S20,0)
 S21 = MAX(DI.1.S21,0)
 S22 = MAX(DI.1.S22,0)
 S23 = MAX(DI.1.S23,0)
 S24 = MAX(DI.1.S24,0)
 S25 = MAX(DI.1.S25,0)
 S26 = MAX(DI.1.S26,0)
 S27 = MAX(DI.1.S27,0)
 S28 = MAX(DI.1.S28,0)
 S29 = MAX(DI.1.S29,0)
 S30 = MAX(DI.1.S30,0)
 S31 = MAX(DI.1.S31,0)
 S32 = MAX(DI.1.S32,0)
 S33 = MAX(DI.1.S33,0)
 S34 = MAX(DI.1.S34,0)
 S35 = MAX(DI.1.S35,0)
 S36 = MAX(DI.1.S36,0)
 S37 = MAX(DI.1.S37,0)
 S38 = MAX(DI.1.S38,0)
 S39 = MAX(DI.1.S39,0)
 S40 = MAX(DI.1.S40,0)
 S41 = MAX(DI.1.S41,0)
 S42 = MAX(DI.1.S42,0)
 S43 = MAX(DI.1.S43,0)
 S44 = MAX(DI.1.S44,0)
 S45 = MAX(DI.1.S45,0)
 S46 = MAX(DI.1.S46,0)
 S47 = MAX(DI.1.S47,0)
 S48 = MAX(DI.1.S48,0)
 S49 = MAX(DI.1.S49,0)
 S50 = MAX(DI.1.S50,0)
 S51 = MAX(DI.1.S51,0)
 S52 = MAX(DI.1.S52,0)
 S53 = MAX(DI.1.S53,0)
 S54 = MAX(DI.1.S54,0)
 S55 = MAX(DI.1.S55,0)
 S56 = MAX(DI.1.S56,0)
 S57 = MAX(DI.1.S57,0)
 S58 = MAX(DI.1.S58,0)
 S59 = MAX(DI.1.S59,0)
 S60 = MAX(DI.1.S60,0)
 S61 = MAX(DI.1.S61,0)
 S62 = MAX(DI.1.S62,0)
 S63 = MAX(DI.1.S63,0)
 S64 = MAX(DI.1.S64,0)
 S65 = MAX(DI.1.S65,0)
 S66 = MAX(DI.1.S66,0)
 S67 = MAX(DI.1.S67,0)
 S68 = MAX(DI.1.S68,0)
 S69 = MAX(DI.1.S69,0)
 S70 = MAX(DI.1.S70,0)
 S71 = MAX(DI.1.S71,0)
 S72 = MAX(DI.1.S72,0)
 S73 = MAX(DI.1.S73,0)
 S74 = MAX(DI.1.S74,0)
 S75 = MAX(DI.1.S75,0)
 S76 = MAX(DI.1.S76,0)
 S77 = MAX(DI.1.S77,0)
 S78 = MAX(DI.1.S78,0)

PRINT CSV=T,LIST=Name,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
                      S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40,
                      S41,S42,S43,S44,S45,S46,S47,S48,S49,S50,S51,S52,S53,S54,S55,S56,S57,S58,S59,S60,
                      S61,S62,S63,S64,S65,S66,S67,S68,S69,S70,S71,S72,S73,S74,S75,S76,S77,S78,PRINTO=1
ENDLOOP ;sov loop
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
LOOP HOV=1,DBI.2.NUMRECORDS  ;loop through all HOV records
 x = DBIReadRecord(2,HOV)          ;read each individual record

 IF(HOV=1) PRINT LIST='SuperDistrict to SuperDistrict - HOV',PRINTO=1
 IF(HOV=1) PRINT LIST='Super Dist,N Fulton,Roswell,Sandy Springs,Buckhead,NW Atlanta,NE Atlanta,SW Atlanta,CBD Atlanta,SE Atlanta,S Fulton,Tri-Cities,Shannon,W Cherokee,N Cherokee,E Cent Cherokee,Woodstock,Airport,NE Clayton,Riverdale,S Clayton,NW Cobb,NE Cobb,SW Cobb,Marietta,Cumberland,S Cobb,Chamblee,NW DeKalb,NE DeKalb,Atlanta-DeKalb,Decatur,SW DeKalb,SE DeKalb,S DeKalb,W Douglas,E Douglas,W Fayette,E Fayette,N Gwinnett,Cent Gwinnett,E Gwinnett,Norcross,Lilburn,Snellville,N Henry,E Henry,S Henry,S Rockdale,N Rockdale,N Barrow,S Barrow,NW Bartow,NE Bartow,SW Bartow,Cartersville,NE Carroll,W Carroll,Central Carroll,SE Carroll,W Coweta,N Coweta,S Coweta,SE Coweta,N Forsyth,Cumming,S Forsyth,N Hall,Gainesville,S Hall,W Newton,E Newton,N Paulding,W Paulding,E Paulding,N Spalding,S Spalding,W Walton,E Walton',PRINTO=1

IF(DI.2.SuperDist=1)  NAME = 'N Fulton'
IF(DI.2.SuperDist=2)  NAME = 'Roswell'
IF(DI.2.SuperDist=3)  NAME = 'Sandy Springs'
IF(DI.2.SuperDist=4)  NAME = 'Buckhead'
IF(DI.2.SuperDist=5)  NAME = 'NW Atlanta'
IF(DI.2.SuperDist=6)  NAME = 'NE Atlanta'
IF(DI.2.SuperDist=7)  NAME = 'SW Atlanta'
IF(DI.2.SuperDist=8)  NAME = 'CBD Atlanta'
IF(DI.2.SuperDist=9)  NAME = 'SE Atlanta'
IF(DI.2.SuperDist=10) NAME = 'S Fulton'
IF(DI.2.SuperDist=11) NAME = 'TriCities'
IF(DI.2.SuperDist=12) NAME = 'Shannon'
IF(DI.2.SuperDist=13) NAME = 'W Cherokee'
IF(DI.2.SuperDist=14) NAME = 'N Cherokee'
IF(DI.2.SuperDist=15) NAME = 'E Cent Cherokee'
IF(DI.2.SuperDist=16) NAME = 'Woodstock'
IF(DI.2.SuperDist=17) NAME = 'Airport'
IF(DI.2.SuperDist=18) NAME = 'NE Clayton'
IF(DI.2.SuperDist=19) NAME = 'Riverdale'
IF(DI.2.SuperDist=20) NAME = 'S Clayton'
IF(DI.2.SuperDist=21) Name= 'NW Cobb'
IF(DI.2.SuperDist=22) Name= 'NE Cobb'
IF(DI.2.SuperDist=23) Name= 'SW Cobb'
IF(DI.2.SuperDist=24) Name= 'Marietta'
IF(DI.2.SuperDist=25) Name= 'Cumberland'
IF(DI.2.SuperDist=26) Name= 'S Cobb'
IF(DI.2.SuperDist=27) Name= 'Chamblee'
IF(DI.2.SuperDist=28) Name= 'NW DeKalb'
IF(DI.2.SuperDist=29) Name= 'NE DeKalb'
IF(DI.2.SuperDist=30) Name= 'Atlanta-DeKalb'
IF(DI.2.SuperDist=31) Name= 'Decatur'
IF(DI.2.SuperDist=32) Name= 'SW DeKalb'
IF(DI.2.SuperDist=33) Name= 'SE DeKalb'
IF(DI.2.SuperDist=34) Name= 'S DeKalb'
IF(DI.2.SuperDist=35) Name= 'W Douglas'
IF(DI.2.SuperDist=36) Name= 'E Douglas'
IF(DI.2.SuperDist=37) Name= 'W Fayette'
IF(DI.2.SuperDist=38) Name= 'E Fayette'
IF(DI.2.SuperDist=39) Name= 'N Gwinnett'
IF(DI.2.SuperDist=40) Name= 'Cent Gwinnett'
IF(DI.2.SuperDist=41) Name= 'E Gwinnett'
IF(DI.2.SuperDist=42) Name= 'Norcross'
IF(DI.2.SuperDist=43) Name= 'Lilburn'
IF(DI.2.SuperDist=44) Name= 'Snellville'
IF(DI.2.SuperDist=45) Name= 'N Henry'
IF(DI.2.SuperDist=46) Name= 'E Henry'
IF(DI.2.SuperDist=47) Name= 'S Henry'
IF(DI.2.SuperDist=48) Name= 'S Rockdale'
IF(DI.2.SuperDist=49) Name= 'N Rockdale'
IF(DI.2.SuperDist=50) Name= 'N Barrow'
IF(DI.2.SuperDist=51) Name= 'S Barrow'
IF(DI.2.SuperDist=52) Name= 'NW Bartow'
IF(DI.2.SuperDist=53) Name= 'NE Bartow'
IF(DI.2.SuperDist=54) Name= 'SW Bartow'
IF(DI.2.SuperDist=55) Name= 'Cartersville'
IF(DI.2.SuperDist=56) Name= 'NE Carroll'
IF(DI.2.SuperDist=57) Name= 'W Carroll'
IF(DI.2.SuperDist=58) Name= 'Central Carroll'
IF(DI.2.SuperDist=59) Name= 'SE Carroll'
IF(DI.2.SuperDist=60) Name= 'W Coweta'
IF(DI.2.SuperDist=61) Name= 'N Coweta'
IF(DI.2.SuperDist=62) Name= 'S Coweta'
IF(DI.2.SuperDist=63) Name= 'SE Coweta'
IF(DI.2.SuperDist=64) Name= 'N Forsyth'
IF(DI.2.SuperDist=65) Name= 'Cumming'
IF(DI.2.SuperDist=66) Name= 'S Forsyth'
IF(DI.2.SuperDist=67) Name= 'N Hall'
IF(DI.2.SuperDist=68) Name= 'Gainesville'
IF(DI.2.SuperDist=69) Name= 'S Hall'
IF(DI.2.SuperDist=70) Name= 'W Newton'
IF(DI.2.SuperDist=71) Name= 'E Newton'
IF(DI.2.SuperDist=72) Name= 'N Paulding'
IF(DI.2.SuperDist=73) Name= 'W Paulding'
IF(DI.2.SuperDist=74) Name= 'E Paulding'
IF(DI.2.SuperDist=75) Name= 'N Spalding'
IF(DI.2.SuperDist=76) Name= 'S Spalding'
IF(DI.2.SuperDist=77) Name= 'W Walton'
IF(DI.2.SuperDist=78) Name= 'E Walton'
 S1 = MAX(DI.2.S1,0)
 S2 = MAX(DI.2.S2,0)
 S3 = MAX(DI.2.S3,0)
 S4 = MAX(DI.2.S4,0)
 S5 = MAX(DI.2.S5,0)
 S6 = MAX(DI.2.S6,0)
 S7 = MAX(DI.2.S7,0)
 S8 = MAX(DI.2.S8,0)
 S9 = MAX(DI.2.S9,0)
 S10 = MAX(DI.2.S10,0)
 S11 = MAX(DI.2.S11,0)
 S12 = MAX(DI.2.S12,0)
 S13 = MAX(DI.2.S13,0)
 S14 = MAX(DI.2.S14,0)
 S15 = MAX(DI.2.S15,0)
 S16 = MAX(DI.2.S16,0)
 S17 = MAX(DI.2.S17,0)
 S18 = MAX(DI.2.S18,0)
 S19 = MAX(DI.2.S19,0)
 S20 = MAX(DI.2.S20,0)
 S21 = MAX(DI.2.S21,0)
 S22 = MAX(DI.2.S22,0)
 S23 = MAX(DI.2.S23,0)
 S24 = MAX(DI.2.S24,0)
 S25 = MAX(DI.2.S25,0)
 S26 = MAX(DI.2.S26,0)
 S27 = MAX(DI.2.S27,0)
 S28 = MAX(DI.2.S28,0)
 S29 = MAX(DI.2.S29,0)
 S30 = MAX(DI.2.S30,0)
 S31 = MAX(DI.2.S31,0)
 S32 = MAX(DI.2.S32,0)
 S33 = MAX(DI.2.S33,0)
 S34 = MAX(DI.2.S34,0)
 S35 = MAX(DI.2.S35,0)
 S36 = MAX(DI.2.S36,0)
 S37 = MAX(DI.2.S37,0)
 S38 = MAX(DI.2.S38,0)
 S39 = MAX(DI.2.S39,0)
 S40 = MAX(DI.2.S40,0)
 S41 = MAX(DI.2.S41,0)
 S42 = MAX(DI.2.S42,0)
 S43 = MAX(DI.2.S43,0)
 S44 = MAX(DI.2.S44,0)
 S45 = MAX(DI.2.S45,0)
 S46 = MAX(DI.2.S46,0)
 S47 = MAX(DI.2.S47,0)
 S48 = MAX(DI.2.S48,0)
 S49 = MAX(DI.2.S49,0)
 S50 = MAX(DI.2.S50,0)
 S51 = MAX(DI.2.S51,0)
 S52 = MAX(DI.2.S52,0)
 S53 = MAX(DI.2.S53,0)
 S54 = MAX(DI.2.S54,0)
 S55 = MAX(DI.2.S55,0)
 S56 = MAX(DI.2.S56,0)
 S57 = MAX(DI.2.S57,0)
 S58 = MAX(DI.2.S58,0)
 S59 = MAX(DI.2.S59,0)
 S60 = MAX(DI.2.S60,0)
 S61 = MAX(DI.2.S61,0)
 S62 = MAX(DI.2.S62,0)
 S63 = MAX(DI.2.S63,0)
 S64 = MAX(DI.2.S64,0)
 S65 = MAX(DI.2.S65,0)
 S66 = MAX(DI.2.S66,0)
 S67 = MAX(DI.2.S67,0)
 S68 = MAX(DI.2.S68,0)
 S69 = MAX(DI.2.S69,0)
 S70 = MAX(DI.2.S70,0)
 S71 = MAX(DI.2.S71,0)
 S72 = MAX(DI.2.S72,0)
 S73 = MAX(DI.2.S73,0)
 S74 = MAX(DI.2.S74,0)
 S75 = MAX(DI.2.S75,0)
 S76 = MAX(DI.2.S76,0)
 S77 = MAX(DI.2.S77,0)
 S78 = MAX(DI.2.S78,0)

PRINT CSV=T,LIST=Name,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
                      S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40,
                      S41,S42,S43,S44,S45,S46,S47,S48,S49,S50,S51,S52,S53,S54,S55,S56,S57,S58,S59,S60,
                      S61,S62,S63,S64,S65,S66,S67,S68,S69,S70,S71,S72,S73,S74,S75,S76,S77,S78,PRINTO=1
ENDLOOP ;HOV loop
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
LOOP BIKE=1,DBI.3.NUMRECORDS  ;loop through all BIKE records
 x = DBIReadRecord(3,BIKE)          ;read each individual record

 IF(BIKE=1) PRINT LIST='SuperDistrict to SuperDistrict - Walk/Bike',PRINTO=1
 IF(BIKE=1) PRINT LIST='Super Dist,N Fulton,Roswell,Sandy Springs,Buckhead,NW Atlanta,NE Atlanta,SW Atlanta,CBD Atlanta,SE Atlanta,S Fulton,Tri-Cities,Shannon,W Cherokee,N Cherokee,E Cent Cherokee,Woodstock,Airport,NE Clayton,Riverdale,S Clayton,NW Cobb,NE Cobb,SW Cobb,Marietta,Cumberland,S Cobb,Chamblee,NW DeKalb,NE DeKalb,Atlanta-DeKalb,Decatur,SW DeKalb,SE DeKalb,S DeKalb,W Douglas,E Douglas,W Fayette,E Fayette,N Gwinnett,Cent Gwinnett,E Gwinnett,Norcross,Lilburn,Snellville,N Henry,E Henry,S Henry,S Rockdale,N Rockdale,N Barrow,S Barrow,NW Bartow,NE Bartow,SW Bartow,Cartersville,NE Carroll,W Carroll,Central Carroll,SE Carroll,W Coweta,N Coweta,S Coweta,SE Coweta,N Forsyth,Cumming,S Forsyth,N Hall,Gainesville,S Hall,W Newton,E Newton,N Paulding,W Paulding,E Paulding,N Spalding,S Spalding,W Walton,E Walton',PRINTO=1

IF(DI.3.SuperDist=1)  NAME = 'N Fulton'
IF(DI.3.SuperDist=2)  NAME = 'Roswell'
IF(DI.3.SuperDist=3)  NAME = 'Sandy Springs'
IF(DI.3.SuperDist=4)  NAME = 'Buckhead'
IF(DI.3.SuperDist=5)  NAME = 'NW Atlanta'
IF(DI.3.SuperDist=6)  NAME = 'NE Atlanta'
IF(DI.3.SuperDist=7)  NAME = 'SW Atlanta'
IF(DI.3.SuperDist=8)  NAME = 'CBD Atlanta'
IF(DI.3.SuperDist=9)  NAME = 'SE Atlanta'
IF(DI.3.SuperDist=10) NAME = 'S Fulton'
IF(DI.3.SuperDist=11) NAME = 'TriCities'
IF(DI.3.SuperDist=12) NAME = 'Shannon'
IF(DI.3.SuperDist=13) NAME = 'W Cherokee'
IF(DI.3.SuperDist=14) NAME = 'N Cherokee'
IF(DI.3.SuperDist=15) NAME = 'E Cent Cherokee'
IF(DI.3.SuperDist=16) NAME = 'Woodstock'
IF(DI.3.SuperDist=17) NAME = 'Airport'
IF(DI.3.SuperDist=18) NAME = 'NE Clayton'
IF(DI.3.SuperDist=19) NAME = 'Riverdale'
IF(DI.3.SuperDist=20) NAME = 'S Clayton'
IF(DI.3.SuperDist=21) Name= 'NW Cobb'
IF(DI.3.SuperDist=22) Name= 'NE Cobb'
IF(DI.3.SuperDist=23) Name= 'SW Cobb'
IF(DI.3.SuperDist=24) Name= 'Marietta'
IF(DI.3.SuperDist=25) Name= 'Cumberland'
IF(DI.3.SuperDist=26) Name= 'S Cobb'
IF(DI.3.SuperDist=27) Name= 'Chamblee'
IF(DI.3.SuperDist=28) Name= 'NW DeKalb'
IF(DI.3.SuperDist=29) Name= 'NE DeKalb'
IF(DI.3.SuperDist=30) Name= 'Atlanta-DeKalb'
IF(DI.3.SuperDist=31) Name= 'Decatur'
IF(DI.3.SuperDist=32) Name= 'SW DeKalb'
IF(DI.3.SuperDist=33) Name= 'SE DeKalb'
IF(DI.3.SuperDist=34) Name= 'S DeKalb'
IF(DI.3.SuperDist=35) Name= 'W Douglas'
IF(DI.3.SuperDist=36) Name= 'E Douglas'
IF(DI.3.SuperDist=37) Name= 'W Fayette'
IF(DI.3.SuperDist=38) Name= 'E Fayette'
IF(DI.3.SuperDist=39) Name= 'N Gwinnett'
IF(DI.3.SuperDist=40) Name= 'Cent Gwinnett'
IF(DI.3.SuperDist=41) Name= 'E Gwinnett'
IF(DI.3.SuperDist=42) Name= 'Norcross'
IF(DI.3.SuperDist=43) Name= 'Lilburn'
IF(DI.3.SuperDist=44) Name= 'Snellville'
IF(DI.3.SuperDist=45) Name= 'N Henry'
IF(DI.3.SuperDist=46) Name= 'E Henry'
IF(DI.3.SuperDist=47) Name= 'S Henry'
IF(DI.3.SuperDist=48) Name= 'S Rockdale'
IF(DI.3.SuperDist=49) Name= 'N Rockdale'
IF(DI.3.SuperDist=50) Name= 'N Barrow'
IF(DI.3.SuperDist=51) Name= 'S Barrow'
IF(DI.3.SuperDist=52) Name= 'NW Bartow'
IF(DI.3.SuperDist=53) Name= 'NE Bartow'
IF(DI.3.SuperDist=54) Name= 'SW Bartow'
IF(DI.3.SuperDist=55) Name= 'Cartersville'
IF(DI.3.SuperDist=56) Name= 'NE Carroll'
IF(DI.3.SuperDist=57) Name= 'W Carroll'
IF(DI.3.SuperDist=58) Name= 'Central Carroll'
IF(DI.3.SuperDist=59) Name= 'SE Carroll'
IF(DI.3.SuperDist=60) Name= 'W Coweta'
IF(DI.3.SuperDist=61) Name= 'N Coweta'
IF(DI.3.SuperDist=62) Name= 'S Coweta'
IF(DI.3.SuperDist=63) Name= 'SE Coweta'
IF(DI.3.SuperDist=64) Name= 'N Forsyth'
IF(DI.3.SuperDist=65) Name= 'Cumming'
IF(DI.3.SuperDist=66) Name= 'S Forsyth'
IF(DI.3.SuperDist=67) Name= 'N Hall'
IF(DI.3.SuperDist=68) Name= 'Gainesville'
IF(DI.3.SuperDist=69) Name= 'S Hall'
IF(DI.3.SuperDist=70) Name= 'W Newton'
IF(DI.3.SuperDist=71) Name= 'E Newton'
IF(DI.3.SuperDist=72) Name= 'N Paulding'
IF(DI.3.SuperDist=73) Name= 'W Paulding'
IF(DI.3.SuperDist=74) Name= 'E Paulding'
IF(DI.3.SuperDist=75) Name= 'N Spalding'
IF(DI.3.SuperDist=76) Name= 'S Spalding'
IF(DI.3.SuperDist=77) Name= 'W Walton'
IF(DI.3.SuperDist=78) Name= 'E Walton'
 S1 = MAX(DI.3.S1,0)
 S2 = MAX(DI.3.S2,0)
 S3 = MAX(DI.3.S3,0)
 S4 = MAX(DI.3.S4,0)
 S5 = MAX(DI.3.S5,0)
 S6 = MAX(DI.3.S6,0)
 S7 = MAX(DI.3.S7,0)
 S8 = MAX(DI.3.S8,0)
 S9 = MAX(DI.3.S9,0)
 S10 = MAX(DI.3.S10,0)
 S11 = MAX(DI.3.S11,0)
 S12 = MAX(DI.3.S12,0)
 S13 = MAX(DI.3.S13,0)
 S14 = MAX(DI.3.S14,0)
 S15 = MAX(DI.3.S15,0)
 S16 = MAX(DI.3.S16,0)
 S17 = MAX(DI.3.S17,0)
 S18 = MAX(DI.3.S18,0)
 S19 = MAX(DI.3.S19,0)
 S20 = MAX(DI.3.S20,0)
 S21 = MAX(DI.3.S21,0)
 S22 = MAX(DI.3.S22,0)
 S23 = MAX(DI.3.S23,0)
 S24 = MAX(DI.3.S24,0)
 S25 = MAX(DI.3.S25,0)
 S26 = MAX(DI.3.S26,0)
 S27 = MAX(DI.3.S27,0)
 S28 = MAX(DI.3.S28,0)
 S29 = MAX(DI.3.S29,0)
 S30 = MAX(DI.3.S30,0)
 S31 = MAX(DI.3.S31,0)
 S32 = MAX(DI.3.S32,0)
 S33 = MAX(DI.3.S33,0)
 S34 = MAX(DI.3.S34,0)
 S35 = MAX(DI.3.S35,0)
 S36 = MAX(DI.3.S36,0)
 S37 = MAX(DI.3.S37,0)
 S38 = MAX(DI.3.S38,0)
 S39 = MAX(DI.3.S39,0)
 S40 = MAX(DI.3.S40,0)
 S41 = MAX(DI.3.S41,0)
 S42 = MAX(DI.3.S42,0)
 S43 = MAX(DI.3.S43,0)
 S44 = MAX(DI.3.S44,0)
 S45 = MAX(DI.3.S45,0)
 S46 = MAX(DI.3.S46,0)
 S47 = MAX(DI.3.S47,0)
 S48 = MAX(DI.3.S48,0)
 S49 = MAX(DI.3.S49,0)
 S50 = MAX(DI.3.S50,0)
 S51 = MAX(DI.3.S51,0)
 S52 = MAX(DI.3.S52,0)
 S53 = MAX(DI.3.S53,0)
 S54 = MAX(DI.3.S54,0)
 S55 = MAX(DI.3.S55,0)
 S56 = MAX(DI.3.S56,0)
 S57 = MAX(DI.3.S57,0)
 S58 = MAX(DI.3.S58,0)
 S59 = MAX(DI.3.S59,0)
 S60 = MAX(DI.3.S60,0)
 S61 = MAX(DI.3.S61,0)
 S62 = MAX(DI.3.S62,0)
 S63 = MAX(DI.3.S63,0)
 S64 = MAX(DI.3.S64,0)
 S65 = MAX(DI.3.S65,0)
 S66 = MAX(DI.3.S66,0)
 S67 = MAX(DI.3.S67,0)
 S68 = MAX(DI.3.S68,0)
 S69 = MAX(DI.3.S69,0)
 S70 = MAX(DI.3.S70,0)
 S71 = MAX(DI.3.S71,0)
 S72 = MAX(DI.3.S72,0)
 S73 = MAX(DI.3.S73,0)
 S74 = MAX(DI.3.S74,0)
 S75 = MAX(DI.3.S75,0)
 S76 = MAX(DI.3.S76,0)
 S77 = MAX(DI.3.S77,0)
 S78 = MAX(DI.3.S78,0)

PRINT CSV=T,LIST=Name,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
                      S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40,
                      S41,S42,S43,S44,S45,S46,S47,S48,S49,S50,S51,S52,S53,S54,S55,S56,S57,S58,S59,S60,
                      S61,S62,S63,S64,S65,S66,S67,S68,S69,S70,S71,S72,S73,S74,S75,S76,S77,S78,PRINTO=1
ENDLOOP ;BIKE loop
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
LOOP TRN=1,DBI.4.NUMRECORDS  ;loop through all TRN records
 x = DBIReadRecord(4,TRN)          ;read each individual record

 IF(TRN=1) PRINT LIST='SuperDistrict to SuperDistrict - Transit',PRINTO=1
 IF(TRN=1) PRINT LIST='Super Dist,N Fulton,Roswell,Sandy Springs,Buckhead,NW Atlanta,NE Atlanta,SW Atlanta,CBD Atlanta,SE Atlanta,S Fulton,Tri-Cities,Shannon,W Cherokee,N Cherokee,E Cent Cherokee,Woodstock,Airport,NE Clayton,Riverdale,S Clayton,NW Cobb,NE Cobb,SW Cobb,Marietta,Cumberland,S Cobb,Chamblee,NW DeKalb,NE DeKalb,Atlanta-DeKalb,Decatur,SW DeKalb,SE DeKalb,S DeKalb,W Douglas,E Douglas,W Fayette,E Fayette,N Gwinnett,Cent Gwinnett,E Gwinnett,Norcross,Lilburn,Snellville,N Henry,E Henry,S Henry,S Rockdale,N Rockdale,N Barrow,S Barrow,NW Bartow,NE Bartow,SW Bartow,Cartersville,NE Carroll,W Carroll,Central Carroll,SE Carroll,W Coweta,N Coweta,S Coweta,SE Coweta,N Forsyth,Cumming,S Forsyth,N Hall,Gainesville,S Hall,W Newton,E Newton,N Paulding,W Paulding,E Paulding,N Spalding,S Spalding,W Walton,E Walton',PRINTO=1

IF(DI.4.SuperDist=1)  NAME = 'N Fulton'
IF(DI.4.SuperDist=2)  NAME = 'Roswell'
IF(DI.4.SuperDist=3)  NAME = 'Sandy Springs'
IF(DI.4.SuperDist=4)  NAME = 'Buckhead'
IF(DI.4.SuperDist=5)  NAME = 'NW Atlanta'
IF(DI.4.SuperDist=6)  NAME = 'NE Atlanta'
IF(DI.4.SuperDist=7)  NAME = 'SW Atlanta'
IF(DI.4.SuperDist=8)  NAME = 'CBD Atlanta'
IF(DI.4.SuperDist=9)  NAME = 'SE Atlanta'
IF(DI.4.SuperDist=10) NAME = 'S Fulton'
IF(DI.4.SuperDist=11) NAME = 'TriCities'
IF(DI.4.SuperDist=12) NAME = 'Shannon'
IF(DI.4.SuperDist=13) NAME = 'W Cherokee'
IF(DI.4.SuperDist=14) NAME = 'N Cherokee'
IF(DI.4.SuperDist=15) NAME = 'E Cent Cherokee'
IF(DI.4.SuperDist=16) NAME = 'Woodstock'
IF(DI.4.SuperDist=17) NAME = 'Airport'
IF(DI.4.SuperDist=18) NAME = 'NE Clayton'
IF(DI.4.SuperDist=19) NAME = 'Riverdale'
IF(DI.4.SuperDist=20) NAME = 'S Clayton'
IF(DI.4.SuperDist=21) Name= 'NW Cobb'
IF(DI.4.SuperDist=22) Name= 'NE Cobb'
IF(DI.4.SuperDist=23) Name= 'SW Cobb'
IF(DI.4.SuperDist=24) Name= 'Marietta'
IF(DI.4.SuperDist=25) Name= 'Cumberland'
IF(DI.4.SuperDist=26) Name= 'S Cobb'
IF(DI.4.SuperDist=27) Name= 'Chamblee'
IF(DI.4.SuperDist=28) Name= 'NW DeKalb'
IF(DI.4.SuperDist=29) Name= 'NE DeKalb'
IF(DI.4.SuperDist=30) Name= 'Atlanta-DeKalb'
IF(DI.4.SuperDist=31) Name= 'Decatur'
IF(DI.4.SuperDist=32) Name= 'SW DeKalb'
IF(DI.4.SuperDist=33) Name= 'SE DeKalb'
IF(DI.4.SuperDist=34) Name= 'S DeKalb'
IF(DI.4.SuperDist=35) Name= 'W Douglas'
IF(DI.4.SuperDist=36) Name= 'E Douglas'
IF(DI.4.SuperDist=37) Name= 'W Fayette'
IF(DI.4.SuperDist=38) Name= 'E Fayette'
IF(DI.4.SuperDist=39) Name= 'N Gwinnett'
IF(DI.4.SuperDist=40) Name= 'Cent Gwinnett'
IF(DI.4.SuperDist=41) Name= 'E Gwinnett'
IF(DI.4.SuperDist=42) Name= 'Norcross'
IF(DI.4.SuperDist=43) Name= 'Lilburn'
IF(DI.4.SuperDist=44) Name= 'Snellville'
IF(DI.4.SuperDist=45) Name= 'N Henry'
IF(DI.4.SuperDist=46) Name= 'E Henry'
IF(DI.4.SuperDist=47) Name= 'S Henry'
IF(DI.4.SuperDist=48) Name= 'S Rockdale'
IF(DI.4.SuperDist=49) Name= 'N Rockdale'
IF(DI.4.SuperDist=50) Name= 'N Barrow'
IF(DI.4.SuperDist=51) Name= 'S Barrow'
IF(DI.4.SuperDist=52) Name= 'NW Bartow'
IF(DI.4.SuperDist=53) Name= 'NE Bartow'
IF(DI.4.SuperDist=54) Name= 'SW Bartow'
IF(DI.4.SuperDist=55) Name= 'Cartersville'
IF(DI.4.SuperDist=56) Name= 'NE Carroll'
IF(DI.4.SuperDist=57) Name= 'W Carroll'
IF(DI.4.SuperDist=58) Name= 'Central Carroll'
IF(DI.4.SuperDist=59) Name= 'SE Carroll'
IF(DI.4.SuperDist=60) Name= 'W Coweta'
IF(DI.4.SuperDist=61) Name= 'N Coweta'
IF(DI.4.SuperDist=62) Name= 'S Coweta'
IF(DI.4.SuperDist=63) Name= 'SE Coweta'
IF(DI.4.SuperDist=64) Name= 'N Forsyth'
IF(DI.4.SuperDist=65) Name= 'Cumming'
IF(DI.4.SuperDist=66) Name= 'S Forsyth'
IF(DI.4.SuperDist=67) Name= 'N Hall'
IF(DI.4.SuperDist=68) Name= 'Gainesville'
IF(DI.4.SuperDist=69) Name= 'S Hall'
IF(DI.4.SuperDist=70) Name= 'W Newton'
IF(DI.4.SuperDist=71) Name= 'E Newton'
IF(DI.4.SuperDist=72) Name= 'N Paulding'
IF(DI.4.SuperDist=73) Name= 'W Paulding'
IF(DI.4.SuperDist=74) Name= 'E Paulding'
IF(DI.4.SuperDist=75) Name= 'N Spalding'
IF(DI.4.SuperDist=76) Name= 'S Spalding'
IF(DI.4.SuperDist=77) Name= 'W Walton'
IF(DI.4.SuperDist=78) Name= 'E Walton'
 S1 = MAX(DI.4.S1,0)
 S2 = MAX(DI.4.S2,0)
 S3 = MAX(DI.4.S3,0)
 S4 = MAX(DI.4.S4,0)
 S5 = MAX(DI.4.S5,0)
 S6 = MAX(DI.4.S6,0)
 S7 = MAX(DI.4.S7,0)
 S8 = MAX(DI.4.S8,0)
 S9 = MAX(DI.4.S9,0)
 S10 = MAX(DI.4.S10,0)
 S11 = MAX(DI.4.S11,0)
 S12 = MAX(DI.4.S12,0)
 S13 = MAX(DI.4.S13,0)
 S14 = MAX(DI.4.S14,0)
 S15 = MAX(DI.4.S15,0)
 S16 = MAX(DI.4.S16,0)
 S17 = MAX(DI.4.S17,0)
 S18 = MAX(DI.4.S18,0)
 S19 = MAX(DI.4.S19,0)
 S20 = MAX(DI.4.S20,0)
 S21 = MAX(DI.4.S21,0)
 S22 = MAX(DI.4.S22,0)
 S23 = MAX(DI.4.S23,0)
 S24 = MAX(DI.4.S24,0)
 S25 = MAX(DI.4.S25,0)
 S26 = MAX(DI.4.S26,0)
 S27 = MAX(DI.4.S27,0)
 S28 = MAX(DI.4.S28,0)
 S29 = MAX(DI.4.S29,0)
 S30 = MAX(DI.4.S30,0)
 S31 = MAX(DI.4.S31,0)
 S32 = MAX(DI.4.S32,0)
 S33 = MAX(DI.4.S33,0)
 S34 = MAX(DI.4.S34,0)
 S35 = MAX(DI.4.S35,0)
 S36 = MAX(DI.4.S36,0)
 S37 = MAX(DI.4.S37,0)
 S38 = MAX(DI.4.S38,0)
 S39 = MAX(DI.4.S39,0)
 S40 = MAX(DI.4.S40,0)
 S41 = MAX(DI.4.S41,0)
 S42 = MAX(DI.4.S42,0)
 S43 = MAX(DI.4.S43,0)
 S44 = MAX(DI.4.S44,0)
 S45 = MAX(DI.4.S45,0)
 S46 = MAX(DI.4.S46,0)
 S47 = MAX(DI.4.S47,0)
 S48 = MAX(DI.4.S48,0)
 S49 = MAX(DI.4.S49,0)
 S50 = MAX(DI.4.S50,0)
 S51 = MAX(DI.4.S51,0)
 S52 = MAX(DI.4.S52,0)
 S53 = MAX(DI.4.S53,0)
 S54 = MAX(DI.4.S54,0)
 S55 = MAX(DI.4.S55,0)
 S56 = MAX(DI.4.S56,0)
 S57 = MAX(DI.4.S57,0)
 S58 = MAX(DI.4.S58,0)
 S59 = MAX(DI.4.S59,0)
 S60 = MAX(DI.4.S60,0)
 S61 = MAX(DI.4.S61,0)
 S62 = MAX(DI.4.S62,0)
 S63 = MAX(DI.4.S63,0)
 S64 = MAX(DI.4.S64,0)
 S65 = MAX(DI.4.S65,0)
 S66 = MAX(DI.4.S66,0)
 S67 = MAX(DI.4.S67,0)
 S68 = MAX(DI.4.S68,0)
 S69 = MAX(DI.4.S69,0)
 S70 = MAX(DI.4.S70,0)
 S71 = MAX(DI.4.S71,0)
 S72 = MAX(DI.4.S72,0)
 S73 = MAX(DI.4.S73,0)
 S74 = MAX(DI.4.S74,0)
 S75 = MAX(DI.4.S75,0)
 S76 = MAX(DI.4.S76,0)
 S77 = MAX(DI.4.S77,0)
 S78 = MAX(DI.4.S78,0)

PRINT CSV=T,LIST=Name,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
                      S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40,
                      S41,S42,S43,S44,S45,S46,S47,S48,S49,S50,S51,S52,S53,S54,S55,S56,S57,S58,S59,S60,
                      S61,S62,S63,S64,S65,S66,S67,S68,S69,S70,S71,S72,S73,S74,S75,S76,S77,S78,PRINTO=1
ENDLOOP ;TRN loop
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
LOOP SCH=1,DBI.5.NUMRECORDS  ;loop through all SCH records
 x = DBIReadRecord(5,SCH)          ;read each individual record

 IF(SCH=1) PRINT LIST='SuperDistrict to SuperDistrict - School Bus',PRINTO=1
 IF(SCH=1) PRINT LIST='Super Dist,N Fulton,Roswell,Sandy Springs,Buckhead,NW Atlanta,NE Atlanta,SW Atlanta,CBD Atlanta,SE Atlanta,S Fulton,Tri-Cities,Shannon,W Cherokee,N Cherokee,E Cent Cherokee,Woodstock,Airport,NE Clayton,Riverdale,S Clayton,NW Cobb,NE Cobb,SW Cobb,Marietta,Cumberland,S Cobb,Chamblee,NW DeKalb,NE DeKalb,Atlanta-DeKalb,Decatur,SW DeKalb,SE DeKalb,S DeKalb,W Douglas,E Douglas,W Fayette,E Fayette,N Gwinnett,Cent Gwinnett,E Gwinnett,Norcross,Lilburn,Snellville,N Henry,E Henry,S Henry,S Rockdale,N Rockdale,N Barrow,S Barrow,NW Bartow,NE Bartow,SW Bartow,Cartersville,NE Carroll,W Carroll,Central Carroll,SE Carroll,W Coweta,N Coweta,S Coweta,SE Coweta,N Forsyth,Cumming,S Forsyth,N Hall,Gainesville,S Hall,W Newton,E Newton,N Paulding,W Paulding,E Paulding,N Spalding,S Spalding,W Walton,E Walton',PRINTO=1

IF(DI.5.SuperDist=1)  NAME = 'N Fulton'
IF(DI.5.SuperDist=2)  NAME = 'Roswell'
IF(DI.5.SuperDist=3)  NAME = 'Sandy Springs'
IF(DI.5.SuperDist=4)  NAME = 'Buckhead'
IF(DI.5.SuperDist=5)  NAME = 'NW Atlanta'
IF(DI.5.SuperDist=6)  NAME = 'NE Atlanta'
IF(DI.5.SuperDist=7)  NAME = 'SW Atlanta'
IF(DI.5.SuperDist=8)  NAME = 'CBD Atlanta'
IF(DI.5.SuperDist=9)  NAME = 'SE Atlanta'
IF(DI.5.SuperDist=10) NAME = 'S Fulton'
IF(DI.5.SuperDist=11) NAME = 'TriCities'
IF(DI.5.SuperDist=12) NAME = 'Shannon'
IF(DI.5.SuperDist=13) NAME = 'W Cherokee'
IF(DI.5.SuperDist=14) NAME = 'N Cherokee'
IF(DI.5.SuperDist=15) NAME = 'E Cent Cherokee'
IF(DI.5.SuperDist=16) NAME = 'Woodstock'
IF(DI.5.SuperDist=17) NAME = 'Airport'
IF(DI.5.SuperDist=18) NAME = 'NE Clayton'
IF(DI.5.SuperDist=19) NAME = 'Riverdale'
IF(DI.5.SuperDist=20) NAME = 'S Clayton'
IF(DI.5.SuperDist=21) Name= 'NW Cobb'
IF(DI.5.SuperDist=22) Name= 'NE Cobb'
IF(DI.5.SuperDist=23) Name= 'SW Cobb'
IF(DI.5.SuperDist=24) Name= 'Marietta'
IF(DI.5.SuperDist=25) Name= 'Cumberland'
IF(DI.5.SuperDist=26) Name= 'S Cobb'
IF(DI.5.SuperDist=27) Name= 'Chamblee'
IF(DI.5.SuperDist=28) Name= 'NW DeKalb'
IF(DI.5.SuperDist=29) Name= 'NE DeKalb'
IF(DI.5.SuperDist=30) Name= 'Atlanta-DeKalb'
IF(DI.5.SuperDist=31) Name= 'Decatur'
IF(DI.5.SuperDist=32) Name= 'SW DeKalb'
IF(DI.5.SuperDist=33) Name= 'SE DeKalb'
IF(DI.5.SuperDist=34) Name= 'S DeKalb'
IF(DI.5.SuperDist=35) Name= 'W Douglas'
IF(DI.5.SuperDist=36) Name= 'E Douglas'
IF(DI.5.SuperDist=37) Name= 'W Fayette'
IF(DI.5.SuperDist=38) Name= 'E Fayette'
IF(DI.5.SuperDist=39) Name= 'N Gwinnett'
IF(DI.5.SuperDist=40) Name= 'Cent Gwinnett'
IF(DI.5.SuperDist=41) Name= 'E Gwinnett'
IF(DI.5.SuperDist=42) Name= 'Norcross'
IF(DI.5.SuperDist=43) Name= 'Lilburn'
IF(DI.5.SuperDist=44) Name= 'Snellville'
IF(DI.5.SuperDist=45) Name= 'N Henry'
IF(DI.5.SuperDist=46) Name= 'E Henry'
IF(DI.5.SuperDist=47) Name= 'S Henry'
IF(DI.5.SuperDist=48) Name= 'S Rockdale'
IF(DI.5.SuperDist=49) Name= 'N Rockdale'
IF(DI.5.SuperDist=50) Name= 'N Barrow'
IF(DI.5.SuperDist=51) Name= 'S Barrow'
IF(DI.5.SuperDist=52) Name= 'NW Bartow'
IF(DI.5.SuperDist=53) Name= 'NE Bartow'
IF(DI.5.SuperDist=54) Name= 'SW Bartow'
IF(DI.5.SuperDist=55) Name= 'Cartersville'
IF(DI.5.SuperDist=56) Name= 'NE Carroll'
IF(DI.5.SuperDist=57) Name= 'W Carroll'
IF(DI.5.SuperDist=58) Name= 'Central Carroll'
IF(DI.5.SuperDist=59) Name= 'SE Carroll'
IF(DI.5.SuperDist=60) Name= 'W Coweta'
IF(DI.5.SuperDist=61) Name= 'N Coweta'
IF(DI.5.SuperDist=62) Name= 'S Coweta'
IF(DI.5.SuperDist=63) Name= 'SE Coweta'
IF(DI.5.SuperDist=64) Name= 'N Forsyth'
IF(DI.5.SuperDist=65) Name= 'Cumming'
IF(DI.5.SuperDist=66) Name= 'S Forsyth'
IF(DI.5.SuperDist=67) Name= 'N Hall'
IF(DI.5.SuperDist=68) Name= 'Gainesville'
IF(DI.5.SuperDist=69) Name= 'S Hall'
IF(DI.5.SuperDist=70) Name= 'W Newton'
IF(DI.5.SuperDist=71) Name= 'E Newton'
IF(DI.5.SuperDist=72) Name= 'N Paulding'
IF(DI.5.SuperDist=73) Name= 'W Paulding'
IF(DI.5.SuperDist=74) Name= 'E Paulding'
IF(DI.5.SuperDist=75) Name= 'N Spalding'
IF(DI.5.SuperDist=76) Name= 'S Spalding'
IF(DI.5.SuperDist=77) Name= 'W Walton'
IF(DI.5.SuperDist=78) Name= 'E Walton'
 S1 = MAX(DI.5.S1,0)
 S2 = MAX(DI.5.S2,0)
 S3 = MAX(DI.5.S3,0)
 S4 = MAX(DI.5.S4,0)
 S5 = MAX(DI.5.S5,0)
 S6 = MAX(DI.5.S6,0)
 S7 = MAX(DI.5.S7,0)
 S8 = MAX(DI.5.S8,0)
 S9 = MAX(DI.5.S9,0)
 S10 = MAX(DI.5.S10,0)
 S11 = MAX(DI.5.S11,0)
 S12 = MAX(DI.5.S12,0)
 S13 = MAX(DI.5.S13,0)
 S14 = MAX(DI.5.S14,0)
 S15 = MAX(DI.5.S15,0)
 S16 = MAX(DI.5.S16,0)
 S17 = MAX(DI.5.S17,0)
 S18 = MAX(DI.5.S18,0)
 S19 = MAX(DI.5.S19,0)
 S20 = MAX(DI.5.S20,0)
 S21 = MAX(DI.5.S21,0)
 S22 = MAX(DI.5.S22,0)
 S23 = MAX(DI.5.S23,0)
 S24 = MAX(DI.5.S24,0)
 S25 = MAX(DI.5.S25,0)
 S26 = MAX(DI.5.S26,0)
 S27 = MAX(DI.5.S27,0)
 S28 = MAX(DI.5.S28,0)
 S29 = MAX(DI.5.S29,0)
 S30 = MAX(DI.5.S30,0)
 S31 = MAX(DI.5.S31,0)
 S32 = MAX(DI.5.S32,0)
 S33 = MAX(DI.5.S33,0)
 S34 = MAX(DI.5.S34,0)
 S35 = MAX(DI.5.S35,0)
 S36 = MAX(DI.5.S36,0)
 S37 = MAX(DI.5.S37,0)
 S38 = MAX(DI.5.S38,0)
 S39 = MAX(DI.5.S39,0)
 S40 = MAX(DI.5.S40,0)
 S41 = MAX(DI.5.S41,0)
 S42 = MAX(DI.5.S42,0)
 S43 = MAX(DI.5.S43,0)
 S44 = MAX(DI.5.S44,0)
 S45 = MAX(DI.5.S45,0)
 S46 = MAX(DI.5.S46,0)
 S47 = MAX(DI.5.S47,0)
 S48 = MAX(DI.5.S48,0)
 S49 = MAX(DI.5.S49,0)
 S50 = MAX(DI.5.S50,0)
 S51 = MAX(DI.5.S51,0)
 S52 = MAX(DI.5.S52,0)
 S53 = MAX(DI.5.S53,0)
 S54 = MAX(DI.5.S54,0)
 S55 = MAX(DI.5.S55,0)
 S56 = MAX(DI.5.S56,0)
 S57 = MAX(DI.5.S57,0)
 S58 = MAX(DI.5.S58,0)
 S59 = MAX(DI.5.S59,0)
 S60 = MAX(DI.5.S60,0)
 S61 = MAX(DI.5.S61,0)
 S62 = MAX(DI.5.S62,0)
 S63 = MAX(DI.5.S63,0)
 S64 = MAX(DI.5.S64,0)
 S65 = MAX(DI.5.S65,0)
 S66 = MAX(DI.5.S66,0)
 S67 = MAX(DI.5.S67,0)
 S68 = MAX(DI.5.S68,0)
 S69 = MAX(DI.5.S69,0)
 S70 = MAX(DI.5.S70,0)
 S71 = MAX(DI.5.S71,0)
 S72 = MAX(DI.5.S72,0)
 S73 = MAX(DI.5.S73,0)
 S74 = MAX(DI.5.S74,0)
 S75 = MAX(DI.5.S75,0)
 S76 = MAX(DI.5.S76,0)
 S77 = MAX(DI.5.S77,0)
 S78 = MAX(DI.5.S78,0)

PRINT CSV=T,LIST=Name,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
                      S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40,
                      S41,S42,S43,S44,S45,S46,S47,S48,S49,S50,S51,S52,S53,S54,S55,S56,S57,S58,S59,S60,
                      S61,S62,S63,S64,S65,S66,S67,S68,S69,S70,S71,S72,S73,S74,S75,S76,S77,S78,PRINTO=1
ENDLOOP ;SCH loop
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
LOOP ALL=1,DBI.6.NUMRECORDS  ;loop through all SCH records
 x = DBIReadRecord(6,ALL)          ;read each individual record

 IF(ALL=1) PRINT LIST='SuperDistrict to SuperDistrict - All',PRINTO=1
 IF(ALL=1) PRINT LIST='Super Dist,N Fulton,Roswell,Sandy Springs,Buckhead,NW Atlanta,NE Atlanta,SW Atlanta,CBD Atlanta,SE Atlanta,S Fulton,Tri-Cities,Shannon,W Cherokee,N Cherokee,E Cent Cherokee,Woodstock,Airport,NE Clayton,Riverdale,S Clayton,NW Cobb,NE Cobb,SW Cobb,Marietta,Cumberland,S Cobb,Chamblee,NW DeKalb,NE DeKalb,Atlanta-DeKalb,Decatur,SW DeKalb,SE DeKalb,S DeKalb,W Douglas,E Douglas,W Fayette,E Fayette,N Gwinnett,Cent Gwinnett,E Gwinnett,Norcross,Lilburn,Snellville,N Henry,E Henry,S Henry,S Rockdale,N Rockdale,N Barrow,S Barrow,NW Bartow,NE Bartow,SW Bartow,Cartersville,NE Carroll,W Carroll,Central Carroll,SE Carroll,W Coweta,N Coweta,S Coweta,SE Coweta,N Forsyth,Cumming,S Forsyth,N Hall,Gainesville,S Hall,W Newton,E Newton,N Paulding,W Paulding,E Paulding,N Spalding,S Spalding,W Walton,E Walton',PRINTO=1

IF(DI.6.SuperDist=1)  NAME = 'N Fulton'
IF(DI.6.SuperDist=2)  NAME = 'Roswell'
IF(DI.6.SuperDist=3)  NAME = 'Sandy Springs'
IF(DI.6.SuperDist=4)  NAME = 'Buckhead'
IF(DI.6.SuperDist=5)  NAME = 'NW Atlanta'
IF(DI.6.SuperDist=6)  NAME = 'NE Atlanta'
IF(DI.6.SuperDist=7)  NAME = 'SW Atlanta'
IF(DI.6.SuperDist=8)  NAME = 'CBD Atlanta'
IF(DI.6.SuperDist=9)  NAME = 'SE Atlanta'
IF(DI.6.SuperDist=10) NAME = 'S Fulton'
IF(DI.6.SuperDist=11) NAME = 'TriCities'
IF(DI.6.SuperDist=12) NAME = 'Shannon'
IF(DI.6.SuperDist=13) NAME = 'W Cherokee'
IF(DI.6.SuperDist=14) NAME = 'N Cherokee'
IF(DI.6.SuperDist=15) NAME = 'E Cent Cherokee'
IF(DI.6.SuperDist=16) NAME = 'Woodstock'
IF(DI.6.SuperDist=17) NAME = 'Airport'
IF(DI.6.SuperDist=18) NAME = 'NE Clayton'
IF(DI.6.SuperDist=19) NAME = 'Riverdale'
IF(DI.6.SuperDist=20) NAME = 'S Clayton'
IF(DI.6.SuperDist=21) Name= 'NW Cobb'
IF(DI.6.SuperDist=22) Name= 'NE Cobb'
IF(DI.6.SuperDist=23) Name= 'SW Cobb'
IF(DI.6.SuperDist=24) Name= 'Marietta'
IF(DI.6.SuperDist=25) Name= 'Cumberland'
IF(DI.6.SuperDist=26) Name= 'S Cobb'
IF(DI.6.SuperDist=27) Name= 'Chamblee'
IF(DI.6.SuperDist=28) Name= 'NW DeKalb'
IF(DI.6.SuperDist=29) Name= 'NE DeKalb'
IF(DI.6.SuperDist=30) Name= 'Atlanta-DeKalb'
IF(DI.6.SuperDist=31) Name= 'Decatur'
IF(DI.6.SuperDist=32) Name= 'SW DeKalb'
IF(DI.6.SuperDist=33) Name= 'SE DeKalb'
IF(DI.6.SuperDist=34) Name= 'S DeKalb'
IF(DI.6.SuperDist=35) Name= 'W Douglas'
IF(DI.6.SuperDist=36) Name= 'E Douglas'
IF(DI.6.SuperDist=37) Name= 'W Fayette'
IF(DI.6.SuperDist=38) Name= 'E Fayette'
IF(DI.6.SuperDist=39) Name= 'N Gwinnett'
IF(DI.6.SuperDist=40) Name= 'Cent Gwinnett'
IF(DI.6.SuperDist=41) Name= 'E Gwinnett'
IF(DI.6.SuperDist=42) Name= 'Norcross'
IF(DI.6.SuperDist=43) Name= 'Lilburn'
IF(DI.6.SuperDist=44) Name= 'Snellville'
IF(DI.6.SuperDist=45) Name= 'N Henry'
IF(DI.6.SuperDist=46) Name= 'E Henry'
IF(DI.6.SuperDist=47) Name= 'S Henry'
IF(DI.6.SuperDist=48) Name= 'S Rockdale'
IF(DI.6.SuperDist=49) Name= 'N Rockdale'
IF(DI.6.SuperDist=50) Name= 'N Barrow'
IF(DI.6.SuperDist=51) Name= 'S Barrow'
IF(DI.6.SuperDist=52) Name= 'NW Bartow'
IF(DI.6.SuperDist=53) Name= 'NE Bartow'
IF(DI.6.SuperDist=54) Name= 'SW Bartow'
IF(DI.6.SuperDist=55) Name= 'Cartersville'
IF(DI.6.SuperDist=56) Name= 'NE Carroll'
IF(DI.6.SuperDist=57) Name= 'W Carroll'
IF(DI.6.SuperDist=58) Name= 'Central Carroll'
IF(DI.6.SuperDist=59) Name= 'SE Carroll'
IF(DI.6.SuperDist=60) Name= 'W Coweta'
IF(DI.6.SuperDist=61) Name= 'N Coweta'
IF(DI.6.SuperDist=62) Name= 'S Coweta'
IF(DI.6.SuperDist=63) Name= 'SE Coweta'
IF(DI.6.SuperDist=64) Name= 'N Forsyth'
IF(DI.6.SuperDist=65) Name= 'Cumming'
IF(DI.6.SuperDist=66) Name= 'S Forsyth'
IF(DI.6.SuperDist=67) Name= 'N Hall'
IF(DI.6.SuperDist=68) Name= 'Gainesville'
IF(DI.6.SuperDist=69) Name= 'S Hall'
IF(DI.6.SuperDist=70) Name= 'W Newton'
IF(DI.6.SuperDist=71) Name= 'E Newton'
IF(DI.6.SuperDist=72) Name= 'N Paulding'
IF(DI.6.SuperDist=73) Name= 'W Paulding'
IF(DI.6.SuperDist=74) Name= 'E Paulding'
IF(DI.6.SuperDist=75) Name= 'N Spalding'
IF(DI.6.SuperDist=76) Name= 'S Spalding'
IF(DI.6.SuperDist=77) Name= 'W Walton'
IF(DI.6.SuperDist=78) Name= 'E Walton'
 S1 = MAX(DI.6.S1,0)
 S2 = MAX(DI.6.S2,0)
 S3 = MAX(DI.6.S3,0)
 S4 = MAX(DI.6.S4,0)
 S5 = MAX(DI.6.S5,0)
 S6 = MAX(DI.6.S6,0)
 S7 = MAX(DI.6.S7,0)
 S8 = MAX(DI.6.S8,0)
 S9 = MAX(DI.6.S9,0)
 S10 = MAX(DI.6.S10,0)
 S11 = MAX(DI.6.S11,0)
 S12 = MAX(DI.6.S12,0)
 S13 = MAX(DI.6.S13,0)
 S14 = MAX(DI.6.S14,0)
 S15 = MAX(DI.6.S15,0)
 S16 = MAX(DI.6.S16,0)
 S17 = MAX(DI.6.S17,0)
 S18 = MAX(DI.6.S18,0)
 S19 = MAX(DI.6.S19,0)
 S20 = MAX(DI.6.S20,0)
 S21 = MAX(DI.6.S21,0)
 S22 = MAX(DI.6.S22,0)
 S23 = MAX(DI.6.S23,0)
 S24 = MAX(DI.6.S24,0)
 S25 = MAX(DI.6.S25,0)
 S26 = MAX(DI.6.S26,0)
 S27 = MAX(DI.6.S27,0)
 S28 = MAX(DI.6.S28,0)
 S29 = MAX(DI.6.S29,0)
 S30 = MAX(DI.6.S30,0)
 S31 = MAX(DI.6.S31,0)
 S32 = MAX(DI.6.S32,0)
 S33 = MAX(DI.6.S33,0)
 S34 = MAX(DI.6.S34,0)
 S35 = MAX(DI.6.S35,0)
 S36 = MAX(DI.6.S36,0)
 S37 = MAX(DI.6.S37,0)
 S38 = MAX(DI.6.S38,0)
 S39 = MAX(DI.6.S39,0)
 S40 = MAX(DI.6.S40,0)
 S41 = MAX(DI.6.S41,0)
 S42 = MAX(DI.6.S42,0)
 S43 = MAX(DI.6.S43,0)
 S44 = MAX(DI.6.S44,0)
 S45 = MAX(DI.6.S45,0)
 S46 = MAX(DI.6.S46,0)
 S47 = MAX(DI.6.S47,0)
 S48 = MAX(DI.6.S48,0)
 S49 = MAX(DI.6.S49,0)
 S50 = MAX(DI.6.S50,0)
 S51 = MAX(DI.6.S51,0)
 S52 = MAX(DI.6.S52,0)
 S53 = MAX(DI.6.S53,0)
 S54 = MAX(DI.6.S54,0)
 S55 = MAX(DI.6.S55,0)
 S56 = MAX(DI.6.S56,0)
 S57 = MAX(DI.6.S57,0)
 S58 = MAX(DI.6.S58,0)
 S59 = MAX(DI.6.S59,0)
 S60 = MAX(DI.6.S60,0)
 S61 = MAX(DI.6.S61,0)
 S62 = MAX(DI.6.S62,0)
 S63 = MAX(DI.6.S63,0)
 S64 = MAX(DI.6.S64,0)
 S65 = MAX(DI.6.S65,0)
 S66 = MAX(DI.6.S66,0)
 S67 = MAX(DI.6.S67,0)
 S68 = MAX(DI.6.S68,0)
 S69 = MAX(DI.6.S69,0)
 S70 = MAX(DI.6.S70,0)
 S71 = MAX(DI.6.S71,0)
 S72 = MAX(DI.6.S72,0)
 S73 = MAX(DI.6.S73,0)
 S74 = MAX(DI.6.S74,0)
 S75 = MAX(DI.6.S75,0)
 S76 = MAX(DI.6.S76,0)
 S77 = MAX(DI.6.S77,0)
 S78 = MAX(DI.6.S78,0)

PRINT CSV=T,LIST=Name,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
                      S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40,
                      S41,S42,S43,S44,S45,S46,S47,S48,S49,S50,S51,S52,S53,S54,S55,S56,S57,S58,S59,S60,
                      S61,S62,S63,S64,S65,S66,S67,S68,S69,S70,S71,S72,S73,S74,S75,S76,S77,S78,PRINTO=1
ENDLOOP ;ALL loop
;----------------------------------------------------------------------------
ENDRUN
ENDLOOP
;==================================================================================
;Build activity center to activity center CSV
;loop through trips, work tours, and non-work tours
LOOP N=1,3
IF(N=1) TYPE='_Trips'
IF(N=2) TYPE='_WorkTours'
IF(N=3) TYPE='_NonWorkTours'

;create ActivityCenter to ActivityCenter CSV
RUN PGM=MATRIX
DBI[1]=Eval\ActivityCenterToActivityCenterSOV@TYPE@.TMP,DELIMITER=',' ActCtr=1,A1=3,A2=4,A3=5,A4=6,A5=7,A6=8,A7=9,A8=10,A9=11,A10=12,A11=13,A12=14,A13=15
DBI[2]=Eval\ActivityCenterToActivityCenterHOV@TYPE@.TMP,DELIMITER=',' ActCtr=1,A1=3,A2=4,A3=5,A4=6,A5=7,A6=8,A7=9,A8=10,A9=11,A10=12,A11=13,A12=14,A13=15
DBI[3]=Eval\ActivityCenterToActivityCenterBikePed@TYPE@.TMP,DELIMITER=',' ActCtr=1,A1=3,A2=4,A3=5,A4=6,A5=7,A6=8,A7=9,A8=10,A9=11,A10=12,A11=13,A12=14,A13=15
DBI[4]=Eval\ActivityCenterToActivityCenterTransit@TYPE@.TMP,DELIMITER=',' ActCtr=1,A1=3,A2=4,A3=5,A4=6,A5=7,A6=8,A7=9,A8=10,A9=11,A10=12,A11=13,A12=14,A13=15
DBI[5]=Eval\ActivityCenterToActivityCenterSchoolBus@TYPE@.TMP,DELIMITER=',' ActCtr=1,A1=3,A2=4,A3=5,A4=6,A5=7,A6=8,A7=9,A8=10,A9=11,A10=12,A11=13,A12=14,A13=15
DBI[6]=Eval\ActivityCenterToActivityCenterAll@TYPE@.TMP,DELIMITER=',' ActCtr=1,A1=3,A2=4,A3=5,A4=6,A5=7,A6=8,A7=9,A8=10,A9=11,A10=12,A11=13,A12=14,A13=15
PRINTO[1]=Eval\ActivityCenterToActivityCenter@TYPE@.CSV
ZONES=1
;----------------------------------------------------------------------------
LOOP SOV=1,DBI.1.NUMRECORDS  ;loop through all sov records
 x = DBIReadRecord(1,SOV)          ;read each individual record

IF(SOV=1) PRINT LIST='ActivityCenter to ActivityCenter - SOV',PRINTO=1
IF(SOV=1) PRINT LIST='Activity Center,Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPlace,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCenter',PRINTO=1
IF(DI.1.ACTCTR=1)  NAME = 'Airport'
IF(DI.1.ACTCTR=2)  NAME = 'Buckhead'
IF(DI.1.ACTCTR=3)  NAME = 'Cumberland'
IF(DI.1.ACTCTR=4)  NAME = 'Downtown'
IF(DI.1.ACTCTR=5)  NAME = 'Emory'
IF(DI.1.ACTCTR=6)  NAME = 'FltnInd'
IF(DI.1.ACTCTR=7)  NAME = 'GwtPlace'
IF(DI.1.ACTCTR=8)  NAME = 'Midtown'
IF(DI.1.ACTCTR=9)  NAME = 'Norcross'
IF(DI.1.ACTCTR=10) NAME = 'NorthPoint'
IF(DI.1.ACTCTR=11) NAME = 'Perimeter'
IF(DI.1.ACTCTR=12) NAME = 'Southlake'
IF(DI.1.ACTCTR=13) NAME = 'TownCenter'

 A1 = MAX(DI.1.A1,0)
 A2 = MAX(DI.1.A2,0)
 A3 = MAX(DI.1.A3,0)
 A4 = MAX(DI.1.A4,0)
 A5 = MAX(DI.1.A5,0)
 A6 = MAX(DI.1.A6,0)
 A7 = MAX(DI.1.A7,0)
 A8 = MAX(DI.1.A8,0)
 A9 = MAX(DI.1.A9,0)
 A10 = MAX(DI.1.A10,0)
 A11 = MAX(DI.1.A11,0)
 A12 = MAX(DI.1.A12,0)
 A13 = MAX(DI.1.A13,0)

 PRINT CSV=T,LIST=Name,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,PRINTO=1
ENDLOOP ;sov loop
;----------------------------------------------------------------------------
LOOP HOV=1,DBI.2.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(2,HOV)          ;read each individual record

IF(HOV=1) PRINT LIST='ActivityCenter to ActivityCenter Trips - HOV',PRINTO=1
IF(HOV=1) PRINT LIST='Activity Center,Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPlace,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCenter',PRINTO=1
IF(DI.2.ACTCTR=1)  NAME = 'Airport'
IF(DI.2.ACTCTR=2)  NAME = 'Buckhead'
IF(DI.2.ACTCTR=3)  NAME = 'Cumberland'
IF(DI.2.ACTCTR=4)  NAME = 'Downtown'
IF(DI.2.ACTCTR=5)  NAME = 'Emory'
IF(DI.2.ACTCTR=6)  NAME = 'FltnInd'
IF(DI.2.ACTCTR=7)  NAME = 'GwtPlace'
IF(DI.2.ACTCTR=8)  NAME = 'Midtown'
IF(DI.2.ACTCTR=9)  NAME = 'Norcross'
IF(DI.2.ACTCTR=10) NAME = 'NorthPoint'
IF(DI.2.ACTCTR=11) NAME = 'Perimeter'
IF(DI.2.ACTCTR=12) NAME = 'Southlake'
IF(DI.2.ACTCTR=13) NAME = 'TownCenter'

 A1 = MAX(DI.2.A1,0)
 A2 = MAX(DI.2.A2,0)
 A3 = MAX(DI.2.A3,0)
 A4 = MAX(DI.2.A4,0)
 A5 = MAX(DI.2.A5,0)
 A6 = MAX(DI.2.A6,0)
 A7 = MAX(DI.2.A7,0)
 A8 = MAX(DI.2.A8,0)
 A9 = MAX(DI.2.A9,0)
 A10 = MAX(DI.2.A10,0)
 A11 = MAX(DI.2.A11,0)
 A12 = MAX(DI.2.A12,0)
 A13 = MAX(DI.2.A13,0)

 PRINT CSV=T,LIST=Name,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,PRINTO=1
ENDLOOP ;hov loop
;----------------------------------------------------------------------------
LOOP BIKE=1,DBI.3.NUMRECORDS  ;loop through all bike records
 x = DBIReadRecord(3,BIKE)          ;read each individual record

IF(BIKE=1) PRINT LIST='ActivityCenter to ActivityCenter - Walk/Bike',PRINTO=1
IF(BIKE=1) PRINT LIST='Activity Center,Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPlace,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCenter',PRINTO=1
IF(DI.3.ACTCTR=1)  NAME = 'Airport'
IF(DI.3.ACTCTR=2)  NAME = 'Buckhead'
IF(DI.3.ACTCTR=3)  NAME = 'Cumberland'
IF(DI.3.ACTCTR=4)  NAME = 'Downtown'
IF(DI.3.ACTCTR=5)  NAME = 'Emory'
IF(DI.3.ACTCTR=6)  NAME = 'FltnInd'
IF(DI.3.ACTCTR=7)  NAME = 'GwtPlace'
IF(DI.3.ACTCTR=8)  NAME = 'Midtown'
IF(DI.3.ACTCTR=9)  NAME = 'Norcross'
IF(DI.3.ACTCTR=10) NAME = 'NorthPoint'
IF(DI.3.ACTCTR=11) NAME = 'Perimeter'
IF(DI.3.ACTCTR=12) NAME = 'Southlake'
IF(DI.3.ACTCTR=13) NAME = 'TownCenter'

 A1 = MAX(DI.3.A1,0)
 A2 = MAX(DI.3.A2,0)
 A3 = MAX(DI.3.A3,0)
 A4 = MAX(DI.3.A4,0)
 A5 = MAX(DI.3.A5,0)
 A6 = MAX(DI.3.A6,0)
 A7 = MAX(DI.3.A7,0)
 A8 = MAX(DI.3.A8,0)
 A9 = MAX(DI.3.A9,0)
 A10 = MAX(DI.3.A10,0)
 A11 = MAX(DI.3.A11,0)
 A12 = MAX(DI.3.A12,0)
 A13 = MAX(DI.3.A13,0)

 PRINT CSV=T,LIST=Name,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,PRINTO=1
ENDLOOP ;bike loop
;----------------------------------------------------------------------------
LOOP TRN=1,DBI.4.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(4,TRN)          ;read each individual record

IF(TRN=1) PRINT LIST='ActivityCenter to ActivityCenter - Transit',PRINTO=1
IF(TRN=1) PRINT LIST='Activity Center,Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPlace,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCenter',PRINTO=1
IF(DI.4.ACTCTR=1)  NAME = 'Airport'
IF(DI.4.ACTCTR=2)  NAME = 'Buckhead'
IF(DI.4.ACTCTR=3)  NAME = 'Cumberland'
IF(DI.4.ACTCTR=4)  NAME = 'Downtown'
IF(DI.4.ACTCTR=5)  NAME = 'Emory'
IF(DI.4.ACTCTR=6)  NAME = 'FltnInd'
IF(DI.4.ACTCTR=7)  NAME = 'GwtPlace'
IF(DI.4.ACTCTR=8)  NAME = 'Midtown'
IF(DI.4.ACTCTR=9)  NAME = 'Norcross'
IF(DI.4.ACTCTR=10) NAME = 'NorthPoint'
IF(DI.4.ACTCTR=11) NAME = 'Perimeter'
IF(DI.4.ACTCTR=12) NAME = 'Southlake'
IF(DI.4.ACTCTR=13) NAME = 'TownCenter'

 A1 = MAX(DI.4.A1,0)
 A2 = MAX(DI.4.A2,0)
 A3 = MAX(DI.4.A3,0)
 A4 = MAX(DI.4.A4,0)
 A5 = MAX(DI.4.A5,0)
 A6 = MAX(DI.4.A6,0)
 A7 = MAX(DI.4.A7,0)
 A8 = MAX(DI.4.A8,0)
 A9 = MAX(DI.4.A9,0)
 A10 = MAX(DI.4.A10,0)
 A11 = MAX(DI.4.A11,0)
 A12 = MAX(DI.4.A12,0)
 A13 = MAX(DI.4.A13,0)

 PRINT CSV=T,LIST=Name,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,PRINTO=1
ENDLOOP ;trn loop
;----------------------------------------------------------------------------
LOOP SCH=1,DBI.2.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(5,SCH)          ;read each individual record

IF(SCH=1) PRINT LIST='ActivityCenter to ActivityCenter - School Bus',PRINTO=1
IF(SCH=1) PRINT LIST='Activity Center,Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPlace,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCenter',PRINTO=1
IF(DI.5.ACTCTR=1)  NAME = 'Airport'
IF(DI.5.ACTCTR=2)  NAME = 'Buckhead'
IF(DI.5.ACTCTR=3)  NAME = 'Cumberland'
IF(DI.5.ACTCTR=4)  NAME = 'Downtown'
IF(DI.5.ACTCTR=5)  NAME = 'Emory'
IF(DI.5.ACTCTR=6)  NAME = 'FltnInd'
IF(DI.5.ACTCTR=7)  NAME = 'GwtPlace'
IF(DI.5.ACTCTR=8)  NAME = 'Midtown'
IF(DI.5.ACTCTR=9)  NAME = 'Norcross'
IF(DI.5.ACTCTR=10) NAME = 'NorthPoint'
IF(DI.5.ACTCTR=11) NAME = 'Perimeter'
IF(DI.5.ACTCTR=12) NAME = 'Southlake'
IF(DI.5.ACTCTR=13) NAME = 'TownCenter'

 A1 = MAX(DI.5.A1,0)
 A2 = MAX(DI.5.A2,0)
 A3 = MAX(DI.5.A3,0)
 A4 = MAX(DI.5.A4,0)
 A5 = MAX(DI.5.A5,0)
 A6 = MAX(DI.5.A6,0)
 A7 = MAX(DI.5.A7,0)
 A8 = MAX(DI.5.A8,0)
 A9 = MAX(DI.5.A9,0)
 A10 = MAX(DI.5.A10,0)
 A11 = MAX(DI.5.A11,0)
 A12 = MAX(DI.5.A12,0)
 A13 = MAX(DI.5.A13,0)

 PRINT CSV=T,LIST=Name,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,PRINTO=1
ENDLOOP ;sch loop
;----------------------------------------------------------------------------
LOOP ALL=1,DBI.6.NUMRECORDS  ;loop through all hov records
 x = DBIReadRecord(6,ALL)          ;read each individual record

IF(ALL=1) PRINT LIST='ActivityCenter to ActivityCenter - ALL',PRINTO=1
IF(ALL=1) PRINT LIST='Activity Center,Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPlace,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCenter',PRINTO=1
IF(DI.6.ACTCTR=1)  NAME = 'Airport'
IF(DI.6.ACTCTR=2)  NAME = 'Buckhead'
IF(DI.6.ACTCTR=3)  NAME = 'Cumberland'
IF(DI.6.ACTCTR=4)  NAME = 'Downtown'
IF(DI.6.ACTCTR=5)  NAME = 'Emory'
IF(DI.6.ACTCTR=6)  NAME = 'FltnInd'
IF(DI.6.ACTCTR=7)  NAME = 'GwtPlace'
IF(DI.6.ACTCTR=8)  NAME = 'Midtown'
IF(DI.6.ACTCTR=9)  NAME = 'Norcross'
IF(DI.6.ACTCTR=10) NAME = 'NorthPoint'
IF(DI.6.ACTCTR=11) NAME = 'Perimeter'
IF(DI.6.ACTCTR=12) NAME = 'Southlake'
IF(DI.6.ACTCTR=13) NAME = 'TownCenter'

 A1 = MAX(DI.6.A1,0)
 A2 = MAX(DI.6.A2,0)
 A3 = MAX(DI.6.A3,0)
 A4 = MAX(DI.6.A4,0)
 A5 = MAX(DI.6.A5,0)
 A6 = MAX(DI.6.A6,0)
 A7 = MAX(DI.6.A7,0)
 A8 = MAX(DI.6.A8,0)
 A9 = MAX(DI.6.A9,0)
 A10 = MAX(DI.6.A10,0)
 A11 = MAX(DI.6.A11,0)
 A12 = MAX(DI.6.A12,0)
 A13 = MAX(DI.6.A13,0)

 PRINT CSV=T,LIST=Name,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,PRINTO=1
ENDLOOP ;all loop
ENDRUN
ENDLOOP ;trips/tours
;=================================================================================================

;========================================================
;Tabulate summaries of transit assignment
RUN PGM=MATRIX
RECI=EVAL\Total_RouteLoads.DBF
PRINTO[1]=Eval\TransitAssignmentSummary.CSV

;compute totals
;daily
_brds = _brds + RI.BOARDS
_pmiles = _pmiles + RI.PASSMILES
_phours = _phours + RI.PASSHOURS
;am
_ambrds = _ambrds + RI.AMBRDS
_ampmiles = _ampmiles + RI.AMPMILES
_amphours = _amphours + RI.AMPHOURS
;pm
_pmbrds = _pmbrds + RI.PMBRDS
_pmpmiles = _pmpmiles + RI.PMPMILES
_pmphours = _pmphours + RI.PMPHOURS
;off-peak + air passenger
_opbrds = _opbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
_oppmiles = _oppmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
_opphours = _opphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS

IF(RI.MODE=14,16) ;MARTA BUS
 _MARTAbrds = _MARTAbrds + RI.BOARDS
 _MARTApmiles = _MARTApmiles + RI.PASSMILES
 _MARTAphours = _MARTAphours + RI.PASSHOURS
 ;AM
 _AMMARTAbrds = _AMMARTAbrds + RI.AMBRDS
 _AMMARTApmiles = _AMMARTApmiles + RI.AMPMILES
 _AMMARTAphours = _AMMARTAphours + RI.AMPHOURS
 ;PM
 _PMMARTAbrds = _PMMARTAbrds + RI.PMBRDS
 _PMMARTApmiles = _PMMARTApmiles + RI.PMPMILES
 _PMMARTAphours = _PMMARTAphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPMARTAbrds = _OPMARTAbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPMARTApmiles = _OPMARTApmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPMARTAphours = _OPMARTAphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=15) ;MARTA RAIL
 _RAILbrds = _RAILbrds + RI.BOARDS
 _RAILpmiles = _RAILpmiles + RI.PASSMILES
 _RAILphours = _RAILphours + RI.PASSHOURS
 ;AM
 _AMRAILbrds = _AMRAILbrds + RI.AMBRDS
 _AMRAILpmiles = _AMRAILpmiles + RI.AMPMILES
 _AMRAILphours = _AMRAILphours + RI.AMPHOURS
 ;PM
 _PMRAILbrds = _PMRAILbrds + RI.PMBRDS
 _PMRAILpmiles =_PMRAILpmiles + RI.PMPMILES
 _PMRAILphours = _PMRAILphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPRAILbrds = _OPRAILbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPRAILpmiles = _OPRAILpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPRAILphours = _OPRAILphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=98) ;STREETCAR
 _StCbrds = _StCbrds + RI.BOARDS
 _StCpmiles = _StCpmiles + RI.PASSMILES
 _StCphours = _StCphours + RI.PASSHOURS
 ;AM
 _AMStCbrds = _AMStCbrds + RI.AMBRDS
 _AMStCpmiles = _AMStCpmiles + RI.AMPMILES
 _AMStCphours = _AMStCphours + RI.AMPHOURS
 ;PM
 _PMStCbrds = _PMStCbrds + RI.PMBRDS
 _PMStCpmiles = _PMStCpmiles + RI.PMPMILES
 _PMStCphours = _PMStCphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPStCbrds = _OPStCbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPStCpmiles = _OPStCpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPStCphours = _OPStCphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=21-29) ;CCT
 _CCTbrds = _CCTbrds + RI.BOARDS
 _CCTpmiles = _CCTpmiles + RI.PASSMILES
 _CCTphours = _CCTphours + RI.PASSHOURS
 ;AM
 _AMCCTbrds = _AMCCTbrds + RI.AMBRDS
 _AMCCTpmiles = _AMCCTpmiles + RI.AMPMILES
 _AMCCTphours = _AMCCTphours + RI.AMPHOURS
 ;PM
 _PMCCTbrds = _PMCCTbrds + RI.PMBRDS
 _PMCCTpmiles = _PMCCTpmiles + RI.PMPMILES
 _PMCCTphours = _PMCCTphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPCCTbrds = _OPCCTbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPCCTpmiles = _OPCCTpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPCCTphours = _OPCCTphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=31-39) ;DOUGLAS
 _Dougbrds = _DOUGbrds + RI.BOARDS
 _Dougpmiles = _DOUGpmiles + RI.PASSMILES
 _Dougphours = _DOUGphours + RI.PASSHOURS
 ;AM
 _AMDOUGbrds = _AMDOUGbrds + RI.AMBRDS
 _AMDOUGpmiles = _AMDOUGpmiles + RI.AMPMILES
 _AMDOUGphours = _AMDOUGphours + RI.AMPHOURS
 ;PM
 _PMDOUGbrds = _PMDOUGbrds + RI.PMBRDS
 _PMDOUGpmiles = _PMDOUGpmiles + RI.PMPMILES
 _PMDOUGphours = _PMDOUGphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPDOUGbrds = _OPDOUGbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPDOUGpmiles = _OPDOUGpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPDOUGphours = _OPDOUGphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=41-49) ;GCT
 _GCTbrds = _GCTbrds + RI.BOARDS
 _GCTpmiles = _GCTpmiles + RI.PASSMILES
 _GCTphours = _GCTphours + RI.PASSHOURS
 ;AM
 _AMGCTbrds = _AMGCTbrds + RI.AMBRDS
 _AMGCTpmiles = _AMGCTpmiles + RI.AMPMILES
 _AMGCTphours = _AMGCTphours + RI.AMPHOURS
 ;PM
 _PMGCTbrds = _PMGCTbrds + RI.PMBRDS
 _PMGCTpmiles = _PMGCTpmiles + RI.PMPMILES
 _PMGCTphours = _PMGCTphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPGCTbrds = _OPGCTbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPGCTpmiles = _OPGCTpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPGCTphours = _OPGCTphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=41-58) ;GRTA
 _GRTAbrds = _GRTAbrds + RI.BOARDS
 _GRTApmiles = _GRTApmiles + RI.PASSMILES
 _GRTAphours = _GRTAphours + RI.PASSHOURS
 ;AM
 _AMGRTAbrds = _AMGRTAbrds + RI.AMBRDS
 _AMGRTApmiles = _AMGRTApmiles + RI.AMPMILES
 _AMGRTAphours = _AMGRTAphours + RI.AMPHOURS
 ;PM
 _PMGRTAbrds = _PMGRTAbrds + RI.PMBRDS
 _PMGRTApmiles = _PMGRTApmiles + RI.PMPMILES
 _PMGRTAphours = _PMGRTAphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPGRTAbrds = _OPGRTAbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPGRTApmiles = _OPGRTApmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPGRTAphours = _OPGRTAphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=61-69) ;CAT
 _CATbrds = _CATbrds + RI.BOARDS
 _CATpmiles = _CATpmiles + RI.PASSMILES
 _CATphours = _CATphours + RI.PASSHOURS
 ;AM
 _AMCATbrds = _AMCATbrds + RI.AMBRDS
 _AMCATpmiles = _AMCATpmiles + RI.AMPMILES
 _AMCATphours = _AMCATphours + RI.AMPHOURS
 ;PM
 _PMCATbrds = _PMCATbrds + RI.PMBRDS
 _PMCATpmiles = _PMCATpmiles + RI.PMPMILES
 _PMCATphours = _PMCATphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPCATbrds = _OPCATbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPCATpmiles = _OPCATpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPCATphours = _OPCATphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=71-79) ;HAT
 _HATbrds = _HATbrds + RI.BOARDS
 _HATpmiles = _HATpmiles + RI.PASSMILES
 _HATphours = _HATphours + RI.PASSHOURS
 ;AM
 _AMHATbrds = _AMHATbrds + RI.AMBRDS
 _AMHATpmiles = _AMHATpmiles + RI.AMPMILES
 _AMHATphours = _AMHATphours + RI.AMPHOURS
 ;PM
 _PMHATbrds = _PMHATbrds + RI.PMBRDS
 _PMHATpmiles = _PMHATpmiles + RI.PMPMILES
 _PMHATphours = _PMHATphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPHATbrds = _OPHATbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPHATpmiles = _OPHATpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPHATphours = _OPHATphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.MODE=100) ;SHUTTLE
 _SHUbrds = _SHUbrds + RI.BOARDS
 _SHUpmiles = _SHUpmiles + RI.PASSMILES
 _SHUphours = _SHUphours + RI.PASSHOURS
 ;AM
 _AMSHUbrds = _AMSHUbrds + RI.AMBRDS
 _AMSHUpmiles = _AMSHUpmiles + RI.AMPMILES
 _AMSHUphours = _AMSHUphours + RI.AMPHOURS
 ;PM
 _PMSHUbrds = _PMSHUbrds + RI.PMBRDS
 _PMSHUpmiles = _PMSHUpmiles + RI.PMPMILES
 _PMSHUphours = _PMSHUphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPSHUbrds = _OPSHUbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPSHUpmiles = _OPSHUpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPSHUphours = _OPSHUphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSE  ;OTHER
 _OTHbrds = _OTHbrds + RI.BOARDS
 _OTHpmiles = _OTHpmiles + RI.PASSMILES
 _OTHphours = _OTHphours + RI.PASSHOURS
 ;AM
 _AMOTHbrds = _AMOTHbrds + RI.AMBRDS
 _AMOTHpmiles = _AMOTHpmiles + RI.AMPMILES
 _AMOTHphours = _AMOTHphours + RI.AMPHOURS
 ;PM
 _PMOTHbrds = _PMOTHbrds + RI.PMBRDS
 _PMOTHpmiles = _PMOTHpmiles + RI.PMPMILES
 _PMOTHphours = _PMOTHphours + RI.PMPHOURS
 ;OFF PEAK + AIRPASS
 _OPOTHbrds = _OPOTHbrds + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 _OPOTHpmiles = _OPOTHpmiles + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 _OPOTHphours = _OPOTHphours + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ENDIF

;process MARTA rail separately
IF(RI.NAME='MARTA RAIL BLUE')
 BrdsBlue = RI.BOARDS
 PMileBlue = RI.PASSMILES
 PHourBlue = RI.PASSHOURS
 ;AM
 AMBrdsBlue = RI.AMBRDS
 AMPMileBlue = RI.AMPMILES
 AMPHourBlue = RI.AMPHOURS
 ;PM
 PMBrdsBlue = RI.PMBRDS
 PMPMileBlue = RI.PMPMILES
 PMPHourBlue = RI.PMPHOURS
 ;OFFPEAK + AIRPASS
 OPBrdsBlue =  RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 OPPMileBlue = RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 OPPHourBlue = RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.NAME='MARTA RAIL GOLD')
 BrdsGold = RI.BOARDS
 PMileGold = RI.PASSMILES
 PHourGold = RI.PASSHOURS
 ;AM
 AMBrdsGold = RI.AMBRDS
 AMPMileGold = RI.AMPMILES
 AMPHourGold = RI.AMPHOURS
 ;PM
 PMBrdsGold = RI.PMBRDS
 PMPMileGold = RI.PMPMILES
 PMPHourGold = RI.PMPHOURS
 ;OFFPEAK + AIRPASS
 OPBrdsGold =  RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 OPPMileGold = RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 OPPHourGold = RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.NAME='MARTA RAIL GREEN' | RI.NAME='MARTA RAIL GREEN NIGHT')
 BrdsGreen = BrdsGreen + RI.BOARDS
 PMileGreen = PMileGreen + RI.PASSMILES
 PHourGreen = PHourGreen + RI.PASSHOURS
 ;AM
 AMBrdsGreen = AMBrdsGreen + RI.AMBRDS
 AMPMileGreen = AMPMileGreen + RI.AMPMILES
 AMPHourGreen = AMPHourGreen + RI.AMPHOURS
 ;PM
 PMBrdsGreen = PMBrdsGreen + RI.PMBRDS
 PMPMileGreen = PMPMileGreen + RI.PMPMILES
 PMPHourGreen = PMPHourGreen + RI.PMPHOURS
 ;OFFPEAK + AIRPASS
 OPBrdsGreen =  OPBrdsGreen + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 OPPMileGreen = OPPMileGreen + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 OPPHourGreen = OPPHourGreen + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ELSEIF(RI.NAME='MARTA RAIL RED' | RI.NAME='MARTA RAIL RED NIGHT')
 BrdsRed = BrdsRed + RI.BOARDS
 PMileRed = PMileRed + RI.PASSMILES
 PHourRed = PHourRed + RI.PASSHOURS
 ;AM
 AMBrdsRed = AMBrdsRed + RI.AMBRDS
 AMPMileRed = AMPMileRed + RI.AMPMILES
 AMPHourRed = AMPHourRed + RI.AMPHOURS
 ;PM
 PMBrdsRed = PMBrdsRed + RI.PMBRDS
 PMPMileRed = PMPMileRed + RI.PMPMILES
 PMPHourRed = PMPHourRed + RI.PMPHOURS
 ;OFFPEAK + AIRPASS
 OPBrdsRed =  OPBrdsRed + RI.EABRDS + RI.MDBRDS + RI.EVBRDS + RI.APBRDS
 OPPMileRed = OPPMileRed + RI.EAPMILES + RI.MDPMILES + RI.EVPMILES + RI.APPMILES
 OPPHourRed = OPPHourRed + RI.EAPHOURS + RI.MDPHOURS + RI.EVPHOURS + RI.APPHOURS
ENDIF

IF(RECI.RECNO=RECI.NUMRECORDS)
PRINT CSV=T,LIST='Transit assignment data',PRINTO=1
PRINT CSV=T,LIST='Operator/Rail Line,Boardings,Pass Miles,Pass Hours,AM Brds,AM PMiles,AM PHours,PM Brds,PM PMiles,PM PHours,OP Brds,OP PMiles,OP PHours',PRINTO=1
PRINT CSV=T,LIST='MARTA Blue Line',BrdsBlue,PMileBlue,PHourBlue,AMBrdsBlue,AMPMileBlue,AMPHourBlue,PMBrdsBlue,PMPMileBlue,PMPHourBlue,OPBrdsBlue,OPPMileBlue,OPPHourBlue,PRINTO=1
PRINT CSV=T,LIST='MARTA Gold Line',BrdsGold,PMileGold,PHourGold,AMBrdsGold,AMPMileGold,AMPHourGold,PMBrdsGold,PMPMileGold,PMPHourGold,OPBrdsGold,OPPMileGold,OPPHourGold,PRINTO=1
PRINT CSV=T,LIST='MARTA Green Line',BrdsGreen,PMileGreen,PHourGreen,AMBrdsGreen,AMPMileGreen,AMPHourGreen,PMBrdsGreen,PMPMileGreen,PMPHourGreen,OPBrdsGreen,OPPMileGreen,OPPHourGreen,PRINTO=1
PRINT CSV=T,LIST='MARTA Red Line',BrdsRed,PMileRed,PHourRed,AMBrdsRed,AMPMileRed,AMPHourRed,PMBrdsRed,PMPMileRed,PMPHourRed,OPBrdsRed,OPPMileRed,OPPHourRed,PRINTO=1
PRINT CSV=T,LIST='MARTA bus',_MARTAbrds,_MARTApmiles,_MARTAphours,_AMMARTAbrds,_AMMARTApmiles,_AMMARTAphours,_PMMARTAbrds,_PMMARTApmiles,_PMMARTAphours,_OPMARTAbrds,_OPMARTApmiles,_OPMARTAphours,PRINTO=1
PRINT CSV=T,LIST='Streetcar/Light rail',_STCbrds,_STCpmiles,_STCphours,_AMSTCbrds,_AMSTCpmiles,_AMSTCphours,_PMSTCbrds,_PMSTCpmiles,_PMSTCphours,_OPSTCbrds,_OPSTCpmiles,_OPSTCphours,PRINTO=1
PRINT CSV=T,LIST='CCT',_CCTbrds,_CCTpmiles,_CCTphours,_AMCCTbrds,_AMCCTpmiles,_AMCCTphours,_PMCCTbrds,_PMCCTpmiles,_PMCCTphours,_OPCCTbrds,_OPCCTpmiles,_OPCCTphours,PRINTO=1
PRINT CSV=T,LIST='Douglas',_DOUGbrds,_DOUGpmiles,_DOUGphours,_AMDOUGbrds,_AMDOUGpmiles,_AMDOUGphours,_PMDOUGbrds,_PMDOUGpmiles,_PMDOUGphours,_OPDOUGbrds,_OPDOUGpmiles,_OPDOUGphours,PRINTO=1
PRINT CSV=T,LIST='GCT',_GCTbrds,_GCTpmiles,_GCTphours,_AMGCTbrds,_AMGCTpmiles,_AMGCTphours,_PMGCTbrds,_PMGCTpmiles,_PMGCTphours,_OPGCTbrds,_OPGCTpmiles,_OPGCTphours,PRINTO=1
PRINT CSV=T,LIST='GRTA',_GRTAbrds,_GRTApmiles,_GRTAphours,_AMGRTAbrds,_AMGRTApmiles,_AMGRTAphours,_PMGRTAbrds,_PMGRTApmiles,_PMGRTAphours,_OPGRTAbrds,_OPGRTApmiles,_OPGRTAphours,PRINTO=1
PRINT CSV=T,LIST='CAT',_CATbrds,_CATpmiles,_CATphours,_AMCATbrds,_AMCATpmiles,_AMCATphours,_PMCATbrds,_PMCATpmiles,_PMCATphours,_OPCATbrds,_OPCATpmiles,_OPCATphours,PRINTO=1
PRINT CSV=T,LIST='HAT',_HATbrds,_HATpmiles,_HATphours,_AMHATbrds,_AMHATpmiles,_AMHATphours,_PMHATbrds,_PMHATpmiles,_PMHATphours,_OPHATbrds,_OPHATpmiles,_OPHATphours,PRINTO=1
PRINT CSV=T,LIST='Shuttles',_SHUbrds,_SHUpmiles,_SHUphours,_AMSHUbrds,_AMSHUpmiles,_AMSHUphours,_PMSHUbrds,_PMSHUpmiles,_PMSHUphours,_OPSHUbrds,_OPSHUpmiles,_OPSHUphours,PRINTO=1
PRINT CSV=T,LIST='Other',_OTHbrds,_OTHpmiles,_OTHphours,_AMOTHbrds,_AMOTHpmiles,_AMOTHphours,_PMOTHbrds,_PMOTHpmiles,_PMOTHphours,_OPOTHbrds,_OPOTHpmiles,_OPOTHphours,PRINTO=1
PRINT CSV=T,LIST='Total',_brds,_pmiles,_phours,_AMbrds,_AMpmiles,_AMphours,_PMbrds,_PMpmiles,_PMphours,_OPbrds,_OPpmiles,_OPphours,PRINTO=1

ENDIF
ENDRUN
;========================================================

;============================================================================================
;Tabulate workers within 45 minutes of activity centers
;create TAZ data file with activity centers and number of households in each TAZ
RUN PGM=MATRIX
RECI=Parameters\TAZ_Data.DBF
LOOKUPI=ZoneData.DBF
RECO=Eval\TAZ_ActCtr.DBF,FIELDS=TAZ,NAME(20),NUMBER,HSHLDS

;-------------------------------
;# households lookup
 LOOKUP NAME=MTAZ,
  LOOKUP[1]=ZONE,RESULT=HSHLD,
  INTERPOLATE=N,LOOKUPI=1


RO.TAZ=RI.ZONE
RO.NUMBER=RI.ACTCTRNUM
RO.NAME=RI.ACTCTR
RO.HSHLDS=MTAZ(1,RI.ZONE)
WRITE RECO=1
ENDRUN

;accumulate the total number of workers for each TAZ
RUN PGM=MATRIX
RECI=Eval\TAZ_ActCtr.DBF
DBI[1]=hhData.DBF,SORT=TAZ
RECO[1]=Eval\TAZ_Data.DBF,FIELDS=TAZ,NAME,NUMBER,WORKERS,HSHLDS,POP,INCPOP1,INCPOP2,INCPOP3,INCPOP4
ZONES=1
;set tabulations to zero each time through
  _WORKERS=0
  _POP=0
  _INCPOP1=0
  _INCPOP2=0
  _INCPOP3=0
  _INCPOP4=0
  
  MTAZ = RI.TAZ
  RO.TAZ = RI.TAZ
  RO.NAME=RI.NAME
  RO.NUMBER=RI.NUMBER
  RO.HSHLDS=RI.HSHLDS
;-------------------------------------------
 y = DBISeek(1,RO.TAZ)   ;find first record of current RECI TAZ
  _cnt = 1
  LOOP HHSIZE=1,RO.HSHLDS     ;loop through the total households in a TAZ
   IF(_CNT=1)
    IF(RO.TAZ=DI.1.TAZ)
      _WORKERS = _WORKERS + DI.1.WORKERS
      _POP = _POP + DI.1.SIZE
      IF(DI.1.INCOME<=25000)
       _IncPop1 = _IncPop1 + DI.1.SIZE
      ELSEIF(DI.1.INCOME<=60000)
       _IncPop2 = _IncPop2 + DI.1.SIZE
      ELSEIF(DI.1.INCOME<=120000)
       _IncPop3 = _IncPop3 + DI.1.SIZE
      ELSE
       _IncPop4 = _IncPop4 + DI.1.SIZE
      ENDIF
    ENDIF
   ENDIF
   IF(DBI.1.RECNO<DBI.1.NUMRECORDS) ;check on last record
    w=DBIreadNext(1,1)   ;read next record and accumulate workers
    _CNT = _CNT + 1
     IF(RO.TAZ = DI.1.TAZ)
       _WORKERS = _WORKERS + DI.1.WORKERS
       _POP = _POP + DI.1.SIZE
      IF(DI.1.INCOME<=25000)
       _IncPop1 = _IncPop1 + DI.1.SIZE
      ELSEIF(DI.1.INCOME<=60000)
       _IncPop2 = _IncPop2 + DI.1.SIZE
      ELSEIF(DI.1.INCOME<=120000)
       _IncPop3 = _IncPop3 + DI.1.SIZE
      ELSE
       _IncPop4 = _IncPop4 + DI.1.SIZE
      ENDIF
     ENDIF
   ENDIF
  ENDLOOP
 
  RO.WORKERS=_WORKERS
  RO.POP=_pop
  RO.INCPOP1=_incpop1
  RO.INCPOP2=_incpop2
  RO.INCPOP3=_incpop3
  RO.INCPOP4=_incpop4
  WRITE RECO=1
  
 ENDRUN
 
;FLAG OD MATRIX FOR ZONE PAIRS WITHIN 45 MINUTES OF IDENTIFIED ACTIVITY CENTERS 
RUN PGM=MATRIX
MATI[1]=AMTIME.SKM  ;matrix with all travel times by mode
ZDATI[1]=Eval\TAZ_Data.DBF,Z=TAZ
MATO[1]=Eval\ActivityCenter45MinutesSOVFree.SKM,MO=101-113,NAME=Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPl,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCtr
MATO[2]=Eval\ActivityCenter45MinutesWlkTrn.SKM,MO=201-213,NAME=Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPl,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCtr
MATO[3]=Eval\ActivityCenter45MinutesDrvTrn.SKM,MO=301-313,NAME=Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPl,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCtr
ZONEMSG=50

JLOOP
 IF(ZI.1.NUMBER[J]=1)        ;airport
  IF(MI.1.SOVFR<=45)     MW[101]=1
  IF(MI.1.WLKALLWLK=1-45) MW[201]=1
  IF(MI.1.PNRALLWLK=1-45) MW[301]=1
 ELSEIF(ZI.1.NUMBER[J]=2)    ;buckhead
  IF(MI.1.SOVFR<=45)     MW[102]=1
  IF(MI.1.WLKALLWLK=1-45) MW[202]=1
  IF(MI.1.PNRALLWLK=1-45) MW[302]=1
 ELSEIF(ZI.1.NUMBER[J]=3)    ;cumberland
  IF(MI.1.SOVFR<=45)     MW[103]=1
  IF(MI.1.WLKALLWLK=1-45) MW[203]=1
  IF(MI.1.PNRALLWLK=1-45) MW[303]=1
 ELSEIF(ZI.1.NUMBER[J]=4)    ;downtown
  IF(MI.1.SOVFR<=45)     MW[104]=1
  IF(MI.1.WLKALLWLK=1-45) MW[204]=1
  IF(MI.1.PNRALLWLK=1-45) MW[304]=1
 ELSEIF(ZI.1.NUMBER[J]=5)    ;emory
  IF(MI.1.SOVFR<=45)     MW[105]=1
  IF(MI.1.WLKALLWLK=1-45) MW[205]=1
  IF(MI.1.PNRALLWLK=1-45) MW[305]=1
 ELSEIF(ZI.1.NUMBER[J]=6)    ;fulton ind
  IF(MI.1.SOVFR<=45)     MW[106]=1
  IF(MI.1.WLKALLWLK=1-45) MW[206]=1
  IF(MI.1.PNRALLWLK=1-45) MW[306]=1
 ELSEIF(ZI.1.NUMBER[J]=7)    ;gwt place
  IF(MI.1.SOVFR<=45)     MW[107]=1
  IF(MI.1.WLKALLWLK=1-45) MW[207]=1
  IF(MI.1.PNRALLWLK=1-45) MW[307]=1
 ELSEIF(ZI.1.NUMBER[J]=8)    ;midtown 
  IF(MI.1.SOVFR<=45)     MW[108]=1
  IF(MI.1.WLKALLWLK=1-45) MW[208]=1
  IF(MI.1.PNRALLWLK=1-45) MW[308]=1
 ELSEIF(ZI.1.NUMBER[J]=9)    ;norcross
  IF(MI.1.SOVFR<=45)     MW[109]=1
  IF(MI.1.WLKALLWLK=1-45) MW[209]=1
  IF(MI.1.PNRALLWLK=1-45) MW[309]=1
 ELSEIF(ZI.1.NUMBER[J]=10)   ;north point
  IF(MI.1.SOVFR<=45)     MW[110]=1
  IF(MI.1.WLKALLWLK=1-45) MW[210]=1
  IF(MI.1.PNRALLWLK=1-45) MW[310]=1
 ELSEIF(ZI.1.NUMBER[J]=11)   ;perimeter
  IF(MI.1.SOVFR<=45)     MW[111]=1
  IF(MI.1.WLKALLWLK=1-45) MW[211]=1
  IF(MI.1.PNRALLWLK=1-45) MW[311]=1
 ELSEIF(ZI.1.NUMBER[J]=12)   ;southlake
  IF(MI.1.SOVFR<=45)     MW[112]=1
  IF(MI.1.WLKALLWLK=1-45) MW[212]=1
  IF(MI.1.PNRALLWLK=1-45) MW[312]=1
 ELSEIF(ZI.1.NUMBER[J]=13)   ;town center
  IF(MI.1.SOVFR<=45)     MW[113]=1
  IF(MI.1.WLKALLWLK=1-45) MW[213]=1
  IF(MI.1.PNRALLWLK=1-45) MW[313]=1
 ENDIF
ENDJLOOP
ENDRUN

;FLAG ORIGIN ZONES THAT ARE WITHIN 45 MINUTES OF AT LEAST ONE ACTIVITY CENTER ZONE
LOOP N=1,3  ;loop through three modes
 IF(N=1) MODE = 'SOVFree'
 IF(N=2) MODE = 'WlkTrn'
 IF(N=3) MODE = 'DrvTrn'
RUN PGM=MATRIX
MATI[1]=Eval\ActivityCenter45Minutes@mode@.SKM
RECO[1]=Eval\ActivityCenter45MinutesFlag@mode@.DBF,FIELDS=TAZ,Airport,Buckhead,Cumberland,Downtown,Emory,FltnInd,GwtPl,Midtown,Norcross,NorthPoint,Perimeter,Southlake,TownCtr
ZONEMSG=100

FILLMW MW[1]=MI.1.1(13)
;sum each activity center row total for checking
 ROWSUM1 = ROWSUM(1)
 ROWSUM2 = ROWSUM(2)
 ROWSUM3 = ROWSUM(3)
 ROWSUM4 = ROWSUM(4)
 ROWSUM5 = ROWSUM(5)
 ROWSUM6 = ROWSUM(6)
 ROWSUM7 = ROWSUM(7)
 ROWSUM8 = ROWSUM(8)
 ROWSUM9 = ROWSUM(9)
 ROWSUM10= ROWSUM(10)
 ROWSUM11= ROWSUM(11)
 ROWSUM12= ROWSUM(12)
 ROWSUM13= ROWSUM(13)

RO.TAZ=I
 
;re-set for each I-zone
RO.Airport=0 
RO.Buckhead=0 
RO.Cumberland=0 
RO.Downtown=0 
RO.Emory=0 
RO.FltnInd=0 
RO.GwtPl=0 
RO.Midtown=0 
RO.Norcross=0 
RO.NorthPoint=0 
RO.Perimeter=0 
RO.Southlake=0 
RO.TownCtr=0 
 
;check if row sum > 0, if yes, then that row (origin zone) is within 45 minutes of at least one zone listed for the activity center
IF(ROWSUM1>0)  RO.Airport=1
IF(ROWSUM2>0)  RO.Buckhead=1
IF(ROWSUM3>0)  RO.Cumberland=1
IF(ROWSUM4>0)  RO.Downtown=1
IF(ROWSUM5>0)  RO.Emory=1
IF(ROWSUM6>0)  RO.FltnInd=1
IF(ROWSUM7>0)  RO.GwtPl=1
IF(ROWSUM8>0)  RO.Midtown=1
IF(ROWSUM9>0)  RO.Norcross=1
IF(ROWSUM10>0) RO.NorthPoint=1
IF(ROWSUM11>0) RO.Perimeter=1
IF(ROWSUM12>0) RO.Southlake=1
IF(ROWSUM13>0) RO.TownCtr=1
WRITE RECO=1

ENDRUN
ENDLOOP

RUN PGM=MATRIX
ZDATI[1]=Eval\TAZ_Data.DBF,Z=TAZ
ZDATI[2]=Eval\ActivityCenter45MinutesFlagSOVFree.DBF,Z=TAZ
ZDATI[3]=Eval\ActivityCenter45MinutesFlagWlkTrn.DBF,Z=TAZ
ZDATI[4]=Eval\ActivityCenter45MinutesFlagDrvTrn.DBF,Z=TAZ
PRINTO[1]=Eval\WorkersWithin45MinutesActCenters.CSV
ZONES={lastin}
ZONEMSG=100
;multiply workers by 45 minute flag for each activity center
;sov free
_airport1    = _airport1    + ZI.1.WORKERS * ZI.2.AIRPORT
_buckhead1   = _buckhead1   + ZI.1.WORKERS * ZI.2.BUCKHEAD
_cumberland1 = _cumberland1 + ZI.1.WORKERS * ZI.2.CUMBERLAND
_downtown1   = _downtown1   + ZI.1.WORKERS * ZI.2.DOWNTOWN
_emory1      = _emory1      + ZI.1.WORKERS * ZI.2.EMORY
_fltnind1    = _fltnind1    + ZI.1.WORKERS * ZI.2.FLTNIND
_gwtpl1      = _gwtpl1      + ZI.1.WORKERS * ZI.2.GWTPL
_midtown1    = _midtown1    + ZI.1.WORKERS * ZI.2.MIDTOWN
_norcross1   = _norcross1   + ZI.1.WORKERS * ZI.2.NORCROSS
_northpoint1 = _northpoint1 + ZI.1.WORKERS * ZI.2.NORTHPOINT
_perimeter1  = _perimeter1  + ZI.1.WORKERS * ZI.2.PERIMETER
_southlake1  = _southlake1  + ZI.1.WORKERS * ZI.2.SOUTHLAKE
_townctr1    = _townctr1    + ZI.1.WORKERS * ZI.2.TOWNCTR
;wlktrn
_airport2    = _airport2    + ZI.1.WORKERS * ZI.3.AIRPORT
_buckhead2   = _buckhead2   + ZI.1.WORKERS * ZI.3.BUCKHEAD
_cumberland2 = _cumberland2 + ZI.1.WORKERS * ZI.3.CUMBERLAND
_downtown2   = _downtown2   + ZI.1.WORKERS * ZI.3.DOWNTOWN
_emory2      = _emory2      + ZI.1.WORKERS * ZI.3.EMORY
_fltnind2    = _fltnind2    + ZI.1.WORKERS * ZI.3.FLTNIND
_gwtpl2      = _gwtpl2      + ZI.1.WORKERS * ZI.3.GWTPL
_midtown2    = _midtown2    + ZI.1.WORKERS * ZI.3.MIDTOWN
_norcross2   = _norcross2   + ZI.1.WORKERS * ZI.3.NORCROSS
_northpoint2 = _northpoint2 + ZI.1.WORKERS * ZI.3.NORTHPOINT
_perimeter2  = _perimeter2  + ZI.1.WORKERS * ZI.3.PERIMETER
_southlake2  = _southlake2  + ZI.1.WORKERS * ZI.3.SOUTHLAKE
_townctr2    = _townctr2    + ZI.1.WORKERS * ZI.3.TOWNCTR
;drvtrn  
_airport3    = _airport3    + ZI.1.WORKERS * ZI.4.AIRPORT
_buckhead3   = _buckhead3   + ZI.1.WORKERS * ZI.4.BUCKHEAD
_cumberland3 = _cumberland3 + ZI.1.WORKERS * ZI.4.CUMBERLAND
_downtown3   = _downtown3   + ZI.1.WORKERS * ZI.4.DOWNTOWN
_emory3      = _emory3      + ZI.1.WORKERS * ZI.4.EMORY
_fltnind3    = _fltnind3    + ZI.1.WORKERS * ZI.4.FLTNIND
_gwtpl3      = _gwtpl3      + ZI.1.WORKERS * ZI.4.GWTPL
_midtown3    = _midtown3    + ZI.1.WORKERS * ZI.4.MIDTOWN
_norcross3   = _norcross3   + ZI.1.WORKERS * ZI.4.NORCROSS
_northpoint3 = _northpoint3 + ZI.1.WORKERS * ZI.4.NORTHPOINT
_perimeter3  = _perimeter3  + ZI.1.WORKERS * ZI.4.PERIMETER
_southlake3  = _southlake3  + ZI.1.WORKERS * ZI.4.SOUTHLAKE
_townctr3    = _townctr3    + ZI.1.WORKERS * ZI.4.TOWNCTR

IF(I={lastin})
 PRINT CSV=T,LIST='Number of workers within 45 minutes of activity centers',PRINTO=1
 PRINT CSV=T,LIST='Activity Center,SOV,Walk to Transit, Drive to Transit',PRINTO=1
 PRINT CSV=T,LIST='Airport',_airport1,_airport2,_airport3,PRINTO=1
 PRINT CSV=T,LIST='Buckhead',_buckhead1,_buckhead2,_buckhead3,PRINTO=1
 PRINT CSV=T,LIST='Cumberland',_cumberland1,_cumberland2,_cumberland3,PRINTO=1
 PRINT CSV=T,LIST='Downtown',_downtown1,_downtown2,_downtown3,PRINTO=1
 PRINT CSV=T,LIST='Emory',_emory1,_emory2,_emory3,PRINTO=1
 PRINT CSV=T,LIST='Fltn Ind',_fltnind1,_fltnind2,_fltnind3,PRINTO=1
 PRINT CSV=T,LIST='Gwt Place',_gwtpl1,_gwtpl2,_gwtpl3,PRINTO=1
 PRINT CSV=T,LIST='Midtown',_midtown1,_midtown2,_midtown3,PRINTO=1
 PRINT CSV=T,LIST='Norcross',_norcross1,_norcross2,_norcross3,PRINTO=1
 PRINT CSV=T,LIST='North Point',_northpoint1,_northpoint2,_northpoint3,PRINTO=1
 PRINT CSV=T,LIST='Perimeter',_perimeter1,_perimeter2,_perimeter3,PRINTO=1
 PRINT CSV=T,LIST='Southlake',_southlake1,_southlake2,_southlake3,PRINTO=1
 PRINT CSV=T,LIST='Town Ctr',_townctr1,_townctr2,_townctr3,PRINTO=1
ENDIF

ENDRUN

;===========================================================================
;Tabulate population and employment within half mile of transit stop
;---------------------------------------------------------------------
;Read in assignment file and flag zones with a walk connector <= 1/2 mile
RUN PGM=MATRIX
RECI=WLK_ALLTRN_WLK_AM.DBF
RECO[1]=Eval\STOP_NODES.TMP,FIELDS=N,STOP
RECO[2]=Eval\ZonesHalfMile.TMP,FIELDS=N,STOP

IF(RI.STOPA=1)
 RO.N=RI.A
 RO.STOP=1
 WRITE RECO=1
ENDIF
IF(RI.DIST<=0.5 & RI.A<={lastin})
 RO.N=RI.A
 RO.STOP=1
 WRITE RECO=2
ENDIF
ENDRUN
;add stop flag as a node attribute
RUN PGM=NETWORK
NETI=HWY{year}FF.NET
NODEI[2]=Eval\STOP_NODES.TMP
NODEO=Eval\STOPS_NODES.DBF,INCLUDE=N,STOP
NETO=Eval\STOPS_NODES.NET

ENDRUN

;read in multiple connectors <= half mile and write out to zone list w/ stop flag
RUN PGM=MATRIX
ZDATI[1]=Eval\ZonesHalfMile.TMP,Z=N
RECO=Eval\ZonesHalfMileTransit.DBF,FIELDS=ZONE,STOP
ZONES={lastin}
ZONEMSG=100

RO.ZONE=I
IF(ZI.1.STOP=1)
 RO.STOP=1
ELSE
 RO.STOP=0
ENDIF
WRITE RECO=1
ENDRUN

;tabulate population and employment within half mile of transit stop
RUN PGM=MATRIX
ZDATI[1]=ZoneData.DBF,Z=ZONE
ZDATI[2]=Eval\ZonesHalfMileTransit.DBF,Z=ZONE
ZDATI[3]=Eval\TAZ_Data.DBF,Z=TAZ
PRINTO[1]=Eval\PopulationEmploymentHalfMileTransitSummary.CSV
ZONES={lastin}
ZONEMSG=100

_EMP = _EMP + ZI.1.EMP
_POP = _POP + ZI.3.POP
_POP1 = _POP1 + ZI.3.INCPOP1
_POP2 = _POP2 + ZI.3.INCPOP2
_POP3 = _POP3 + ZI.3.INCPOP3
_POP4 = _POP4 + ZI.3.INCPOP4

IF(ZI.2.STOP=1)
 _HALFEMP = _HALFEMP + ZI.1.EMP
 _HALFPOP = _HALFPOP + ZI.3.POP
 _HALFPOP1 = _HALFPOP1 + ZI.3.INCPOP1
 _HALFPOP2 = _HALFPOP2 + ZI.3.INCPOP2
 _HALFPOP3 = _HALFPOP3 + ZI.3.INCPOP3
 _HALFPOP4 = _HALFPOP4 + ZI.3.INCPOP4
ENDIF

IF(I={lastin})
  PCTPOP = _HALFPOP / _POP * 100
  PCTEMP = _HALFEMP / _EMP * 100
  PCTPOP1 = _HALFPOP1 / _POP1 * 100
  PCTPOP2 = _HALFPOP2 / _POP2 * 100
  PCTPOP3 = _HALFPOP3 / _POP3 * 100
  PCTPOP4 = _HALFPOP4 / _POP4 * 100
  
 PRINT LIST='Population & Employment within half mile of transit stop',PRINTO=1
 PRINT LIST='SE data summary,Total,Within Half Mile,Percent',PRINTO=1
 PRINT CSV=T,LIST='Population',_POP,_HALFPOP,PCTPOP,PRINTO=1
 PRINT CSV=T,LIST='Employment',_EMP,_HALFEMP,PCTEMP,PRINTO=1
 PRINT CSV=T,LIST='Income 1 Population',_POP1,_HALFPOP1,PCTPOP1,PRINTO=1
 PRINT CSV=T,LIST='Income 2 Population',_POP2,_HALFPOP2,PCTPOP2,PRINTO=1
 PRINT CSV=T,LIST='Income 3 Population',_POP3,_HALFPOP3,PCTPOP3,PRINTO=1
 PRINT CSV=T,LIST='Income 4 Population',_POP4,_HALFPOP4,PCTPOP4,PRINTO=1

ENDIF
ENDRUN

;===============================================================================
;PROCESS JOINT TOUR DATA
;read joint trip data file but only tabulate a single tour
; - this is done by checking the stop_id and whether not the tour is inbound
RUN PGM=MATRIX
RECI=@jointtrip_data@,DELIMITER=',' HHID=1,TOUR_ID=2,STOP_ID=3,INBOUND=4,TOUR_PURP(C)=5,NUMPAR=15
PRINTO[1]=Eval\JointTourSummary.CSV
IF(RECI.RECNO>0)
 IF(RI.STOP_ID = -1,0 & RI.INBOUND=0)
  IF(RI.TOUR_PURP = 'eatout')
   _eattrs =  _eattrs + 1
   _eatptrs = _eatptrs + RI.NUMPAR
  ELSEIF(RI.TOUR_PURP = 'othdiscr')
   _distrs =  _distrs + 1
   _disptrs = _disptrs + RI.NUMPAR
  ELSEIF(RI.TOUR_PURP = 'othmaint')
   _maitrs =  _maitrs + 1
   _maiptrs = _maiptrs + RI.NUMPAR
  ELSEIF(RI.TOUR_PURP = 'shopping')
   _shptrs =  _shptrs + 1
   _shpptrs = _shpptrs + RI.NUMPAR
  ELSEIF(RI.TOUR_PURP = 'social')
   _soctrs =  _soctrs + 1
   _socptrs = _socptrs + RI.NUMPAR
  ENDIF
 ENDIF
ENDIF

IF(RECI.RECNO=RECI.NUMRECORDS)
;print # tours by purpose
 PRINT LIST='Joint tours by Purpose',PRINTO=1
 PRINT LIST='Tour Purpose,Tours,Person Tours',PRINTO=1
 PRINT CSV=T,LIST='Eat out',_eattrs,_eatptrs,PRINTO=1
 PRINT CSV=T,LIST='Discretionary',_distrs,_disptrs,PRINTO=1
 PRINT CSV=T,LIST='Maintenance',_maitrs,_maiptrs,PRINTO=1
 PRINT CSV=T,LIST='Shopping',_shptrs,_shpptrs,PRINTO=1
 PRINT CSV=T,LIST='Social',_soctrs,_socptrs,PRINTO=1
ENDIF

ENDRUN
;merge indiv and joint tour summaries (indiv tour summary generated earlier in script)
RUN PGM=MATRIX
DBI[1]=Eval\IndivTourSummary.CSV,DELIMITER=',' TourPurp(C)=1,Tours=2
DBI[2]=Eval\JointTourSummary.CSV,DELIMITER=',' TourPurp(C)=1,Tours=3
PRINTO[1]=Eval\ToursByPurposeSummary.CSV

ZONES=1

LOOP Indiv=1,DBI.1.NUMRECORDS  ;loop through all indiv tour purposes
 x = DBIReadRecord(1,Indiv)          ;read each individual record
 IF(DI.1.TourPurp = 'Work')          _indwrk = DI.1.Tours
 IF(DI.1.TourPurp = 'At-Work')       _indatw = DI.1.Tours
 IF(DI.1.TourPurp = 'Eat out')       _indeat = DI.1.Tours
 IF(DI.1.TourPurp = 'Escort')        _indesc = DI.1.Tours
 IF(DI.1.TourPurp = 'Discretionary') _inddis = DI.1.Tours
 IF(DI.1.TourPurp = 'Maintenance')   _indmai = DI.1.Tours
 IF(DI.1.TourPurp = 'School')        _indsch = DI.1.Tours
 IF(DI.1.TourPurp = 'Shopping')      _indshp = DI.1.Tours
 IF(DI.1.TourPurp = 'Social')        _indsoc = DI.1.Tours
 IF(DI.1.TourPurp = 'University')    _indunv = DI.1.Tours
 _indtot = _indtot + DI.1.TOURS
ENDLOOP
 
LOOP Joint=1,DBI.2.NUMRECORDS  ;loop through all joint tour purposes
 x = DBIReadRecord(2,Joint)          ;read each individual record
 IF(DI.2.TourPurp = 'Eat out')       _jnteat = DI.2.Tours
 IF(DI.2.TourPurp = 'Discretionary') _jntdis = DI.2.Tours
 IF(DI.2.TourPurp = 'Maintenance')   _jntmai = DI.2.Tours
 IF(DI.2.TourPurp = 'Shopping')      _jntshp = DI.2.Tours
 IF(DI.2.TourPurp = 'Social')        _jntsoc = DI.2.Tours
 _jnttot = _jnttot + DI.2.TOURS
ENDLOOP

;compute totals
_wrk = _indwrk
_atw = _indatw
_eat = _indeat + _jnteat
_esc = _indesc
_dis = _inddis + _jntdis
_mai = _indmai + _jntmai
_sch = _indsch
_shp = _indshp + _jntshp
_soc = _indsoc + _jntsoc
_unv = _indunv
_tot = _indtot + _jnttot

;compute percent
_wrkpct = _wrk / _tot*100
_atwpct = _atw / _tot*100
_eatpct = _eat / _tot*100
_escpct = _esc / _tot*100
_dispct = _dis / _tot*100
_maipct = _mai / _tot*100
_schpct = _sch / _tot*100
_shppct = _shp / _tot*100
_socpct = _soc / _tot*100
_unvpct = _unv / _tot*100
_totpct = _tot / _tot*100


;print # tours by purpose
 PRINT LIST='Tours by Purpose',PRINTO=1
 PRINT LIST='Tour Purpose,Individual Tours, Joint Tours, Total Tours, Percent Total',PRINTO=1
 PRINT CSV=T,LIST='Work',_indwrk,'0',_wrk,_wrkpct,PRINTO=1
 PRINT CSV=T,LIST='At-Work',_indatw,'0',_atw,_atwpct,PRINTO=1
 PRINT CSV=T,LIST='Eat out',_indeat,_jnteat,_eat,_eatpct,PRINTO=1
 PRINT CSV=T,LIST='Ecsort',_indesc,'0',_esc,_escpct,PRINTO=1
 PRINT CSV=T,LIST='Discretionary',_inddis,_jntdis,_dis,_dispct,PRINTO=1
 PRINT CSV=T,LIST='Maintenance',_indmai,_jntmai,_mai,_maipct,PRINTO=1
 PRINT CSV=T,LIST='School',_indsch,'0',_sch,_schpct,PRINTO=1
 PRINT CSV=T,LIST='Shopping',_indshp,_jntshp,_shp,_shppct,PRINTO=1
 PRINT CSV=T,LIST='Social',_indsoc,_jntsoc,_soc,_socpct,PRINTO=1
 PRINT CSV=T,LIST='University',_indunv,'0',_unv,_unvpct,PRINTO=1
 PRINT CSV=T,LIST='Total',_indtot,_jnttot,_tot,_totpct,PRINTO=1

ENDRUN

;========================================================================
;Highway assignment network summaries

RUN PGM=NETWORK
 NETI[1]=LOD{year}EV.NET
 NETO=LOD{year}EV_FINAL.NET

 V_PNREV=0
 V_KNREV=0

ENDRUN

LOOP TOD=1,5

IF(TOD=1)
 PER='EA'
 NETI='LOD{year}EA_FINAL.NET'
ELSEIF(TOD=2)
 PER='AM'
 NETI='LOD{year}AM_FINAL.NET'
ELSEIF(TOD=3)
 PER='MD'
 NETI='LOD{year}MD_FINAL.NET'
ELSEIF(TOD=4)
 PER='PM'
 NETI='LOD{year}PM_FINAL.NET'
ELSEIF(TOD=5)
 PER='EV'
 NETI='LOD{year}EV_FINAL.NET'
ENDIF
RUN PGM=NETWORK
NETI[1]=@NETI@

PRINTO[1]=Eval\NetworkSum@PER@.CSV
PRINTO[2]=Eval\NetworkVMTbySpeed@PER@.CSV

 SOV = V_SOV@PER@ + V_PNR@PER@ + V_KNR@PER@
 HOV = V_HOV@PER@
 TRK = V_COM@PER@ + V_MTK@PER@ + V_HTK@PER@

;set period lanes
IF(LANES@PER@>0)
 PERLANES = LANES@PER@
ELSE
 PERLANES = LANES
ENDIF
 
;split by facility type
;-----------------------------------------------
;INTERSTATE - Not managed lanes
IF(FACTYPE=1,4-6 & PROHIBIT=0-6)
 ;VMT
 _vmts1 = _vmts1 + SOV * DISTANCE
 _vmth1 = _vmth1 + HOV * DISTANCE
 _vmtt1 = _vmtt1 + TRK * DISTANCE
 ;VHT
 _vhts1 = _vhts1 + SOV * TIME_1/60
 _vhth1 = _vhth1 + HOV * TIME_1/60
 _vhtt1 = _vhtt1 + TRK * TIME_1/60
 ;del
 _dels1 = _dels1 + SOV * (TIME_1-TIME1)/60
 _delh1 = _delh1 + HOV * (TIME_1-TIME1)/60
 _delt1 = _delt1 + TRK * (TIME_1-TIME1)/60
;LOS
 _lnemile1 = _lnemile1 + DISTANCE * PERLANES
 IF(LOS = 'A/B')
  _losA1 = _losA1 + DISTANCE * PERLANES
 ELSEIF(LOS = 'C')
  _losC1 = _losC1 + DISTANCE * PERLANES
 ELSEIF(LOS = 'D')
  _losD1 = _losD1 + DISTANCE * PERLANES
 ELSEIF(LOS = 'E')
  _losE1 = _losE1 + DISTANCE * PERLANES
 ELSEIF(LOS = 'F')
  _losF1 = _losF1 + DISTANCE * PERLANES
 ENDIF
 
 ;VMT < 35
 IF(CGSTDSPD<35)
  _vmt35s1 = _vmt35s1 + SOV * DISTANCE
  _vmt35h1 = _vmt35h1 + HOV * DISTANCE
  _vmt35t1 = _vmt35t1 + TRK * DISTANCE
 ELSEIF(CGSTDSPD<55)
  _vmt55s1 = _vmt55s1 + SOV * DISTANCE
  _vmt55h1 = _vmt55h1 + HOV * DISTANCE
  _vmt55t1 = _vmt55t1 + TRK * DISTANCE
 ELSE
  _vmt99s1 = _vmt99s1 + SOV * DISTANCE
  _vmt99h1 = _vmt99h1 + HOV * DISTANCE
  _vmt99t1 = _vmt99t1 + TRK * DISTANCE
 ENDIF
;-----------------------------------------------
;INTERSTATE - managed lanes
ELSEIF(FACTYPE=1,4-6 & PROHIBIT=7-13)
 ;VMT
 _vmts2 = _vmts2 + SOV * DISTANCE
 _vmth2 = _vmth2 + HOV * DISTANCE
 _vmtt2 = _vmtt2 + TRK * DISTANCE
 ;VHT
 _vhts2 = _vhts2 + SOV * TIME_1/60
 _vhth2 = _vhth2 + HOV * TIME_1/60
 _vhtt2 = _vhtt2 + TRK * TIME_1/60
 ;del
 _dels2 = _dels2 + SOV * (TIME_1-TIME1)/60
 _delh2 = _delh2 + HOV * (TIME_1-TIME1)/60
 _delt2 = _delt2 + TRK * (TIME_1-TIME1)/60
;LOS
  _lnemile2 = _lnemile2 + DISTANCE * PERLANES
 IF(LOS = 'A/B')
  _losA2 = _losA2 + DISTANCE * PERLANES
 ELSEIF(LOS = 'C')
  _losC2 = _losC2 + DISTANCE * PERLANES
 ELSEIF(LOS = 'D')
  _losD2 = _losD2 + DISTANCE * PERLANES
 ELSEIF(LOS = 'E')
  _losE2 = _losE2 + DISTANCE * PERLANES
 ELSEIF(LOS = 'F')
  _losF2 = _losF2 + DISTANCE * PERLANES
 ENDIF
 ;VMT < 35
 IF(CGSTDSPD<35)
  _vmt35s2 = _vmt35s2 + SOV * DISTANCE
  _vmt35h2 = _vmt35h2 + HOV * DISTANCE
  _vmt35t2 = _vmt35t2 + TRK * DISTANCE
 ELSEIF(CGSTDSPD<55)
  _vmt55s2 = _vmt55s2 + SOV * DISTANCE
  _vmt55h2 = _vmt55h2 + HOV * DISTANCE
  _vmt55t2 = _vmt55t2 + TRK * DISTANCE
 ELSE
  _vmt99s2 = _vmt99s2 + SOV * DISTANCE
  _vmt99h2 = _vmt99h2 + HOV * DISTANCE
  _vmt99t2 = _vmt99t2 + TRK * DISTANCE
 ENDIF
;-----------------------------------------------
;Expressway/Parkway
ELSEIF(FACTYPE=2,3)
 ;VMT
 _vmts3 = _vmts3 + SOV * DISTANCE
 _vmth3 = _vmth3 + HOV * DISTANCE
 _vmtt3 = _vmtt3 + TRK * DISTANCE
 ;VHT
 _vhts3 = _vhts3 + SOV * TIME_1/60
 _vhth3 = _vhth3 + HOV * TIME_1/60
 _vhtt3 = _vhtt3 + TRK * TIME_1/60
 ;del
 _dels3 = _dels3 + SOV * (TIME_1-TIME1)/60
 _delh3 = _delh3 + HOV * (TIME_1-TIME1)/60
 _delt3 = _delt3 + TRK * (TIME_1-TIME1)/60
;LOS
  _lnemile3 = _lnemile3 + DISTANCE * PERLANES
 IF(LOS = 'A/B')
  _losA3 = _losA3 + DISTANCE * PERLANES
 ELSEIF(LOS = 'C')
  _losC3 = _losC3 + DISTANCE * PERLANES
 ELSEIF(LOS = 'D')
  _losD3 = _losD3 + DISTANCE * PERLANES
 ELSEIF(LOS = 'E')
  _losE3 = _losE3 + DISTANCE * PERLANES
 ELSEIF(LOS = 'F')
  _losF3 = _losF3 + DISTANCE * PERLANES
 ENDIF
 ;VMT < 35
 IF(CGSTDSPD<35)
  _vmt35s3 = _vmt35s3 + SOV * DISTANCE
  _vmt35h3 = _vmt35h3 + HOV * DISTANCE
  _vmt35t3 = _vmt35t3 + TRK * DISTANCE
 ELSEIF(CGSTDSPD<55)
  _vmt55s3 = _vmt55s3 + SOV * DISTANCE
  _vmt55h3 = _vmt55h3 + HOV * DISTANCE
  _vmt55t3 = _vmt55t3 + TRK * DISTANCE
 ELSE
  _vmt99s3 = _vmt99s3 + SOV * DISTANCE
  _vmt99h3 = _vmt99h3 + HOV * DISTANCE
  _vmt99t3 = _vmt99t3 + TRK * DISTANCE
 ENDIF
;-----------------------------------------------
;Ramps
ELSEIF(FACTYPE=7-9)
 ;VMT
 _vmts4 = _vmts4 + SOV * DISTANCE
 _vmth4 = _vmth4 + HOV * DISTANCE
 _vmtt4 = _vmtt4 + TRK * DISTANCE
 ;VHT
 _vhts4 = _vhts4 + SOV * TIME_1/60
 _vhth4 = _vhth4 + HOV * TIME_1/60
 _vhtt4 = _vhtt4 + TRK * TIME_1/60
 ;del
 _dels4 = _dels4 + SOV * (TIME_1-TIME1)/60
 _delh4 = _delh4 + HOV * (TIME_1-TIME1)/60
 _delt4 = _delt4 + TRK * (TIME_1-TIME1)/60
;LOS
  _lnemile4 = _lnemile4 + DISTANCE * PERLANES
 IF(LOS = 'A/B')
  _losA4 = _losA4 + DISTANCE * PERLANES
 ELSEIF(LOS = 'C')
  _losC4 = _losC4 + DISTANCE * PERLANES
 ELSEIF(LOS = 'D')
  _losD4 = _losD4 + DISTANCE * PERLANES
 ELSEIF(LOS = 'E')
  _losE4 = _losE4 + DISTANCE * PERLANES
 ELSEIF(LOS = 'F')
  _losF4 = _losF4 + DISTANCE * PERLANES
 ENDIF
 ;VMT < 35
 IF(CGSTDSPD<35)
  _vmt35s4 = _vmt35s4 + SOV * DISTANCE
  _vmt35h4 = _vmt35h4 + HOV * DISTANCE
  _vmt35t4 = _vmt35t4 + TRK * DISTANCE
 ELSEIF(CGSTDSPD<55)
  _vmt55s4 = _vmt55s4 + SOV * DISTANCE
  _vmt55h4 = _vmt55h4 + HOV * DISTANCE
  _vmt55t4 = _vmt55t4 + TRK * DISTANCE
 ELSE
  _vmt99s4 = _vmt99s4 + SOV * DISTANCE
  _vmt99h4 = _vmt99h4 + HOV * DISTANCE
  _vmt99t4 = _vmt99t4 + TRK * DISTANCE
 ENDIF
;-----------------------------------------------
;Principal Arterial
ELSEIF(FACTYPE=10)
 ;VMT
 _vmts5 = _vmts5 + SOV * DISTANCE
 _vmth5 = _vmth5 + HOV * DISTANCE
 _vmtt5 = _vmtt5 + TRK * DISTANCE
 ;VHT
 _vhts5 = _vhts5 + SOV * TIME_1/60
 _vhth5 = _vhth5 + HOV * TIME_1/60
 _vhtt5 = _vhtt5 + TRK * TIME_1/60
 ;del
 _dels5 = _dels5 + SOV * (TIME_1-TIME1)/60
 _delh5 = _delh5 + HOV * (TIME_1-TIME1)/60
 _delt5 = _delt5 + TRK * (TIME_1-TIME1)/60
;LOS
  _lnemile5 = _lnemile5 + DISTANCE * PERLANES
 IF(LOS = 'A/B')
  _losA5 = _losA5 + DISTANCE * PERLANES
 ELSEIF(LOS = 'C')
  _losC5 = _losC5 + DISTANCE * PERLANES
 ELSEIF(LOS = 'D')
  _losD5 = _losD5 + DISTANCE * PERLANES
 ELSEIF(LOS = 'E')
  _losE5 = _losE5 + DISTANCE * PERLANES
 ELSEIF(LOS = 'F')
  _losF5 = _losF5 + DISTANCE * PERLANES
 ENDIF
 ;VMT < 35
 IF(CGSTDSPD<35)
  _vmt35s5 = _vmt35s5 + SOV * DISTANCE
  _vmt35h5 = _vmt35h5 + HOV * DISTANCE
  _vmt35t5 = _vmt35t5 + TRK * DISTANCE
 ELSEIF(CGSTDSPD<55)
  _vmt55s5 = _vmt55s5 + SOV * DISTANCE
  _vmt55h5 = _vmt55h5 + HOV * DISTANCE
  _vmt55t5 = _vmt55t5 + TRK * DISTANCE
 ELSE
  _vmt99s5 = _vmt99s5 + SOV * DISTANCE
  _vmt99h5 = _vmt99h5 + HOV * DISTANCE
  _vmt99t5 = _vmt99t5 + TRK * DISTANCE
 ENDIF
;-----------------------------------------------
;Minor Arterial
ELSEIF(FACTYPE=11-13)
 ;VMT
 _vmts5m = _vmts5m + SOV * DISTANCE
 _vmth5m = _vmth5m + HOV * DISTANCE
 _vmtt5m = _vmtt5m + TRK * DISTANCE
 ;VHT
 _vhts5m = _vhts5m + SOV * TIME_1/60
 _vhth5m = _vhth5m + HOV * TIME_1/60
 _vhtt5m = _vhtt5m + TRK * TIME_1/60
 ;del
 _dels5m = _dels5m + SOV * (TIME_1-TIME1)/60
 _delh5m = _delh5m + HOV * (TIME_1-TIME1)/60
 _delt5m = _delt5m + TRK * (TIME_1-TIME1)/60
;LOS
  _lnemile5m = _lnemile5m + DISTANCE * PERLANES
 IF(LOS = 'A/B')
  _losA5m = _losA5m + DISTANCE * PERLANES
 ELSEIF(LOS = 'C')
  _losC5m = _losC5m + DISTANCE * PERLANES
 ELSEIF(LOS = 'D')
  _losD5m = _losD5m + DISTANCE * PERLANES
 ELSEIF(LOS = 'E')
  _losE5m = _losE5m + DISTANCE * PERLANES
 ELSEIF(LOS = 'F')
  _losF5m = _losF5m + DISTANCE * PERLANES
 ENDIF
 ;VMT < 35
 IF(CGSTDSPD<35)
  _vmt35s5m = _vmt35s5m + SOV * DISTANCE
  _vmt35h5m = _vmt35h5m + HOV * DISTANCE
  _vmt35t5m = _vmt35t5m + TRK * DISTANCE
 ELSEIF(CGSTDSPD<55)
  _vmt55s5m = _vmt55s5m + SOV * DISTANCE
  _vmt55h5m = _vmt55h5m + HOV * DISTANCE
  _vmt55t5m = _vmt55t5m + TRK * DISTANCE
 ELSE
  _vmt99s5m = _vmt99s5m + SOV * DISTANCE
  _vmt99h5m = _vmt99h5m + HOV * DISTANCE
  _vmt99t5m = _vmt99t5m + TRK * DISTANCE
 ENDIF
;-----------------------------------------------
;Collector
ELSEIF(FACTYPE=14)
 ;VMT
 _vmts6 = _vmts6 + SOV * DISTANCE
 _vmth6 = _vmth6 + HOV * DISTANCE
 _vmtt6 = _vmtt6 + TRK * DISTANCE
 ;VHT
 _vhts6 = _vhts6 + SOV * TIME_1/60
 _vhth6 = _vhth6 + HOV * TIME_1/60
 _vhtt6 = _vhtt6 + TRK * TIME_1/60
 ;del
 _dels6 = _dels6 + SOV * (TIME_1-TIME1)/60
 _delh6 = _delh6 + HOV * (TIME_1-TIME1)/60
 _delt6 = _delt6 + TRK * (TIME_1-TIME1)/60
;LOS
  _lnemile6 = _lnemile6 + DISTANCE * PERLANES
 IF(LOS = 'A/B')
  _losA6 = _losA6 + DISTANCE * PERLANES
 ELSEIF(LOS = 'C')
  _losC6 = _losC6 + DISTANCE * PERLANES
 ELSEIF(LOS = 'D')
  _losD6 = _losD6 + DISTANCE * PERLANES
 ELSEIF(LOS = 'E')
  _losE6 = _losE6 + DISTANCE * PERLANES
 ELSEIF(LOS = 'F')
  _losF6 = _losF6 + DISTANCE * PERLANES
 ENDIF
 ;VMT < 35
 IF(CGSTDSPD<35)
  _vmt35s6 = _vmt35s6 + SOV * DISTANCE
  _vmt35h6 = _vmt35h6 + HOV * DISTANCE
  _vmt35t6 = _vmt35t6 + TRK * DISTANCE
 ELSEIF(CGSTDSPD<55)
  _vmt55s6 = _vmt55s6 + SOV * DISTANCE
  _vmt55h6 = _vmt55h6 + HOV * DISTANCE
  _vmt55t6 = _vmt55t6 + TRK * DISTANCE
 ELSE
  _vmt99s6 = _vmt99s6 + SOV * DISTANCE
  _vmt99h6 = _vmt99h6 + HOV * DISTANCE
  _vmt99t6 = _vmt99t6 + TRK * DISTANCE
 ENDIF
;-----------------------------------------------
ENDIF
PHASE=SUMMARY

;compute LOS percentages
 IF(_lnemile1>0)
  losA1 = _losA1 / _lnemile1 * 100
  losC1 = _losC1 / _lnemile1 * 100
  losD1 = _losD1 / _lnemile1 * 100
  losE1 = _losE1 / _lnemile1 * 100
  losF1 = _losF1 / _lnemile1 * 100
 ENDIF
 IF(_lnemile2>0)
  losA2 = _losA2 / _lnemile2 * 100
  losC2 = _losC2 / _lnemile2 * 100
  losD2 = _losD2 / _lnemile2 * 100
  losE2 = _losE2 / _lnemile2 * 100
  losF2 = _losF2 / _lnemile2 * 100
 ENDIF
 IF(_lnemile3>0)
  losA3 = _losA3 / _lnemile3 * 100
  losC3 = _losC3 / _lnemile3 * 100
  losD3 = _losD3 / _lnemile3 * 100
  losE3 = _losE3 / _lnemile3 * 100
  losF3 = _losF3 / _lnemile3 * 100
 ENDIF
 IF(_lnemile4>0)
  losA4 = _losA4 / _lnemile4 * 100
  losC4 = _losC4 / _lnemile4 * 100
  losD4 = _losD4 / _lnemile4 * 100
  losE4 = _losE4 / _lnemile4 * 100
  losF4 = _losF4 / _lnemile4 * 100
 ENDIF
 IF(_lnemile5>0)
  losA5 = _losA5 / _lnemile5 * 100
  losC5 = _losC5 / _lnemile5 * 100
  losD5 = _losD5 / _lnemile5 * 100
  losE5 = _losE5 / _lnemile5 * 100
  losF5 = _losF5 / _lnemile5 * 100
 ENDIF
 IF(_lnemile5m>0)
  losA5m = _losA5m / _lnemile5m * 100
  losC5m = _losC5m / _lnemile5m * 100
  losD5m = _losD5m / _lnemile5m * 100
  losE5m = _losE5m / _lnemile5m * 100
  losF5m = _losF5m / _lnemile5m * 100
 ENDIF
 IF(_lnemile6>0)
  losA6 = _losA6 / _lnemile6 * 100
  losC6 = _losC6 / _lnemile6 * 100
  losD6 = _losD6 / _lnemile6 * 100
  losE6 = _losE6 / _lnemile6 * 100
  losF6 = _losF6 / _lnemile6 * 100
 ENDIF

;print general summaries
 PRINT CSV=T,LIST='Facility Type,VMT SOV,VMT HOV,VMT TRK,VHT SOV,VHT HOV,VHT TRK,VHD SOV,VHD HOV,VHD TRK,%LOS A/B,%LOS C,%LOS D,%LOS E,%LOS F',PRINTO=1
 PRINT CSV=T,LIST='Interstate',_vmts1,_vmth1,_vmtt1,_vhts1,_vhth1,_vhtt1,_dels1,_delh1,_delt1,losA1,losC1,losD1,losE1,losF1,PRINTO=1
 PRINT CSV=T,LIST='Managed Lane',_vmts2,_vmth2,_vmtt2,_vhts2,_vhth2,_vhtt2,_dels2,_delh2,_delt2,losA2,losC2,losD2,losE2,losF2,PRINTO=1
 PRINT CSV=T,LIST='Exp/Pkwy',_vmts3,_vmth3,_vmtt3,_vhts3,_vhth3,_vhtt3,_dels3,_delh3,_delt3,losA3,losC3,losD3,losE3,losF3,PRINTO=1
 PRINT CSV=T,LIST='Ramp',_vmts4,_vmth4,_vmtt4,_vhts4,_vhth4,_vhtt4,_dels4,_delh4,_delt4,losA1,losC4,losD4,losE4,losF4,PRINTO=1
 PRINT CSV=T,LIST='Principal Arterial',_vmts5,_vmth5,_vmtt5,_vhts5,_vhth5,_vhtt5,_dels5,_delh5,_delt5,losA5,losC5,losD5,losE5,losF5,PRINTO=1
 PRINT CSV=T,LIST='Minor Arterial',_vmts5m,_vmth5m,_vmtt5m,_vhts5m,_vhth5m,_vhtt5m,_dels5m,_delh5m,_delt5m,losA5m,losC5m,losD5m,losE5m,losF5m,PRINTO=1
 PRINT CSV=T,LIST='Collector',_vmts6,_vmth6,_vmtt6,_vhts6,_vhth6,_vhtt6,_dels6,_delh6,_delt6,losA6,losC6,losD6,losE6,losF6,PRINTO=1
;print vmt by speed bins
 PRINT LIST='Facility Type,VMTSOV<35,VMTHOV<35,VMTTRK<35,VMTSOV 35-55,VMTHOV 35-55,VMTTRK 35-55,VMTSOV>55,VMTHOV>55,VMTTRK>55,',PRINTO=2
 PRINT CSV=T,LIST='Interstate',_vmt35s1,_vmt35h1,_vmt35t1,_vmt55s1,_vmt55h1,_vmt55t1,_vmt99s1,_vmt99h1,_vmt99t1,PRINTO=2
 PRINT CSV=T,LIST='Managed Lane',_vmt35s2,_vmt35h2,_vmt35t2,_vmt55s2,_vmt55h2,_vmt55t2,_vmt99s2,_vmt99h2,_vmt99t2,PRINTO=2
 PRINT CSV=T,LIST='Exp/Pkwy',_vmt35s3,_vmt35h3,_vmt35t3,_vmt55s3,_vmt55h3,_vmt55t3,_vmt99s3,_vmt99h3,_vmt99t3,PRINTO=2
 PRINT CSV=T,LIST='Ramp',_vmt35h4,_vmt35t4,_vmt55s4,_vmt55h4,_vmt55t4,_vmt99s4,_vmt99h4,_vmt99t4,PRINTO=2
 PRINT CSV=T,LIST='Principal Arterial',_vmt35s5,_vmt35h5,_vmt35t5,_vmt55s5,_vmt55h5,_vmt55t5,_vmt99s5,_vmt99h5,_vmt99t5,PRINTO=2
 PRINT CSV=T,LIST='Minor Arterial',_vmt35s5m,_vmt35h5m,_vmt35t5m,_vmt55s5m,_vmt55h5m,_vmt55t5m,_vmt99s5m,_vmt99h5m,_vmt99t5m,PRINTO=2
 PRINT CSV=T,LIST='Collector',_vmt35s6,_vmt35h6,_vmt35t6,_vmt55s6,_vmt55h6,_vmt55t6,_vmt99s6,_vmt99h6,_vmt99t6,PRINTO=2
 
ENDPHASE
ENDRUN
 
ENDLOOP

RUN PGM=MATRIX
DBI[1]=Eval\NetworkSumEA.CSV,DELIMITER=',' ftype(c)=1,vmts=2,vmth=3,vmtt=4,vhts=5,vhth=6,vhtt=7,dels=8,delh=9,delt=10,
                                           losA=11,losC=12,losD=13,losE=14,losF=15
DBI[2]=Eval\NetworkSumAM.CSV,DELIMITER=',' ftype(c)=1,vmts=2,vmth=3,vmtt=4,vhts=5,vhth=6,vhtt=7,dels=8,delh=9,delt=10,
                                           losA=11,losC=12,losD=13,losE=14,losF=15
DBI[3]=Eval\NetworkSumMD.CSV,DELIMITER=',' ftype(c)=1,vmts=2,vmth=3,vmtt=4,vhts=5,vhth=6,vhtt=7,dels=8,delh=9,delt=10,
                                           losA=11,losC=12,losD=13,losE=14,losF=15
DBI[4]=Eval\NetworkSumPM.CSV,DELIMITER=',' ftype(c)=1,vmts=2,vmth=3,vmtt=4,vhts=5,vhth=6,vhtt=7,dels=8,delh=9,delt=10,
                                           losA=11,losC=12,losD=13,losE=14,losF=15
DBI[5]=Eval\NetworkSumEV.CSV,DELIMITER=',' ftype(c)=1,vmts=2,vmth=3,vmtt=4,vhts=5,vhth=6,vhtt=7,dels=8,delh=9,delt=10,
                                           losA=11,losC=12,losD=13,losE=14,losF=15
PRINTO[1]=Eval\NetworkSummaries.CSV
ZONES=1
 
LOOP EA=2,DBI.1.NUMRECORDS
 X=DBIReadRecord(1,EA)
  FTYPE  = DI.1.FTYPE
  VMTSOV = DI.1.VMTS
  VMTHOV = DI.1.VMTH
  VMTTRK = DI.1.VMTT
  VHTSOV = DI.1.VHTS
  VHTHOV = DI.1.VHTH
  VHTTRK = DI.1.VHTT
  DELSOV = DI.1.DELS
  DELHOV = DI.1.DELH
  DELTRK = DI.1.DELT
  losA = DI.1.losA
  losC = DI.1.losC
  losD = DI.1.losD
  losE = DI.1.losE
  losF = DI.1.losF
  IF(EA=2) PRINT LIST='EA PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(EA=2) PRINT CSV=T,LIST='Facility Type,VMT SOV,VMT HOV,VMT TRK,VHT SOV,VHT HOV,VHT TRK,VHD SOV,VHD HOV,VHD TRK,%LOS A/B,%LOS C,%LOS D,%LOS E,%LOS F',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMTSOV,VMTHOV,VMTTRK,VHTSOV,VHTHOV,VHTTRK,DELSOV,DELHOV,DELTRK,losA,losC,losD,losE,losF,PRINTO=1
ENDLOOP
LOOP AM=2,DBI.2.NUMRECORDS
 X=DBIReadRecord(2,AM)
  FTYPE  = DI.2.FTYPE
  VMTSOV = DI.2.VMTS
  VMTHOV = DI.2.VMTH
  VMTTRK = DI.2.VMTT
  VHTSOV = DI.2.VHTS
  VHTHOV = DI.2.VHTH
  VHTTRK = DI.2.VHTT
  DELSOV = DI.2.DELS
  DELHOV = DI.2.DELH
  DELTRK = DI.2.DELT
  losA = DI.2.losA
  losC = DI.2.losC
  losD = DI.2.losD
  losE = DI.2.losE
  losF = DI.2.losF
  IF(AM=2) PRINT LIST='AM PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(AM=2) PRINT CSV=T,LIST='Facility Type,VMT SOV,VMT HOV,VMT TRK,VHT SOV,VHT HOV,VHT TRK,VHD SOV,VHD HOV,VHD TRK,%LOS A/B,%LOS C,%LOS D,%LOS E,%LOS F',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMTSOV,VMTHOV,VMTTRK,VHTSOV,VHTHOV,VHTTRK,DELSOV,DELHOV,DELTRK,losA,losC,losD,losE,losF,PRINTO=1
ENDLOOP
LOOP MD=2,DBI.3.NUMRECORDS
 X=DBIReadRecord(3,MD)
  FTYPE  = DI.3.FTYPE
  VMTSOV = DI.3.VMTS
  VMTHOV = DI.3.VMTH
  VMTTRK = DI.3.VMTT
  VHTSOV = DI.3.VHTS
  VHTHOV = DI.3.VHTH
  VHTTRK = DI.3.VHTT
  DELSOV = DI.3.DELS
  DELHOV = DI.3.DELH
  DELTRK = DI.3.DELT
  losA = DI.3.losA
  losC = DI.3.losC
  losD = DI.3.losD
  losE = DI.3.losE
  losF = DI.3.losF
  IF(MD=2) PRINT LIST='MD PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(MD=2) PRINT CSV=T,LIST='Facility Type,VMT SOV,VMT HOV,VMT TRK,VHT SOV,VHT HOV,VHT TRK,VHD SOV,VHD HOV,VHD TRK,%LOS A/B,%LOS C,%LOS D,%LOS E,%LOS F',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMTSOV,VMTHOV,VMTTRK,VHTSOV,VHTHOV,VHTTRK,DELSOV,DELHOV,DELTRK,losA,losC,losD,losE,losF,PRINTO=1
ENDLOOP
LOOP PM=2,DBI.4.NUMRECORDS
 X=DBIReadRecord(4,PM)
  FTYPE  = DI.4.FTYPE
  VMTSOV = DI.4.VMTS
  VMTHOV = DI.4.VMTH
  VMTTRK = DI.4.VMTT
  VHTSOV = DI.4.VHTS
  VHTHOV = DI.4.VHTH
  VHTTRK = DI.4.VHTT
  DELSOV = DI.4.DELS
  DELHOV = DI.4.DELH
  DELTRK = DI.4.DELT
  losA = DI.4.losA
  losC = DI.4.losC
  losD = DI.4.losD
  losE = DI.4.losE
  losF = DI.4.losF
  IF(PM=2) PRINT LIST='PM PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(PM=2) PRINT CSV=T,LIST='Facility Type,VMT SOV,VMT HOV,VMT TRK,VHT SOV,VHT HOV,VHT TRK,VHD SOV,VHD HOV,VHD TRK,%LOS A/B,%LOS C,%LOS D,%LOS E,%LOS F',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMTSOV,VMTHOV,VMTTRK,VHTSOV,VHTHOV,VHTTRK,DELSOV,DELHOV,DELTRK,losA,losC,losD,losE,losF,PRINTO=1
ENDLOOP
LOOP EV=2,DBI.5.NUMRECORDS
 X=DBIReadRecord(5,EV)
  FTYPE  = DI.5.FTYPE
  VMTSOV = DI.5.VMTS
  VMTHOV = DI.5.VMTH
  VMTTRK = DI.5.VMTT
  VHTSOV = DI.5.VHTS
  VHTHOV = DI.5.VHTH
  VHTTRK = DI.5.VHTT
  DELSOV = DI.5.DELS
  DELHOV = DI.5.DELH
  DELTRK = DI.5.DELT
  losA = DI.5.losA
  losC = DI.5.losC
  losD = DI.5.losD
  losE = DI.5.losE
  losF = DI.5.losF
  IF(EV=2) PRINT LIST='EV PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(EV=2) PRINT CSV=T,LIST='Facility Type,VMT SOV,VMT HOV,VMT TRK,VHT SOV,VHT HOV,VHT TRK,VHD SOV,VHD HOV,VHD TRK,%LOS A/B,%LOS C,%LOS D,%LOS E,%LOS F',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMTSOV,VMTHOV,VMTTRK,VHTSOV,VHTHOV,VHTTRK,DELSOV,DELHOV,DELTRK,losA,losC,losD,losE,losF,PRINTO=1
ENDLOOP
ENDRUN

RUN PGM=MATRIX
DBI[1]=Eval\NetworkVMTbySpeedEA.CSV,DELIMITER=',' ftype(c)=1,vmt35s=2,vmt35h=3,vmt35t=4,vmt55s=5,vmt55h=6,vmt55t=7,vmt99s=8,vmt99h=9,vmt99t=10
DBI[2]=Eval\NetworkVMTbySpeedAM.CSV,DELIMITER=',' ftype(c)=1,vmt35s=2,vmt35h=3,vmt35t=4,vmt55s=5,vmt55h=6,vmt55t=7,vmt99s=8,vmt99h=9,vmt99t=10
DBI[3]=Eval\NetworkVMTbySpeedMD.CSV,DELIMITER=',' ftype(c)=1,vmt35s=2,vmt35h=3,vmt35t=4,vmt55s=5,vmt55h=6,vmt55t=7,vmt99s=8,vmt99h=9,vmt99t=10
DBI[4]=Eval\NetworkVMTbySpeedPM.CSV,DELIMITER=',' ftype(c)=1,vmt35s=2,vmt35h=3,vmt35t=4,vmt55s=5,vmt55h=6,vmt55t=7,vmt99s=8,vmt99h=9,vmt99t=10
DBI[5]=Eval\NetworkVMTbySpeedEV.CSV,DELIMITER=',' ftype(c)=1,vmt35s=2,vmt35h=3,vmt35t=4,vmt55s=5,vmt55h=6,vmt55t=7,vmt99s=8,vmt99h=9,vmt99t=10
PRINTO[1]=Eval\NetworkVMTbySpeedSummaries.CSV
ZONES=1
 
LOOP EA=2,DBI.1.NUMRECORDS
 X=DBIReadRecord(1,EA)
  FTYPE  = DI.1.FTYPE
  VMT35SOV = DI.1.VMT35S
  VMT35HOV = DI.1.VMT35H
  VMT35TRK = DI.1.VMT35T
  VMT55SOV = DI.1.VMT55S
  VMT55HOV = DI.1.VMT55H
  VMT55TRK = DI.1.VMT55T
  VMT99SOV = DI.1.VMT99S
  VMT99HOV = DI.1.VMT99H
  VMT99TRK = DI.1.VMT99T
  IF(EA=2) PRINT LIST='EA PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(EA=2) PRINT CSV=T,LIST='Facility Type,VMT SOV<35,VMT HOV<35,VMT TRK<35,VMT SOV=35-55,VMT HOV=35-55,VMT TRK=35-55,VMT SOV>55,VMT HOV>55,VMT TRK>55,',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMT35SOV,VMT35HOV,VMT35TRK,VMT55SOV,VMT55HOV,VMT55TRK,VMT99SOV,VMT99HOV,VMT99TRK,PRINTO=1
ENDLOOP
LOOP AM=2,DBI.2.NUMRECORDS
 X=DBIReadRecord(2,AM)
  FTYPE  = DI.2.FTYPE
  VMT35SOV = DI.2.VMT35S
  VMT35HOV = DI.2.VMT35H
  VMT35TRK = DI.2.VMT35T
  VMT55SOV = DI.2.VMT55S
  VMT55HOV = DI.2.VMT55H
  VMT55TRK = DI.2.VMT55T
  VMT99SOV = DI.2.VMT99S
  VMT99HOV = DI.2.VMT99H
  VMT99TRK = DI.2.VMT99T
  IF(AM=2) PRINT LIST='AM PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(AM=2) PRINT CSV=T,LIST='Facility Type,VMT SOV<35,VMT HOV<35,VMT TRK<35,VMT SOV=35-55,VMT HOV=35-55,VMT TRK=35-55,VMT SOV>55,VMT HOV>55,VMT TRK>55,',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMT35SOV,VMT35HOV,VMT35TRK,VMT55SOV,VMT55HOV,VMT55TRK,VMT99SOV,VMT99HOV,VMT99TRK,PRINTO=1
ENDLOOP
LOOP MD=2,DBI.3.NUMRECORDS
 X=DBIReadRecord(3,MD)
  FTYPE  = DI.3.FTYPE
  VMT35SOV = DI.3.VMT35S
  VMT35HOV = DI.3.VMT35H
  VMT35TRK = DI.3.VMT35T
  VMT55SOV = DI.3.VMT55S
  VMT55HOV = DI.3.VMT55H
  VMT55TRK = DI.3.VMT55T
  VMT99SOV = DI.3.VMT99S
  VMT99HOV = DI.3.VMT99H
  VMT99TRK = DI.3.VMT99T
  IF(MD=2) PRINT LIST='MD PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(MD=2) PRINT CSV=T,LIST='Facility Type,VMT SOV<35,VMT HOV<35,VMT TRK<35,VMT SOV=35-55,VMT HOV=35-55,VMT TRK=35-55,VMT SOV>55,VMT HOV>55,VMT TRK>55,',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMT35SOV,VMT35HOV,VMT35TRK,VMT55SOV,VMT55HOV,VMT55TRK,VMT99SOV,VMT99HOV,VMT99TRK,PRINTO=1
ENDLOOP
LOOP PM=2,DBI.4.NUMRECORDS
 X=DBIReadRecord(4,PM)
  FTYPE  = DI.4.FTYPE
  VMT35SOV = DI.4.VMT35S
  VMT35HOV = DI.4.VMT35H
  VMT35TRK = DI.4.VMT35T
  VMT55SOV = DI.4.VMT55S
  VMT55HOV = DI.4.VMT55H
  VMT55TRK = DI.4.VMT55T
  VMT99SOV = DI.4.VMT99S
  VMT99HOV = DI.4.VMT99H
  VMT99TRK = DI.4.VMT99T
  IF(PM=2) PRINT LIST='PM PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(PM=2) PRINT CSV=T,LIST='Facility Type,VMT SOV<35,VMT HOV<35,VMT TRK<35,VMT SOV=35-55,VMT HOV=35-55,VMT TRK=35-55,VMT SOV>55,VMT HOV>55,VMT TRK>55,',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMT35SOV,VMT35HOV,VMT35TRK,VMT55SOV,VMT55HOV,VMT55TRK,VMT99SOV,VMT99HOV,VMT99TRK,PRINTO=1
ENDLOOP
LOOP EV=2,DBI.5.NUMRECORDS
 X=DBIReadRecord(5,EV)
  FTYPE  = DI.5.FTYPE
  VMT35SOV = DI.5.VMT35S
  VMT35HOV = DI.5.VMT35H
  VMT35TRK = DI.5.VMT35T
  VMT55SOV = DI.5.VMT55S
  VMT55HOV = DI.5.VMT55H
  VMT55TRK = DI.5.VMT55T
  VMT99SOV = DI.5.VMT99S
  VMT99HOV = DI.5.VMT99H
  VMT99TRK = DI.5.VMT99T
  IF(EV=2) PRINT LIST='EV PERIOD NETWORK SUMMARIES',PRINTO=1
  IF(EV=2) PRINT CSV=T,LIST='Facility Type,VMT SOV<35,VMT HOV<35,VMT TRK<35,VMT SOV=35-55,VMT HOV=35-55,VMT TRK=35-55,VMT SOV>55,VMT HOV>55,VMT TRK>55,',PRINTO=1
  PRINT CSV=T,LIST=FTYPE,VMT35SOV,VMT35HOV,VMT35TRK,VMT55SOV,VMT55HOV,VMT55TRK,VMT99SOV,VMT99HOV,VMT99TRK,PRINTO=1
ENDLOOP
ENDRUN

;make sure the step reading the final trip list finishes
Wait4Files Files={PROCID}16.script.end

:EndModel

; CLOSE CLUSTER NODES
*"C:\Program Files\Citilabs\CubeVoyager\Cluster.exe" {ProcID} 1-{XCPU} CLOSE EXIT
