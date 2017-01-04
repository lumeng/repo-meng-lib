;; ## Summary
;; Hide the minibuffer when the cursor is moved out of it.
;;
;;
;; ## History:
;; * 2016-04-04: Adapted from
;; http://stackoverflow.com/questions/3022880/how-can-i-prevent-the-mini-buffer-from-displaying-previous-commands-in-emacs/3024055#3024055
;;

;(defun kill-minibuffer ()
;  (interactive)
;  (when (windowp (active-minibuffer-window))
;    (abort-recursive-edit)))

;(defun meng-hide-minibuffer ()
;  "Hide the minibuffer when the cursor is moved out of it."
;  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
;    (abort-recursive-edit)))
;
;(add-hook 'mouse-leave-buffer-hook 'meng-hide-minibuffer)

;; END
