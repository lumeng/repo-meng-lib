#!/usr/bin/env bash

#######################################################################
#+ Summary: get host name, dropping the part after the first period
#+ character.
#+ Author: Meng Lu <lumeng.dev@gmail.com>
#+
##

HOST_NAME_REGEX='([^\.]+)(\..*)?'

if [[ $(hostname) =~ $HOST_NAME_REGEX ]]; then
    echo "matched!"
    HOST_NAME=${BASH_REMATCH[1]}
else
	HOST_NAME=$(hostname)
fi

echo $HOST_NAME

## END

