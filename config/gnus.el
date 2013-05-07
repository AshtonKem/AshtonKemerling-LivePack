(require 'gnus)

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
