#!/bin/bash

source $PWD/env.sh

export ebms_jdbc_url=jdbc:postgresql://localhost:5432/digipoort
export ebms_jdbc_username=digipoort
export ebms_jdbc_password=digipoort
export https_verifyhostnames=false
export ebms_port=8888

cd $DIGIPOORT_HOME
rm digipoort.log
nohup $JAVA_HOME/bin/java $JAVA_ARGS -cp ${JDBCJAR}:${EBMSJAR} nl.clockwork.ebms.admin.StartEmbedded -soap -port 8080 $@ > digipoort.log &
echo $! > digipoort.pid
