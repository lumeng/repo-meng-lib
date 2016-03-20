#!/usr/bin/env bash

#######################################################################
#+ Summary: A simple Bash function to echo message to stderr.
#+ Author: Meng Lu <lumeng.dev@gmail.com>
##

echoerr() { >&2 echo "$@"; }

echoerr "Hello world!"

## END
