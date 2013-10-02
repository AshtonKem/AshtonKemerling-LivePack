(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/work.org"
                         "~/org/projects.org"
                         "~/org/chores.org"
                         "~/org/wedding.org"))

(setq org-agenda-custom-commands
           '(("h" tags "home")
             ("g" tags "government")
             ("s" tags "shopping")))
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(setq jiralib-url "https://jira.n-s.us/")
(require 'org-jira)
