;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config

(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)


(live-load-config-file "bindings.el")
(live-add-pack-lib "epy")
(live-add-pack-lib "pylint")
(live-add-pack-lib "epy/extensions")
(live-add-pack-lib "w3m")
(live-add-pack-lib "twittering-mode")
(live-add-pack-lib "org-jira")
(live-load-config-file "python.el")
(live-load-config-file "org.el")
(live-load-config-file "gnus.el")
(require 'package)
(require 'twittering-mode)

(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Twittering-mode
(setq twittering-use-master-password t)


; This assumes that you've installed aspell via brew.
(setq ispell-program-name "aspell")
(add-to-list 'exec-path "/usr/local/bin")





(add-to-list 'load-path "/Users/ashtonkemerling/Documents/Butler")
(require 'butler)
(add-to-list 'butler-servers
             '(jenkins "Jenkins"
                       (server-address . "https://jenkins.n-s.us/jenkins/view/Data%20Engine/")
                       (auth-file . "~/.authinfo.gpg")))
