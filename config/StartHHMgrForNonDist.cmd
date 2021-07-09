rem ############  PARAMETERS  ############
set RUNTIME=.
set JAVA_PATH=C:/Progra~1/Java/jdk1.8.0_25
set HOST_IP= localhost

mkdir logFiles
start %JAVA_PATH%\bin\java -Xmx20g -Xmx20g -cp "%RUNTIME%;config;exec\arc-all.jar" -Dlog4j.configuration=log4j_hh.xml com.pb.arc.tourBased.ArcHouseholdDataManager -hostname %HOST_IP%
