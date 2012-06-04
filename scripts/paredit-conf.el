;; Give me back my paredit-wrap-round!
(eval-after-load 'paredit
  '(define-key paredit-mode-map (kbd "M-(") 'paredit-wrap-round))
