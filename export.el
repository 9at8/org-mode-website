#!/usr/bin/emacs --script

;; (require 'package)
;; (setq package-load-list '((htmlize t)))
;; (package-initialize)

;; this is really bad :(
;; (add-to-list 'load-path "~/.emacs.d/elpa-27.1/htmlize-20200816.746")
;; (require 'ox-html)
;; (require 'htmlize)

;; (require 'org)

(defun html-export (infile outfile)
  (with-current-buffer (find-file infile)
    (setq org-html-htmlize-output-type 'nil)
    (org-html-export-as-html)
    (write-file outfile nil)))

(html-export "org/index.org" "./../build/index.html")
