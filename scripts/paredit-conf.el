;; Give me back my paredit-wrap-round!
(add-hook 'paredit-mode-hook
          (lambda ()
            (define-key paredit-mode-map (kbd "M-(") 'paredit-wrap-round)))
