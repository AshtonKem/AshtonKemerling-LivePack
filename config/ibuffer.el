(require 'ibuffer)
(setq ibuffer-saved-filter-groups
  (quote (("default"
            ("Org" ;; all org-related buffers
              (mode . org-mode))
            ("Mail"
              (or  ;; mail-related buffers
               (mode . message-mode)
               (mode . mail-mode)
               (mode . gnus-summary-mode)
               (mode . gnus-article-mode)
               (mode . gnus-group-mode)
               ;; etc.; all your mail related modes
               ))
            ("Magit"
             (mode . magit-status-mode))
            ("Butler"
             (filename . "Documents/Butler"))
            ("AG"
             (mode . ag-mode))
            ("Care For Real"
              (filename . "Documents/cfr-app"))
            ("Work"
             (or
              (filename . "Documents/ns_data")
              (filename . "Documents/NS_text_tools")
              (filename . "Documents/Narrative-Science-Analytics")))
            ("Scheduling"
             (filename . "Documents/scheduler"))
            ("Programming" ;; prog stuff not already in MyProjectX
              (or
                (mode . c-mode)
                (mode . perl-mode)
                (mode . python-mode)
                (mode . emacs-lisp-mode)
                ;; etc
                ))))))

(add-hook 'ibuffer-mode-hook
  (lambda ()
    (ibuffer-switch-to-saved-filter-groups "default")))
