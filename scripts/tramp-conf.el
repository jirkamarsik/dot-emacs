;; Make Tramp store autosaves in the backups folder.
(eval-after-load "tramp"
  '(setq tramp-auto-save-directory "/home/jirka/.emacs.d/backups/tramp"))

;; Check out http://www.rekk.de/bloggy/emacs-and-tramp/ and experiment
;; with this (is the above enough? should I do this on-loading?)
;; (add-to-list 'backup-directory-alist
;;              (cons tramp-file-name-regexp nil))

