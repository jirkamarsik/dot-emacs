;; From Trey Jackson off of Stack Overflow, this lets me use paredit
;; when entering forms in the minibuffer as arguments to eval.
(add-hook 'minibuffer-setup-hook 'conditionally-enable-paredit-mode)
(defun conditionally-enable-paredit-mode ()
  "enable paredit-mode during eval-expression"
  (if (eq this-command 'eval-expression)
      (paredit-mode 1)))
