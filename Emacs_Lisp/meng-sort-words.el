;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;+ sort a paragraph of words
;+ References: https://www.emacswiki.org/emacs/SortWords
;;

(defun meng-sort-words (reverse beg end)
  "Sort words in region alphabetically, in REVERSE if negative.
Prefixed with negative \\[universal-argument], sorts in reverse.
  
The variable `sort-fold-case' determines whether alphabetic case
affects the sort order.
  
See `sort-regexp-fields'."
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\w+" "\\&" beg end))
