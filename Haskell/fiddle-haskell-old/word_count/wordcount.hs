-- Summary: count words
--
-- http://book.realworldhaskell.org/read/getting-started.html
--
-- Uasge:
-- $ runghc wordcount < text.txt
-- 7
-- 
main = interact wordCount
    where wordCount input = show (length (lines input)) ++ "\n"
