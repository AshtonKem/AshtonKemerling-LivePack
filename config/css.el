(require 'smartparens-config)

(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(sp-local-pair 'scss-mode "{" nil :post-handlers '(("||\n[i]" "RET")))
(sp-local-pair 'scss-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))
