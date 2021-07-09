
rem ############  PARAMETERS  ############
set RUNTIME=.
set JAVA_PATH=C:/Progra~1/Java/jdk1.8.0_25
set HOST_IP= localhost

rem ############  JPPF DRIVER  ############
mkdir logFiles
start %JAVA_PATH%\bin\java -server -Xms200m -Xmx200m -cp "%RUNTIME%/config/jppf-2.4/build/*;%RUNTIME%/config/jppf-2.4/lib/slf4j/*;config;exec\arc.jar" -Dlog4j.configuration=log4j-driver.properties -Djppf.config=jppf-driver.properties org.jppf.server.DriverLauncher

rem ############  HH MANAGER in memory ############
start %JAVA_PATH%\bin\java -Xms10g -Xmx20g -cp "%RUNTIME%;config;exec\arc.jar" -Dlog4j.configuration=log4j_hh.xml com.pb.arc.tourBased.ArcHouseholdDataManager -hostname %HOST_IP%
