;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config

(live-load-config-file "util.el")

(live-load-config-file "libraries.el")
(live-load-config-file "packages.el")
(live-load-config-file "ibuffer.el")
(live-load-config-file "org.el")
(live-load-config-file "gnus.el")
(live-load-config-file "diminish.el")
(live-load-config-file "flyspell.el")
(live-load-config-file "clojure.el")
(live-load-config-file "css.el")

(require 'helm)
(require 'helm-ag)
(require 'projectile)
(require 'helm-projectile)
(helm-projectile-on)
(require 'magit)
(require 'magit-svn)
(projectile-global-mode)

;; (require 'rspec-mode)
(live-load-config-file "theme.el")
;Bindings goes last, since other files define functions it references.
(live-load-config-file "bindings.el")

(if (eq system-type 'darwin)
    (live-load-config-file "mac.el")
  (live-load-config-file "linux.el"))



; This assumes that you've installed aspell via brew.
(setq ispell-program-name "aspell")
(add-to-list 'exec-path "/usr/local/bin")


;; Ansi-Term
(setq system-uses-terminfo nil)


;; Rails stuff
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json.jbuilder.*\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.yml.*\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.json" . json-mode))

;; CSS/SCSS


(add-hook 'scss-mode-hook (lambda ()
                            (smartparens-mode)
                            (electric-pair-mode 0)
                            (electric-indent-mode 1)))

(add-hook 'org-mode-hook (lambda ()
                          (electric-pair-mode 0)
                          (electric-indent-mode 0)))

(add-hook 'web-mode-hook (lambda ()
                           (emmet-mode 1)
                           (electric-indent-mode 1)))

(add-hook 'html-mode-hook (lambda ()
                            (emmet-mode 1)
                            (electric-indent-mode 1)))


(setq custom-file (concat live-current-pack-dir "config/custom.el"))
(setq live-disable-zone t)
(setq erc-hide-list '("JOIN" "PART" "QUIT"))
(setq magit-last-seen-setup-instructions "1.4.0")
(windmove-default-keybindings 'meta)

(require 'ansi-color)
(defun display-ansi-colors ()
  (interactive)
  (ansi-color-apply-on-region (point-min) (point-max)))
