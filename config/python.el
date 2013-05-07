(require 'epy-nose)
(autoload 'python-pylint "python-pylint")
(autoload 'pylint "python-pylint")

(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 4))))
