#!/usr/bin/env bash

##
#+ ## Summary: a naive way to do logging with various levels in Bash.
#+
#+ ## Author: Meng Lu <lumeng.dev@gmail.com>
#+
#+ ## History:
#+
#+ ## Repository: https://github.com/lumeng/repogit-mengapps/blob/master/file-system/add-filename-extension-to-image-files.sh
#+
#+ ## Example:
#+ $ ./logging_example.sh
#+ [INFO] 13:03:59: an INFO message
#+ [ALL] 13:03:59: any message
##


## quit the script if whenever a failure is occuring without attempting any following commands
set -e

## Logging function

## Set mengLOGGING_LEVEL to different value to print different set of messages.
## mengLOGGING_LEVEL=1: print no messages
## mengLOGGING_LEVEL=2: print INFO messages
## mengLOGGING_LEVEL=3: print INFO, DEBUG messages
mengLOGGING_LEVEL=2

function mengLog () {
	case "$1" in
		"INFO") mengLEVEL=2;;
		"DEBUG") mengLEVEL=3;;
		*) mengLEVEL=1;;
    esac
    if [[ "$mengLOGGING_LEVEL" -ge "$mengLEVEL" ]]; then
        echo "[$1] $(date '+%H:%m:%S'): $2" 
    fi
}

mengLog "INFO" "an INFO message"
mengLog "DEBUG" "an DEBUG message"
mengLog "ALL" "any message"

## END
