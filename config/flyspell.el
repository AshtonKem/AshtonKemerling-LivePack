(require 'flyspell)

(custom-set-faces
 '(flyspell-incorrect ((t (:underline (:color "red" :style wave))))))

(add-hook 'markdown-mode-hook
          (lambda ()
            (flyspell-mode 1)))

(add-hook 'html-mode
          (lambda ()
            (flyspell-prog-mode 1)))
