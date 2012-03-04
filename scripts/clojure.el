;; Introducing Clojure to the SLIME REPL (from live-coding-emacs).
(eval-after-load 'slime
  '(progn
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
                                       (modify-syntax-entry ?\] ")[")))
     (add-hook 'slime-repl-mode-hook 'esk-prog-mode-hook)
     (add-hook 'slime-repl-mode-hook
               (defun clojure-mode-slime-font-lock ()
                 (font-lock-mode nil)
                 (clojure-mode-font-lock-setup)
                 (font-lock-mode t)))))


;; Teach Emacs to treat hyphen-separated-words as one in Clojure.
(eval-after-load 'clojure-mode
  '(modify-syntax-entry ?- "w" clojure-mode-syntax-table))
