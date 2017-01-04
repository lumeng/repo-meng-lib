#!/bin/bash

## Summary: return the current directory, i.e. the directory of the file where
#+ this function is executed.
#+ References: http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
##


function mengCurrentDirectory () {
	local dir
	dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
	echo $dir
}



## END
