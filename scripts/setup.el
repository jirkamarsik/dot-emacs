;; A helper for adding libraries from lib to the load path.
(defun add-lib-path (rel-lib-path)
  (add-to-list 'load-path (concat "~/.emacs.d/lib/" rel-lib-path)))

(add-lib-path "")


(load "cosmetics")
(load "clojure")
(load "rainbow")
(load "haskell")
(load "fsharp")
(load "elisp")
(load "tramp-conf")
(load "paredit-conf")
(load "javascript")
(load "coffeescript")
(load "markdown-conf")
(load "acg-conf")
(load "lexicomp-conf")
(load "xmg.el")
