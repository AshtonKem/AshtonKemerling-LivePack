(require 'inf-ruby)

(remove-hook 'ruby-mode-hook 'ruby-electric-mode)

(add-hook 'ruby-mode-hook (lambda ()
                            (require 'rvm)
                            (setq ruby-deep-indent-paren nil)
                            (robe-mode 1)
                            (electric-pair-mode 0)
                            (electric-indent-mode 1)
                            (smartparens-mode 1)))

(add-hook 'rspec-mode-hook (lambda ()
                             (rspec-install-snippets)))
