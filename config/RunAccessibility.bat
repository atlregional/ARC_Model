::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:: RunAccessibility.bat
::
:: MS-DOS batch file to compute destination choice logsums for the ARC travel model.  This batch file
:: must be executed in the same manner as "RunModel", using the node machines in the same way.
::
::
::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:: ------------------------------------------------------------------------------------------------------
::
:: Step 1:  Set the necessary path variables
::
:: ------------------------------------------------------------------------------------------------------

:: The location of the 64-bit java development kit
set JAVA_PATH=C:\Progra~1\Java\jdk1.7.0_45

:: The location of the 32-bit java runtime environment
set JAVA_PATH_32=C:\Progra~2\Java\jre7

:: The location of the 64-bit Voyager File Access API from Citilabs
set VOY_PATH=C:\Progra~1\Citilabs\VoyagerFileAPI

:: Add these variables to the PATH environment variable, moving the current path to the back
set OLD_PATH=%PATH%
set PATH=%RUNTIME%;%JAVA_PATH%/bin;%VOY_PATH%;%OLD_PATH%

:: The location of the ARC.JAR file
set RUNTIME=.

::  Set the Java classpath (locations where Java needs to find configuration and JAR files)
set CLASSPATH=%RUNTIME%;%RUNTIME%/config/jppf-2.4/build/*;%RUNTIME%/config/jppf-2.4/lib/slf4j/*;%VOY_PATH%;config;exec\arc.jar

::  Set the IP address of the host machine which sends tasks to the client machines 
set HOST_IP_ADDRESS=192.168.1.106


:: ------------------------------------------------------------------------------------------------------
::
:: Step 2:  Execute Java
::
:: ------------------------------------------------------------------------------------------------------

cd..

:: Create the working directories
mkdir accessibilities

:: Stamp the feedback report with the date and time of the model start
echo STARTED ACCESSIBILITY RUN  %DATE% %TIME% >> logFiles\logsums.rpt 


:: Execute the accessibility calculations
%JAVA_PATH%\bin\java -showversion -Xms60g -Xmx180g -cp %CLASSPATH% -Dlog4j.configuration=log4j.xml -DJAVA_HOME_32="%JAVA_PATH_32%" -DJAVA_32_PORT=1181 -Djppf.config=jppf-clientLocal.properties -Djava.library.path=%RUNTIME% com.pb.arc.tourBased.ArcAccessibilityLogsums accessibilities


:: ------------------------------------------------------------------------------------------------------
::
:: Step 3:  Done
::
:: ------------------------------------------------------------------------------------------------------

:: Success target and message
:success
ECHO FINISHED SUCCESSFULLY!
echo ENDED ACCESSIBILITY RUN  %DATE% %TIME% >> logFiles\logsums.rpt

:: Complete target and message
:done
ECHO FINISHED.  
