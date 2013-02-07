(add-lib-path "lexicomp")
(setq auto-mode-alist (cons '("\\.lex$" . lexicon-mode) auto-mode-alist))
(autoload 'lexicon-mode "lexicon" "Major mode for editing lexicon files." t)
