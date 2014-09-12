(require 'robe)
(require 'inf-ruby)
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(add-hook 'ruby-mode-hook (lambda ()
                            (robe-mode 1)
                            (electric-pair-mode 0)
                            (electric-indent-mode 1)
                            (ruby-electric-brace 0)
                            (smartparens-mode 1)))

(add-hook 'rspec-mode-hook (lambda ()
                             (rspec-install-snippets)))
