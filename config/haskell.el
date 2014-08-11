(require 'haskell-mode)
(require 'flycheck-haskell)

(add-hook 'haskell-mode-hook (lambda ()
                               (haskell-indentation-mode 1) ;; turn off, just to be sure
                               (haskell-indent-mode -1)       ;; turn on indent-mode
                               (flycheck-mode 1)
                               (setq locale-coding-system 'utf-8)))
