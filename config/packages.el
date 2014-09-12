(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")))
(package-initialize)
(defvar packages-loaded nil)
(defun load-packages ()
  (unless packages-loaded
    (package-refresh-contents)
    (setq packages-loaded t))
  nil)


(mapc
 (lambda (package)
   (or (package-installed-p package)
       (load-packages)
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package))))
 '(diminish rvm web-mode smartparens
            ag projectile scss-mode robe
            rspec-mode helm helm-projectile))
