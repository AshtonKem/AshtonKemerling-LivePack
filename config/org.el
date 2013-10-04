(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/work.org"
                         "~/org/projects.org"
                         "~/org/wedding.org"))

(setq org-agenda-custom-commands
      '(("h" tags "home+TODO=\"NEXT\"|home+TODO=\"IN-PROGRESS\"")
        ("g" tags "government+TODO=\"NEXT\"|government+TODO=\"IN-PROGRESS\"")
        ("s" tags "shopping+TODO=\"NEXT\"|shopping+TODO=\"IN-PROGRESS\"")))

(setq org-mobile-inbox-for-pull "~/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
