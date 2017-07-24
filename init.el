(when (>= emacs-major-version 24)
  (require 'package)

  ;; MELPAを追加
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

  ;; MELPA-stableを追加
  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

  ;; Marmaladeを追加
  (add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)

  ;; Orgを追加
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

  (package-initialize)
  (unless (package-installed-p 'init-loader)
    (package-refresh-contents)
    (package-install 'init-loader))
  (require 'init-loader)
  (init-loader-load)
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("5480b81068cc6fab9a1958dff6cb2ff5de6823902fe8b087e44d557ef3a60421" "dd289788f183423126c28a09670922f6565e0e3e66f44dc1c5f0b86530667db8" "b4e7e2ea0d6db40e362d56956cae51bda183abf6109e524f59ad8f5b67b48be0" "6a6ee837cd42babb0d8dda60c79df34a9c2c6b9c1780531f8acb0317c0ee1b76" "c1afd422fab9cb7ad2422523d0491abc8f397fea76ec57bf27c70b50bfa04243" "62b55e3063542d828ac34cfda44e70568b355c0c9acae4b20a452411e45c8cce" default)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "VL ゴシック" :foundry "VL  " :slant normal :weight normal :height 120 :width normal)))))
