#!/usr/bin/env bash

##
#+ ## Summary: a naive way to do leveled logging in Bash.
#+
#+ ## Author: Meng Lu <lumeng.dev@gmail.com>
#+
#+ ## History:
#+
#+ ## Repository: https://github.com/lumeng/repo-meng-lib/blob/master/Bash/mengLog.sh
#+
#+ ## Example:
#+ $ ./logging_example.sh
#+ [INFO] 13:03:59: an INFO message
#+ [ALL] 13:03:59: any message
##


## quit the script if whenever a failure is occuring without attempting any following commands
set -e

## Logging function
#+
#+
#+ Java 8 `java.util.logging.Level`:
#+ See https://docs.oracle.com/javase/8/docs/api/java/util/logging/Level.html
#+
#+ Apache `org.apache.log4j.Level`:
#+ See https://logging.apache.org/log4j/1.2/apidocs/org/apache/log4j/Level.html
#+
#+    java.util.logging.Level  org.apache.log4j.Level
#+ 9.                          OFF
#+ 8.                          FATAL
#+ 7. SEVERE                   ERROR
#+ 6. WARNING                  WARN
#+ 5. INFO                     INFO
#+ 4. CONFIG
#+ 3. FINE                     DEBUG
#+ 2. FINER                    TRACE
#+ 1. FINEST                   ALL
#+
#+ ## Example:
#+ ./leveled-logging_example.sh
##


## Set mengLOGGING_LEVEL to different value to print different set of messages.
mengLOGGING_LEVEL_DEFAULT=6
mengLOGGING_LEVEL=$mengLOGGING_LEVEL_DEFAULT
# mengLOGGING_LEVEL=9 #include no, ie. / OFF   messages
# mengLOGGING_LEVEL=8 #include         / FATAL messages
# mengLOGGING_LEVEL=7 #include SEVERE  / ERROR messages
# mengLOGGING_LEVEL=6 #include WARNING / WARN  messages
# mengLOGGING_LEVEL=5 #include INFO    / INFO  messages
# mengLOGGING_LEVEL=4 #include CONFIG  /       messages
# mengLOGGING_LEVEL=3 #include FINE    / DEBUG messages
# mengLOGGING_LEVEL=2 #include FINER   / TRACE messages
# mengLOGGING_LEVEL=1 #include FINEST  / ALL   messages


function mengLog () {
    local level
    case "$1" in
	"FINEST") level=1;;
	"ALL") level=1;;
	"FINER") level=2;;
	"TRACE") level=2;;
	"FINE") level=3;;
	"DEBUG") level=3;;
	"CONFIG") level=4;;
	"INFO") level=5;;
	"WARNING") level=6;;
	"WARN") level=6;;
	"SEVERE") level=7;;
	"ERROR") level=7;;
	"FATAL") level=8;;
	"OFF") level=9;;
	*) level=$mengLOGGING_LEVEL_DEFAULT;;
    esac
    if [[ "$level" -ge "$mengLOGGING_LEVEL" ]]; then
	echo "[$1] $(date '+%H:%m:%S'): $2"
    fi
}

## END
