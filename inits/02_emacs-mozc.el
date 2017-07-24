(add-to-list 'load-path "/usr/share/emacs24/site-lisp/emacs-mozc")

(require 'mozc)
(require 'ccc)

(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
;;(prefer-coding-system 'utf-8)

;; (setq mozc-color "blue")

;; (defun mozc-change-cursor-color ()
;;   (if mozc-mode
;;       (set-buffer-local-cursor-color mozc-color)
;;     (set-buffer-local-cursor-color nil)))

;; (add-hook 'input-method-activate-hook
;;           (lambda () (mozc-change-cursor-color)))

;; (defadvice mozc-mode (after my-toggle-input-method activate)
;;   (mozc-change-cursor-color))
