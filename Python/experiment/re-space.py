#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

##

# * Not very fast!
# * c.f. help(unichr) for range limit 0x10ffff
#
# * unicodeChars = [unichr(c) for c in range(0x10ffff+1)]
# has runtime error
# ValueError: unichr() arg not in range(0x10000) (narrow Python build)
# because of 'narrow Python build'

# unicodeChars = [unichr(c) for c in range(0x10ffff+1)]


import sys

print sys.maxunicode
# --> 65535 = 0xFFFF = 2^16-1

# define unicode plane 1 characters
unicodeChars = u''.join(unichr(c) for c in xrange(sys.maxunicode+1))

str = ''.join(unicodeChars)

import re
# example if we wanted things matching `\s` with `re` module:
whitespaceChars = re.findall('\s', str, re.UNICODE)

from unicodedata import name
for c in whitespaceChars:
    print repr(c), name(c, '')
# --> [u'\t', u'\n', u'\x0b', u'\x0c', u'\r', u' ']

# If i had the regex module...
# import regex
# spaceCharacters = regex.findall("[[:space:]]", str)
# print spaceCharacters

