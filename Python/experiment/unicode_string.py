#!/usr/bin/env python
# -*- coding: utf-8 -*-

## Summary: Unicdoe string encoding and decoding
##   u''
##   u'\u<unicode number>' ???


unicodeString1 = u'A unicode \u018e string \xf1 《山海經》'
print unicodeString1

unicodeStringBytes = unicodeString1.encode('utf-8')
print unicodeStringBytes

## Unicode equal comparison failed to convert both arguments to Unicode - interpreting them as being unequal
result = (unicodeString1 == unicodeStringBytes)
print "unicodeString1 == unicodeStringBytes: "
print result

unicodeString2 = unicode(unicodeStringBytes, 'utf-8')
print unicodeString2

result = (unicodeString1 == unicodeString2)
print "unicodeString1 == unicodeString2: "
print result

## END
