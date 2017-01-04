#!/usr/bin/env bash

#######################################################################
#+ Summary: Run a Perl script using perl installation prepared via
#+ Perlbrew.
#+
#+ Author: Meng LU <lumeng.dev@gmail.com>
#+
#+
#+ ## References:
#+ * http://perlbrew.pl/Perlbrew-In-Shell-Scripts.html
#+

## Abort if perlbrew is not installed.
if -type perlbrew >/dev/null 2>&1 || { echo >&2 "Install perlbrew first. Abort."; exit 1; }

## These 3 lines are mandatory.
export PERLBREW_ROOT=$HOME/perl5/perlbrew
export PERLBREW_HOME=$HOME/.perlbrew
source ${PERLBREW_ROOT}/etc/bashrc

## Use Perl version X.Y.Z
#+ Replace with X.Y.Z with the latest stable version found on
#+ https://www.perl.org/get.html
##
perlbrew use 5.22.1

## perl /app/my-modern-program
if [[ "$#" -e 1 ]]; then
    perl $1
elif [[ "$#" -e 0 ]]; then
    perl
else
	echo >&2 "Usage: perlbrewperl [my-modern-perl-program.pl]"
	exit 1
fi

## END
