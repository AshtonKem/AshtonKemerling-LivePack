;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config

(live-load-config-file "util.el")

(live-add-pack-lib "w3m")
(live-load-config-file "packages.el")
(live-load-config-file "ibuffer.el")
(live-load-config-file "org.el")
(live-load-config-file "gnus.el")
;(live-load-config-file "latex.el")
(live-load-config-file "diminish.el")
(live-load-config-file "flyspell.el")
(live-load-config-file "haskell.el")

;Load up our libraries, for binding sake.
(require 'yafolding)
(require 'projectile-autoloads)
(projectile-global-mode)
(require 'helm)
(require 'helm-ls-git)

;(live-load-config-file "butler.el")
(live-load-config-file "theme.el")
;Bindings goes last, since other files define functions it references.
(live-load-config-file "bindings.el")
(require 'magit)
(if (eq system-type 'darwin)
    (live-load-config-file "mac.el")
  (live-load-config-file "linux.el"))



;; Twittering-mode
(require 'twittering-mode)
(setq twittering-use-master-password t)


; This assumes that you've installed aspell via brew.
(setq ispell-program-name "aspell")
(add-to-list 'exec-path "/usr/local/bin")

;; Clojure
(require 'clojure-mode)

(define-clojure-indent
  (defroutes 'defun)
  (GET 2)
  (POST 2)
  (PUT 2)
  (DELETE 2)
  (HEAD 2)
  (ANY 2)
  (context 2))


(live-set-default-font "Source Code Pro")

;; Ansi-Term
(setq system-uses-terminfo nil)


;; Rails stuff
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json.jbuilder.*\\'" . ruby-mode))

;; CSS/SCSS

(require 'smartparens-config)

(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(sp-local-pair 'scss-mode "{" nil :post-handlers '(("||\n[i]" "RET")))
(sp-local-pair 'scss-mode "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))


(add-hook 'scss-mode-hook (lambda ()
                           (smartparens-mode)
                           (electric-indent-mode 1)))

(add-hook 'org-mode-hook (lambda ()
                          (electric-pair-mode 0)
                          (electric-indent-mode 0)))

(add-hook 'ruby-mode-hook (lambda ()
                            (setq ruby-deep-indent-paren nil)
                            (electric-indent-mode 1)
                            (electric-pair-mode 1)))

(add-hook 'web-mode-hook (lambda ()
                           (emmet-mode 1)))


(setq custom-file (concat live-current-pack-dir "config/custom.el"))
(setq live-disable-zone t)
(setq erc-hide-list '("JOIN" "PART" "QUIT"))
