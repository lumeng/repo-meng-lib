#!/usr/bin/env python2.4
# -*- coding: utf-8 -*-

##

unicodeChars = [unichr(c) for c in range(0x10ffff+1)] # <-- that's not very fast!
# also we go up to 0x10ffff (inclusive) because that's what help(unichr) says.

str = ''.join(unicodeChars)

# import re
# # example if we wanted things matching `\s` with `re` module:
# whitespaceChars=re.findall('\s',str)
# print whitespaceChars
# # --> [u'\t', u'\n', u'\x0b', u'\x0c', u'\r', u' ']

## -------------------------------------------------------------------
## Use regex package
##
## * Install regex package on Mac OS X with Macports:
## $ sudo port search regex
## $ sudo port install py31-regex
## $
## -------------------------------------------------------------------
import regex
spaceCharacters = regex.findall("[[:space:]]",str)
print spaceCharacters 

