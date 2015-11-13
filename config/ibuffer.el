(require 'ibuffer)
(setq ibuffer-saved-filter-groups
      (quote (( "default"
                ("Live Pack"
                 (filename . ".live-packs"))
                ("AG"
                 (mode . ag-mode))
                ("track"
                 (or
                  (filename . "Documents/track")
                  (name . "*magit: ~/Documents/track/*")))
                ("TI"
                 (or
                  (filename . "Documents/ti")
                  (name . "*magit: ~/Documents/ti/*")))
                ("Launcher"
                 (or
                  (name . "*magit: ~/Documents/launcher/*")
                  (filename . "Documents/launcher")))
                ("Logs"
                 (mode . syslog-mode))
                ("Programming"
                 (or
                  (mode . c-mode)
                  (mode . perl-mode)
                  (mode . python-mode)
                  (mode . emacs-lisp-mode)))))))

(add-hook 'ibuffer-mode-hook
  (lambda ()
    (ibuffer-switch-to-saved-filter-groups "default")))
