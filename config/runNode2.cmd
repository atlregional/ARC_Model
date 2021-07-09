
rem ############  PARAMETERS  ############
set RUNTIME=.
set JAVA_PATH=C:/Program Files/Java/jdk1.7.0_45
set JRE32=C:/Program Files (x86)/Java/jre7

rem ############  NODE 2  ############
cd..
start java -server -Xms1g -Xmx1g -cp "%RUNTIME%\config;%RUNTIME%/config/jppf-2.4/build/*;%RUNTIME%/config/jppf-2.4/lib/slf4j/*" -Dlog4j.configuration=log4j-node2.xml -Djppf.config=jppf-node2.properties org.jppf.node.NodeLauncher

