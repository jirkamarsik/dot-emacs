;;====================================================================
;; MetaGrammar mode
;; Mode used to design MetaGrammars avec emacs (highlight)
;; Author: B. Crabbe
 
(require 'generic-x) ;;pour Emacs OK, mais semble ne pas marcher avec XEmacs
(define-generic-mode 'metagrammar-mode
  ;;comments
  '("%" "//")
  ;;keywords
  '("class" "node" "value" "syn" "sem" "semantics" "highlight" "extern" "feature" "type" "property" "include")
    '(
    ;;noms de classes
    ("class\\s(\*\*)* +\\(\\sw[a-zA-Z0-9_.-]*\\)" 1 'font-lock-type-face)
    ("\?[a-zA-Z0-9]+" . font-lock-variable-name-face)
    ("\![a-zA-Z0-9]+" . font-lock-constant-face)
    ;;params & node props
    ("\(\\(\\sw[a-zA-Z0-9_.-]*\\(,\\sw[a-zA-Z0-9_.-]*\\)*\\)\)" 1 font-lock-constant-face)
    ;;params inside
    ("$\\(\\sw*\\)*" . font-lock-constant-face)
    )
  ;;file extension
  '(".mg\\'")
    nil
  "Major mode for metagrammar editing")
;;====================================================================
