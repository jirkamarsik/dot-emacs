;; Registering MELPA as the archive repo
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Making sure my packages are installed
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(melpa)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

