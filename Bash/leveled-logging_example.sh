#!/usr/bin/env bash

##
#+ ## Summary: a naive way to do leveled logging in Bash.
#+ This is an example demoing function defined in mengLog.sh.
#+
#+ ## Author: Meng Lu <lumeng.dev@gmail.com>
#+
#+ ## Example:
#+ $ ./leveled-logging_example.sh
#+ [WARNING] 00:03:09: level=6, an message.
#+ [WARN] 00:03:09: level=6, an message.
#+ [SEVERE] 00:03:09: level=7, an message.
#+ [ERROR] 00:03:09: level=7, an message.
#+ [FATAL] 00:03:10: level=8, an message.
#+ [XXX] 00:03:10: level=9, an message.
##

## Idiom for getting this Bash script's directory path.
THIS_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source "$THIS_DIR/mengLog.sh"

mengLog "FINEST" "level=1, an message."
mengLog "ALL" "level=1, an message."
mengLog "FINER" "level=2, an message."
mengLog "TRACE" "level=2, an message."
mengLog "FINE" "level=3, an message."
mengLog "DEBUG" "level=3, an message."
mengLog "CONFIG" "level=4, an message."
mengLog "INFO" "level=5, an message."
mengLog "WARNING" "level=6, an message."
mengLog "WARN" "level=6, an message."
mengLog "SEVERE" "level=7, an message."
mengLog "ERROR" "level=7, an message."
mengLog "FATAL" "level=8, an message."
mengLog "XXX" "level=9, an message."


## END
