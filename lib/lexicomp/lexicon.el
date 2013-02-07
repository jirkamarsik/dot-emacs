;;====================================================================
;; Lexicon mode
;; Mode used to write Lexicon with emacs (highlight)
;; see: https://gforge.inria.fr/projects/lexicomp/

(require 'generic-x) ;;pour Emacs OK, mais semble ne pas marcher avec XEmacs 
(define-generic-mode 'lexicon-mode
  '("%");;comments
  '("BEGIN" "END" "DEFAULT" "IMPORT" "INCLUDE" "FEATURE");;keywords
  '(
;;    ("class\\s (\*\*)* +\\(\\sw[a-zA-Z0-9_.-]*\\)" 1 'font-lock-type-face);noms de classes
;;    ("\?[a-zA-Z0-9]+" . font-lock-variable-name-face)
;;    ("\![a-zA-Z0-9]+" . font-lock-constant-face)
;;    ("\(\\(\\sw[a-zA-Z0-9_.-]*\\(,\\sw[a-zA-Z0-9_.-]*\\)*\\)\)" 1 font-lock-constant-face);;params & node props
;;    ("$\\(\\sw*\\)*" . font-lock-constant-face);;params inside

;;    ("$[a-zA-Z0-9_àéèçâôûêäïüö'\-]+" . font-lock-constant-face);;params inside
    ("$[^ \t]+" . font-lock-constant-face);;params inside
    ("@[a-zA-Z0-9_]+" . font-lock-variable-name-face)

    )
  '(".lex\\'") ;;file extension
  nil
  "Major mode for lexicon file (Lexicomp syntax) editing")
