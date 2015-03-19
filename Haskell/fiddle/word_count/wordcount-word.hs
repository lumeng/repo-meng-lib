-- Summary: count words
--
-- http://book.realworldhaskell.org/read/getting-started.html
--
-- Uasge:
-- $ runghc wordcount-word < text.txt
-- 69
-- 
main = interact wordCount
    where wordCount input = show (length (words input)) ++ "\n"
