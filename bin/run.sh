#!/usr/bin/env bash

SCRIPT_HOME=$(cd `dirname $BASH_SOURCE` && pwd)
APP_HOME=$(cd $SCRIPT_HOME/.. && pwd)

if [[ -z $CATALINA_HOME ]] && [[ -e $HOME/apps/apache-tomcat ]]; then
	CATALINA_HOME=$HOME/apps/apache-tomcat
fi

CATALINA_CMD=catalina.sh
if [[ -n $CATALINA_HOME ]]; then
	CATALINA_CMD=$CATALINA_HOME/bin/catalina.sh
fi

export CATALINA_BASE=$APP_HOME
$CATALINA_CMD run
