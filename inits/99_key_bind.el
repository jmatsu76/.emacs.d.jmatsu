;;; 基本キーバインド
(define-key global-map (kbd "C-h") 'delete-backward-char) ; 削除
(define-key global-map (kbd "M-?") 'help-for-help)        ; ヘルプ
(define-key global-map (kbd "C-z") 'undo)                 ; undo
(define-key global-map (kbd "C-c i") 'indent-region)      ; インデント
(define-key global-map (kbd "C-c C-i") 'hippie-expand)    ; 補完
(define-key global-map (kbd "C-c ;") 'comment-dwim) ; コメントアウト
(define-key global-map (kbd "C-c C-g") 'goto-line)    ; 補完

;;; カーソルを動かさずに画面を1行ずつスクロール
(global-set-key (kbd "M-n") (lambda () (interactive) (scroll-up 1)))
(global-set-key (kbd "M-p") (lambda () (interactive) (scroll-down 1)))

;;; M-x toggle-truncate-lines: 長い行の折り返し表示を切り換える
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

;;; 日本語切り替え (mozc-mode)
(global-set-key (kbd "C-o") 'mozc-mode)

;; 次のバッファに進む
(global-set-key (kbd "C-M-n") 'iflipb-next-buffer)

;; 直前のバッファに戻る
(global-set-key (kbd "C-M-p") 'iflipb-previous-buffer)
