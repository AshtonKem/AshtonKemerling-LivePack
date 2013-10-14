(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/work.org"
                         "~/org/projects.org"
                         "~/org/wedding.org"))

(setq org-agenda-custom-commands
      '(("h" tags "home+TODO=\"TODO\"|home+TODO=\"IN-PROGRESS\"")
        ("g" tags "government+TODO=\"TODO\"|government+TODO=\"IN-PROGRESS\"")
        ("s" tags "shopping+TODO=\"TODO\"|shopping+TODO=\"IN-PROGRESS\"")
        ("c" tags "car+TODO=\"TODO\"|car+TODO=\"IN-PROGRESS\"")
        ("w" tags "wedding+TODO=\"TODO\"|wedding+TODO=\"IN-PROGRESS\"")
        ("p" tags "projects+TODO=\"TODO\"|projects+TODO=\"IN-PROGRESS\"")
        ("t" todo "TICKLE")))

(setq org-mobile-inbox-for-pull "~/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(setq org-default-notes-file "~/org/flagged.org")
(define-key global-map "\C-cc" 'org-capture)
