;;; 日本語環境
(set-locale-environment nil)
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
;;(setq default-file-name-coding-system 'utf-8) ;diredで日本語file名出力
(setq file-name-coding-system 'utf-8) ;diredで日本語file名出力
(set-default-coding-systems 'utf-8)

;;; メニューバーを表示させる
(menu-bar-mode 1)

;;; ツールバーを消す
(tool-bar-mode -1)

;; 列数を表示する
(column-number-mode t)

;; 行数を表示する
(global-linum-mode t)

;;; カーソルの点滅をとめる
(blink-cursor-mode 0)

;;; 対応する括弧を光らせる
(show-paren-mode 1)

;;; ウィンドウ内に収まらないときだけカッコ内も光らせる
(setq show-paren-style 'mixed)

;;; 行末の空白を表示　
(setq-default show-trailing-whitespace t)

;;; 現在行を目立たせる　
;; (global-hl-line-mode t)
;; (custom-set-faces
;; '(hl-line ((t (:background "color-236"))))
;; )

;;; 行の先頭をC-kを一回押すだけで行全体を表示する
(setq kill-whole-line t)

;;; 最終行に必ず一行挿入する
(setq require-final-newline t)

;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;;; バックアップファイルを作らない
(setq make-backup-files nil)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;; 補完
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;;; 部分一致の補完機能を使う
;;; p-bでprint-bufferとか
;;;;; (partial-completion-mode t)

;; 補完可能なものを随時表示
(icomplete-mode 1)

;;; 履歴数
(setq history-length 10000)

;;; ミニバッファの履歴を保存する
(savehist-mode 1)

;;; 最近開いたファイルを保存する数
(setq recentf-max-saved-items 10000)

;;; ediffを1ウィンドウで実行
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;;; diffのオプション
(setq diff-switches '("-u" "-p" "-N"))

;;; デフォルトのタブ
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; ビープ音禁止
(setq ring-bell-function 'ignore)

;; スタート画面(メッセージ)を表示しない
(setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; 選択領域を削除キーで一括削除
(delete-selection-mode t)

;; shift + 矢印キーで領域選択
(if (fboundp 'pc-selection-mode)
    (pc-selection-mode))

;; 読み取り専用バッファーでもカット系でコピー可能
(setq kill-read-only-ok t)

;; ediff 時にフレームを使わない
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; png, jpg などのファイルを画像として表示
(setq auto-image-file-mode t)

;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)

;; スクロールの加速をやめる
(setq mouse-wheel-progressive-speed nil)

;;; diredを便利にする
(require 'dired-x)

;;; grep
(require 'grep)
(setq grep-command-before-query "grep -nH -r -e ")
(defun grep-default-command ()
  (if current-prefix-arg
      (let ((grep-command-before-target
             (concat grep-command-before-query
                     (shell-quote-argument (grep-tag-default)))))
        (cons (if buffer-file-name
                  (concat grep-command-before-target
                          " *."
                          (file-name-extension buffer-file-name))
                (concat grep-command-before-target " ."))
              (+ (length grep-command-before-target) 1)))
    (car grep-command)))
(setq grep-command (cons (concat grep-command-before-query " .")
                         (+ (length grep-command-before-query) 1)))

;;; ファイル名が重複していたらディレクトリ名を追加する
(require 'uniquify)
(setq uniqufy-buffer-name-style 'post-forward-angle-brackets)

;;; diredから"r"でファイル名インライン編集する
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;;; 起動時のフレームサイズの設定
(when (memq window-system '(mac ns))
    (add-hook 'after-init-hook (lambda()
        (set-frame-position (selected-frame) 0 0)
        (set-frame-size (selected-frame) 91 47)))
)

(when (eq system-type 'gnu/linux)
    (add-hook 'after-init-hook (lambda()
        (set-frame-position (selected-frame) 1300 0)
        (set-frame-size (selected-frame) 175 76)))
  )

;; カスタムテーマのロード
(setq custom-theme-directory "~/.emacs.d/themes/")
(load-theme 'FlatUI t)
