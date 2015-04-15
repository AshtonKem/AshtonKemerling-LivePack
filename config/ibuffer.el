(require 'ibuffer)
(setq ibuffer-saved-filter-groups
      (quote (( "default"
                ("Butler"
                 (filename . "Documents/Butler"))
                ("Org" ;; all org-related buffers
                 (mode . org-mode))
                ("Scheduling"
                 (filename . "Documents/scheduler"))
                ("Live Pack"
                 (filename . ".live-packs"))

                ("Mail"
                 (or ;; mail-related buffers
                  (mode . message-mode)
                  (mode . mail-mode)
                  (mode . gnus-summary-mode)
                  (mode . gnus-article-mode)
                  (mode . gnus-group-mode)
                  ;; etc.; all your mail related modes
                  ))
                ("AG"
                 (mode . ag-mode))
                ("Care For Real"
                 (filename . "Documents/cfr-app"))
                ("TI"
                 (filename . "Documents/ti"))
                ("Launcher"
                 (filename . "Documents/launcher"))
                ("Programming" ;; prog stuff not already in MyProjectX
                 (or
                  (mode . c-mode)
                  (mode . perl-mode)
                  (mode . python-mode)
                  (mode . emacs-lisp-mode)))))))

(add-hook 'ibuffer-mode-hook
  (lambda ()
    (ibuffer-switch-to-saved-filter-groups "default")))
