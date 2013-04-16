;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
(live-add-pack-lib "epy")
(live-add-pack-lib "pylint")
(live-add-pack-lib "epy/extensions")
(require 'epy-nose)
(require 'virtualenv)


; This assumes that you've installed aspell via brew.
(setq ispell-program-name "aspell")
(add-to-list 'exec-path "/usr/local/bin")

; Pylint
(autoload 'python-pylint "python-pylint")
(autoload 'pylint "python-pylint")
