;;htmllize
(load "/Users/e105744/.emacs.d/htmlize.el")

;;load path
(setq load-path (cons (expand-file-name "/Users/e105744/.emacs.d/color-theme-6.6.0") load-path))

(display-time-mode 1)

;;カーソル位置表示
(line-number-mode 1)
(column-number-mode 1)
(blink-cursor-mode 0)

;;キーバインド
(define-key global-map "\C-u" 'undo)
(define-key global-map "\C-j" 'dabbrev-expand)
(define-key global-map "\C-h" 'delete-backward-char)
(define-key global-map "\C-c\C-i" 'indent-region)
(define-key global-map "\C-ch" 'windmove-left)
(define-key global-map "\C-cj" 'windmove-down)
(define-key global-map "\C-ck" 'windmove-up)
(define-key global-map "\C-cl" 'windmove-right)
(define-key global-map "\C-c\C-c" 'comment-or-uncomment-region)
(define-key global-map "\C-c\C-v" 'split-window-horizontally)

;;括弧の対応
(show-paren-mode 1)

;;スクロール設定
(setq scroll-step 1)

;;関数名
(which-function-mode 1)

;; スケルトンでのペア補完をオン
(setq skeleton-pair 1)

;;; スケルトンでのペア補完定義
;;(global-set-key "(" 'skeleton-pair-insert-maybe)
;;(global-set-key "[" 'skeleton-pair-insert-maybe)
;;(global-set-key "{" 'skeleton-pair-insert-maybe)
;;(global-set-key "\"" 'skeleton-pair-insert-maybe)
;;(global-set-key "'" 'skeleton-pair-insert-maybe)

;;選択範囲に色をつける
(setq transient-mark-mode t)

;;行削除
(setq kill-whole-line t)

;;聞き方の変更
(fset 'yes-or-no-p 'y-or-n-p)

;;インデント関係
(global-set-key "\C-m" 'newline-and-indent)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-basic-offset 4)
;; (setq default-tab-width 4)

;;カラーテーマ
(require 'color-theme)
(color-theme-initialize)
(color-theme-pok-wob)

;;(load-library "php-mode")
;;(reguire 'php-mode)

;;全角
(defface my-face-b-1 '((t (:background "medium aquamarine"))) nil)
(defface my-face-b-1 '((t (:background "dark turquoise"))) nil)
(defface my-face-b-2 '((t (:background "cyan"))) nil)
(defface my-face-b-2 '((t (:background "SeaGreen"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("　" 0 my-face-b-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks '(lambda ()
							  (if font-lock-mode
								  nil
								(font-lock-mode t))))
(put 'set-goal-column 'disabled nil)

;;gosh
(setq scheme-program-name "gosh -i")

;; groovy
(global-font-lock-mode 1)
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))

;;backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; OpenCL
(add-to-list 'auto-mode-alist '("\.cl$" . c++-mode))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(tab-width 8))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Cuda
(add-to-list 'auto-mode-alist '("\.cu$" . c++-mode))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(tab-width 8))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Haskell
(add-to-list 'load-path "/Users/e105744/.emacs.d/haskell-mode/")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "/Users/e105744/.emacs.d/haskell-mode/")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;; haml
(add-to-list 'load-path "/Users/e105744/.emacs.d/haml-mode/")
(require 'haml-mode)

;; erlang
(setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.8.3/emacs/"
                      load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)

(global-set-key "\C-x\C-b" 'buffer-menu)

;; MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(require 'csharp-mode)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

(require 'ruby-mode)
(defun ruby-mode-set-encoding () nil)
