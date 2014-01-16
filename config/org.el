(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/work.org"
                         "~/org/projects.org"
                         "~/org/wedding.org"
                         "~/org/media.org"
                         "~/org/recipes.org"))

(setq org-agenda-custom-commands
      '(("n" todo "NEXT")
        ("h" tags "home+TODO=\"TODO\"|home+TODO=\"IN-PROGRESS\"")
        ("g" tags "government+TODO=\"TODO\"|government+TODO=\"IN-PROGRESS\"")
        ("s" tags "shopping+TODO=\"TODO\"|shopping+TODO=\"IN-PROGRESS\"")
        ("c" tags "car+TODO=\"TODO\"|car+TODO=\"IN-PROGRESS\"")
        ("b" tags "blog+TODO=\"TODO\"|blog+TODO=\"IN-PROGRESS\"")
        ("w" tags "wedding+TODO=\"TODO\"|wedding+TODO=\"IN-PROGRESS\"")
        ("p" tags "projects+TODO=\"TODO\"|projects+TODO=\"IN-PROGRESS\"")
        ("i" tags "gifts+TODO=\"TODO\"|gifts+TODO=\"IN-PROGRESS\"")
        ("t" todo "TICKLE")))

(setq org-todo-keywords
      '((sequence "TODO" "NEXT" "IN-PROGRESS" "|" "DONE")
        (sequence "TICKLE" "|")
        (sequence "REFERENCE" "|")
        (sequence "ABANDONED" "|")))

(setq org-mobile-inbox-for-pull "~/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(setq org-log-reschedule t
      org-log-redeadline t)

(setq org-default-notes-file "~/org/flagged.org")
(define-key global-map "\C-cc" 'org-capture)
(setq org-todo-keyword-faces
             '(("TICKLE" . "orange")
               ("REFERENCE" . "blue")
               ("ABANDONED" . "black")
               ("NEXT" . "green")))
(setq org-refile-targets '((nil :maxlevel . 2)
                           (org-agenda-files :maxlevel . 2)))

(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-refile-use-outline-path 'file)
