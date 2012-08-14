;; Introducing Clojure to the SLIME REPL (from live-coding-emacs).
(eval-after-load 'slime
  '(add-hook 'slime-repl-mode-hook
             (lambda ()
               (when (equalp (buffer-name) "*slime-repl clojure*")
                 (font-lock-mode nil)
                 (clojure-mode-font-lock-setup)
                 (font-lock-mode t)

                 (esk-prog-mode-hook)
                 
                 (define-key slime-repl-mode-map
                   (kbd "DEL") 'paredit-backward-delete)
                 (define-key slime-repl-mode-map
                   (kbd "{") 'paredit-open-curly)
                 (define-key slime-repl-mode-map
                   (kbd "}") 'paredit-close-curly)
                 (modify-syntax-entry ?\{ "(}")
                 (modify-syntax-entry ?\} "){")
                 (modify-syntax-entry ?\[ "(]")
                 (modify-syntax-entry ?\] ")[")

                 (enable-paredit-mode)))))


;; Teach Emacs to treat hyphen-separated-words as one in Clojure.
(eval-after-load 'clojure-mode
  '(modify-syntax-entry ?- "w" clojure-mode-syntax-table))
