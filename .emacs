;;
;;
;;
;;
;;

;;; add macro search path
(setq load-path (append '("~/.emacs.d/lisp") load-path))

;; load local settings
;(load "~/.emacs_local")

;(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; easy to identify the file name adding that path.
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; highlight kakko
(show-paren-mode t)

;; coloring selection.
(transient-mark-mode t)
(set-face-background 'region "SkyBlue")

;; delete message
(setq initial-scratch-message "")

;; display line number
(line-number-mode 1)
(column-number-mode 1)

;; Silent
(setq visible-bell t)

;; cursor
(setq cursor-type 'hbar) ;; underline

;; recent 
;(require 'recentf)
;(recentf-mode 1)

;; key bind
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-h" nil)
;(global-set-key "\C-h" 'delete-backward-char)
;(global-set-key "[del]" 'delete-backward-char)
(global-set-key "\C-z" 'undo)
;(global-set-key "\C-x\C-j" 'toggle-input-method)
(global-set-key "\C-l" 'set-mark-command)

;(global-set-key "\C-j" 'dabbrev-completion)
(global-set-key "\C-j" 'dabbrev-expand)

;; tab
;;(setq-default tab-width 2)
;;(setq tab-width 2) 
(setq-default tab-width 2 indent-tabs-mode nil)
(setq tab-width 2 indent-tabs-mode nil)

; don't make a .#~ file.
(setq create-lockfiles nil)

; Don't generate a temporary file
(setq backup-inhibited t)

;; --- mode ---

;; Jade (Stylus)
(require 'stylus-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
