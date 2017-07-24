(require 'cl)
(defvar my/packages
  '(
    auctex
    auctex-latexmk
    ccc
    helm
    iflipb
    ruby-end
    tabbar
    )
  )

(let ((not-installed (remove-if 'package-installed-p my/packages)))
  (when not-installed
    (package-refresh-contents)
      (mapc 'package-install my/packages)))
