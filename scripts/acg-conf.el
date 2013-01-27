(add-lib-path "acg")
(setq auto-mode-alist (cons '("\\.acg" . acg-mode) auto-mode-alist))
(autoload 'acg-mode "acg" "Major mode for editing ACG definitions" t)

