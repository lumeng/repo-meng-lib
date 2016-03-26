(defun meng-tofilename (directorylist &optional filename)
  "concatenate directory names into a path, with an optional file name as last part"
  (concat
    (mapconcat 'directory-file-name directorylist "/")
    "/"
    filename))

;(meng-tofilename '("~/" "Temp/") "temp.txt")
;; => "~/Temp/temp.txt"

;(meng-tofilename '("~/" "Temp/"))
;; => "~/Temp/"

;(meng-tofilename '("~/" "Temp/" "test"))
;; => "~/Temp/temp/"