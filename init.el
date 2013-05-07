;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
(live-add-pack-lib "epy")
(live-add-pack-lib "pylint")
(live-add-pack-lib "epy/extensions")
(live-add-pack-lib "w3m")
(live-add-pack-lib "twittering-mode")
(live-load-config-file "python.el")
(require 'gnus)
(require 'virtualenv)
(require 'package)
(require 'twittering-mode)

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



(setq gnus-secondary-select-methods
      '((nnimap "home"
                (nnimap-address "imap.gmail.com")
                (nnimap-server-port 993)
                (nnimap-stream ssl)
                (nnimap-list-pattern
                 ("INBOX" "*"))
                (nnimap-authinfo-file "~/.authinfo"))
        (nnimap "work"
                (nnimap-address "imap.gmail.com")
                (nnimap-server-port 993)
                (nnimap-stream ssl)
                (nnimap-list-pattern
                 ("INBOX" "*"))
                (nnimap-authinfo-file "~/.authinfo"))))

(setq gnus-parameters
      '(("nnimap+work:*"
         (display . all)
         (posting-style
          (name "Ashton Kemerling")
          (address "akemerling@narrativescience.com")
          (organization "Narrative Science")
          (signature-file "~/.signature"))
         (expiry-target . delete)
        ("nnimap+work:[Gmail]/.*"
         (display . all)
         (posting-style
          (name "Ashton Kemerling")
          (address "akemerling@narrativescience.com")
          (organization "Narrative Science")
          (signature-file "~/.signature"))
         (expiry-wait . never))
        ("nnimap+home:*"
         (display . all)
         (posting-style
          (name "Ashton Kemerling")
          (address "ashtonkemerling@gmail.com")
          (signature-file "~/.signature"))
         (expiry-target . delete)
        ("nnimap+home:[Gmail]/.*"
         (display . all)
         (posting-style
          (name "Ashton Kemerling")
          (address "ashtonkemerling@gmail.com")
          (signature-file "~/.signature"))
         (expiry-wait . never))))))


(setq gnus-permanently-visible-groups ".*")

(setq gnus-posting-styles
             '((".*"
                (address "ashtonkemerling@gmail.com")
                (name "Ashton Kemerling"))
               (".*work:.*"
                (address "akemerling@narrativescience.com")
                (name "Ashton Kemerling")
                (organization "Narrative Science"))
               (".*home:.*"
                (address "ashtonkemerling@gmail.com")
                (name "Ashton Kemerling"))))


(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "ashtonkemerling@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)
