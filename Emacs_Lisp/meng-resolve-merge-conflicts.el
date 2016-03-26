;; ## Summary
;; Helper function to resolve merge conflicts of form.
;;    <<<<<<< XXX
;;    top code block line 1 
;;    top code block line 2
;;    top code block line 3
;;    =======
;;    bottom code block line 1 
;;    bottom code block line 2
;;    bottom code block line 3
;;    >>>>>>> YYY
;;
;; Usually, one moves the cursor to a code conflict block, delete the unwanted
;; half and the conflict marks `<<<<<<< XXX`, `=======`, and `>>>>>>> YYY`.
;;
;;
;; ## Usage
;; M-x meng-resolve-merge-conflicts.
;;
;; ## History:
;; 2015-06-23: Initial version.
;;
(defun meng-resolve-merge-conflicts (toplabel bottomlabel)
  "Reolve merge conflicts code blocks by choosing either top half labeled by TOPLABEL or the bottom half labeled by BOTTOMLABEL."
  (interactive "tWhat's the label of the top halves of the code conflict blocks? \nbWhat's the label of the bottom halves of the code conflict blocks? ")

  (interactive)
  
  (query-replace-regexp (concat "<<<<<<< ", toplabel, "\n\\([[:nonascii:][:ascii:]]*\\)=======\n\\([[:nonascii:][:ascii:]]*\\)>>>>>>> ", bottomlabel) "\\1" nil (point-min) (point-max))

  ;(query-replace-regexp "<<<<<<< XXX\n\([[:nonascii:][:ascii:]]*\)=======\n\([[:nonascii:][:ascii:]]*\)>>>>>>> YYY" "\2" nil (point-min) (point-max))

  ;(query-replace-regexp "<<<<<<< XXX\n([[:nonascii:][:ascii:]]*)" "ZZZ" nil (point-min) (point-max))
  
  ;(query-replace-regexp "\([[:nonascii:][:ascii:]]*\)" "\1" nil (point-min) (point-max))

)

;; END
