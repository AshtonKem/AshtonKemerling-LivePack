(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
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
 '(powerline diminish helm helm-ls-git
             rvm web-mode mo-git-blame
             ag projectile haskell-mode
             smartparens))
