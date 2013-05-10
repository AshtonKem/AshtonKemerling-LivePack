(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)


(when (not (require 'web nil t))
  (package-install 'web))

(when (not (require 'solarized-theme nil t))
  (package-install 'solarized-theme))
