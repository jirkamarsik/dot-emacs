;; Introducing Clojure to the SLIME REPL (from live-coding-emacs).
(defun clojurify-buffer (relevant-mode-map)
  (font-lock-mode nil)
  (clojure-mode-font-lock-setup)
  (font-lock-mode t)

  (esk-prog-mode-hook)
                 
  (define-key relevant-mode-map
    (kbd "DEL") 'paredit-backward-delete)
  (define-key relevant-mode-map
    (kbd "{") 'paredit-open-curly)
  (define-key relevant-mode-map
    (kbd "}") 'paredit-close-curly)
  (modify-syntax-entry ?\{ "(}")
  (modify-syntax-entry ?\} "){")
  (modify-syntax-entry ?\[ "(]")
  (modify-syntax-entry ?\] ")[")

  (enable-paredit-mode))

(eval-after-load 'slime
  '(add-hook 'slime-repl-mode-hook
             (lambda ()
               (when (equalp (buffer-name) "*slime-repl clojure*")
                 (clojurify-buffer slime-repl-mode-map)))))

(eval-after-load 'nrepl
  '(add-hook 'nrepl-interaction-mode-hook 'my-nrepl-interaction-mode-setup))

(defun my-nrepl-interaction-mode-setup ()
  (require 'nrepl-ritz))

(eval-after-load 'nrepl
  '(add-hook 'nrepl-mode-hook
             (lambda ()
               (clojurify-buffer nrepl-mode-map))))

;; Teach Emacs to treat hyphen-separated-words as one in Clojure.
(eval-after-load 'clojure-mode
  '(modify-syntax-entry ?- "w" clojure-mode-syntax-table))
