;; Registering MELPA as the archive repo
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Work around MELPA server issues
(setq url-http-attempt-keepalives nil)

;; Refreshing the MELPA repo
(when (not package-archive-contents)
  (package-refresh-contents))

;; Making sure melpa.el is around for the other installations
(unless (require 'melpa nil t)
  (package-install 'melpa)
  (require 'melpa))

;; Making sure my packages are installed
(defvar my-packages '()
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
