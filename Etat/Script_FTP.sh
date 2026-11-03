#!/bin/sh 
HOST='172.28.201.10' 
USER='crtctxin' 
PASSWD='ctxin123' 
FILE='FL1066' 
ftp -n $HOST <<END_SCRIPT 
quote USER $USER 
quote PASS $PASSWD 
lcd /opt/apache-tomcat/webapps/TESTCTX/Etat/ 
 put $FILE 
ls $FILE 
quit  
END_SCRIPT 
 exit 0