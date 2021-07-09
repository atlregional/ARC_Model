
rem ############  PARAMETERS  ############
set RUNTIME=.
set JAVA_PATH=C:/Program Files/Java/jdk1.8.0_25

rem ############  NODE 1  ############
cd..
start java -server -Xms1g -Xmx1g -cp "%RUNTIME%\config;%RUNTIME%/config/jppf-2.4/build/*;%RUNTIME%/config/jppf-2.4/lib/slf4j/*" -Dlog4j.configuration=log4j-node1.xml -Djppf.config=jppf-node1.properties org.jppf.node.NodeLauncher

