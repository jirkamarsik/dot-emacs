;; Some basic setup for JavaScript development using js2-mode

;; Load our fixed version of SLIME.
(add-lib-path "slime-2012-02-12")
(require 'slime-autoloads)

;; Launch slime-js in js2-mode
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-setup '(slime-repl slime-js))
            (slime-mode 1)
            (slime-js-minor-mode 1)))

;; F5 to "refresh"
(global-set-key [f5] 'slime-js-reload)

;; Further support for CSS mode
(add-hook 'css-mode-hook
          (lambda ()
            (define-key css-mode-map "\M-\C-x" 'slime-js-refresh-css)
            (define-key css-mode-map "\C-c\C-r" 'slime-js-embed-css)))
