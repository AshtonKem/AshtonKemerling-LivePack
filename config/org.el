(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/inbox.org"
                         "~/org/reference.org"
                         "~/org/tickle.org"
                         "~/org/projects.org"
                         "~/org/consulting.org"
                         "~/org/wedding.org"
                         "~/org/media.org"
                         "~/org/recipes.org"))

(setq org-agenda-custom-commands
      '(("n" todo "NEXT")
        ("c" tags "consulting+TODO=\"TODO\"|consulting+TODO=\"IN-PROGRESS\"|consulting+TODO=\"NEXT\"")
        ("w" tags "wedding+TODO=\"TODO\"|wedding+TODO=\"IN-PROGRESS\"")
        ("p" tags "projects+TODO=\"TODO\"|projects+TODO=\"IN-PROGRESS\"")
        ("t" todo "TICKLE")))

(setq org-todo-keywords
      '((sequence "TODO" "BLOCKED" "NEXT" "IN-PROGRESS" "|" "DONE")
        (sequence "TICKLE" "|")
        (sequence "REFERENCE" "|")
        (sequence "|" "ABANDONED")))

(setq org-mobile-inbox-for-pull "~/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(setq org-log-reschedule t
      org-log-redeadline t)

(setq org-default-notes-file "~/org/inbox.org")
(define-key global-map "\C-cc" 'org-capture)
(setq org-todo-keyword-faces
             '(("TICKLE" . "orange")
               ("REFERENCE" . "blue")
               ("ABANDONED" . "black")
               ("BLOCKED" . "green")
               ("NEXT" . "red")))
(setq org-refile-targets '((nil :maxlevel . 2)
                           (org-agenda-files :maxlevel . 2)))

(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-refile-use-outline-path 'file)
(defun clock-to-hours (clock)
  (let ((split (split-string clock ":")))
       (if (= 2 (length split))
           (+ (string-to-number (car split))
              (/ (string-to-number (cadr split)) 60.0))
         0)))
