#!/usr/bin/env bash

##
#+ ## Summary: a naive way to do logging with various levels in Bash.
#+
#+ ## Author: Meng Lu <lumeng.dev@gmail.com>
#+

source "$DROPBOX_PATH/WorkSpace-Dropbox/Computing/repo-meng-lib/Bash/mengLog.sh"

mengLog	"FINEST" "level=1, an message."
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
