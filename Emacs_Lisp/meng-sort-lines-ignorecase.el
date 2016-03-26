;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;+ Summary: sort lines ignoring the lettercase
;+ Author: Meng Lu <lumeng.dev@gmail.com>
;;

(defun meng-sort-lines-ignorecase ()
  "Alternative to native function sort-lines by ignoring the lettercase. For some applications, it can be preferrable to put lines starting with the same letter regardless of lettercase together."
  (interactive)
  (let ((sort-fold-case t))
    (call-interactively 'sort-lines)))
;; END
