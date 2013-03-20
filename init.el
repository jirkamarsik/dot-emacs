;; Registering MELPA (and Marmalade) as the archive repos
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
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
(defvar my-packages '(starter-kit
                      starter-kit-bindings
                      starter-kit-lisp
                      starter-kit-eshell
                      paredit
                      magit
                      clojure-mode
                      clojure-test-mode
                      clojurescript-mode
                      nrepl
                      nrepl-ritz
                      rainbow-delimiters
                      haskell-mode
                      js2-mode
                      coffee-mode
                      minimap
                      markdown-mode
                      yaml-mode
                      git-gutter)
  "A list of packages to ensure are installed at launch.")

(setq package-archive-exclude-alist '(("melpa" . (clojure-mode
                                                  clojure-test-mode
                                                  clojurescript-mode
                                                  nrepl
                                                  nrepl-ritz))))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d/scripts")
(load "setup")
