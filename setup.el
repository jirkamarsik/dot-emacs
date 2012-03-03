;; A helper for adding libraries from lib to the load path
(defun add-lib-path (rel-lib-path)
  (add-to-list 'load-path (concat "~/.emacs.d/lib/" rel-lib-path)))

(add-lib-path "")

;; Introducing Clojure to the SLIME REPL (from live-coding-emacs)
(eval-after-load 'slime-repl-mode
  (progn
    (add-hook 'slime-repl-mode-hook 'enable-paredit-mode)
    (add-hook 'slime-repl-mode-hook (lambda ()
                                      (define-key slime-repl-mode-map
                                        (kbd "DEL") 'paredit-backward-delete)
                                      (define-key slime-repl-mode-map
                                        (kbd "{") 'paredit-open-curly)
                                      (define-key slime-repl-mode-map
                                        (kbd "}") 'paredit-close-curly)
                                      (modify-syntax-entry ?\{ "(}")
                                      (modify-syntax-entry ?\} "){")
                                      (modify-syntax-entry ?\[ "(]")
                                      (modify-syntax-entry ?\] ")[")))))

;; Nice color theme from live-coding-emacs
(add-lib-path "color-theme")
(require 'color-theme)
(load "blackbored")
(color-theme-blackbored)
; Also set an appropriate HL-line color (thanks, Cheeso!)
(set-face-background hl-line-face "gray13")
