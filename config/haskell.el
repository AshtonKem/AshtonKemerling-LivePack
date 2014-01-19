(require 'haskell-mode)

(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)

(defun my-haskell-mode-hook ()
   (haskell-indentation-mode 1) ;; turn off, just to be sure
   (haskell-indent-mode -1)       ;; turn on indent-mode

   ;; further customisations go here.  For example:
   (setq locale-coding-system 'utf-8 )
   (flyspell-prog-mode)  ;; spell-checking in comments and strings
   ;; etc.

   )
