;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config

(live-load-config-file "util.el")

(live-add-pack-lib "epy")
(live-add-pack-lib "pylint")
(live-add-pack-lib "epy/extensions")
(live-add-pack-lib "w3m")
(live-add-pack-lib "twittering-mode")
(live-add-pack-lib "org-jira")
(live-add-pack-lib "yafolding")
(live-load-config-file "packages.el")
(live-load-config-file "ibuffer.el")
(live-load-config-file "python.el")
(live-load-config-file "org.el")
(live-load-config-file "gnus.el")
(live-load-config-file "latex.el")
(live-load-config-file "diminish.el")

;Load up our libraries, for binding sake.
(require 'yafolding)

;(live-load-config-file "butler.el")
(live-load-config-file "theme.el")
;Bindings goes last, since other files define functions it references.
(live-load-config-file "bindings.el")



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
