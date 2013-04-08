;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(setq test-sym "abc")
(live-load-config-file "bindings.el")
(add-to-list 'load-path "lib/epy")
(add-to-list 'load-path "lib/epy/extensions")
;(require 'epy-nose)
(require 'virtualenv)
