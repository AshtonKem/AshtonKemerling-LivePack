(setq org-agenda-files '("~/org/gtd.org"
                         "~/org/inbox.org"
                         "~/org/reference.org"
                         "~/org/tickle.org"
                         "~/org/media.org"
                         "~/org/recipes.org"))

(setq org-agenda-custom-commands
      '(("R" "Review"
         ((agenda "" ((org-agenda-ndays 7))) ;; review upcoming deadlines and appointments
          ;; type "l" in the agenda to review logged items
          (stuck "") ;; review stuck projects as designated by org-stuck-projects
          (todo "NEXT") ;; review all projects (assuming you use todo keywords to designate projects)
          (todo "IN-PROGRESS") ;; review someday/maybe items
          (todo "BLOCKED")
          (todo "Maybe")))
        ("S" "Shopping"
         tags "shopping+TODO=\"NEXT\"")))

(setq org-todo-keywords
      '((sequence "TODO" "NEXT" "IN-PROGRESS" "|" "DONE")
        (sequence "MAYBE" "|")
        (sequence "BLOCKED")
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

 (setq org-capture-templates
       '(("t" "todo" entry (file "~/org/inbox.org")
          "* TODO %?\n%T\n%f\n")
         ("n" "next" entry (file "~/org/inbox.org")
          "* NEXT %?\n%T\n%f\n")
         ("b" "blocked" entry (file "~/org/inbox.org")
          "* BLOCKED %?\n%T\n%f\n")))
