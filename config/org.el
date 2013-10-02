(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/work.org"
                         "~/org/projects.org"
                         "~/org/wedding.org"))

(setq org-agenda-custom-commands
      '(("h" tags "home+TODO=\"NEXT\"")
        ("g" tags "government+TODO=\"NEXT\"")
        ("s" tags "shopping+TODO=\"NEXT\"")))

(setq org-mobile-inbox-for-pull "~/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
