;;
;;
;;
;;
;;

;;; add macro search path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq load-path (append '("~/.emacs.d/lisp") load-path))

;; load local settings
;(load "~/.emacs_local")

;; cask
(require 'cask)
(cask-initialize)

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

;; Scroll
;(setq scroll-step 1)
(setq scroll-conservatively 1)
(setq scroll-margin 8)
(setq scroll-preserve-screen-position t)

;; Do not return at right edge
(setq-default truncate-lines t)
(setq truncate-partial-width-windows t)

;; Do not add new line at the end of document.
(setq next-line-add-newlines nil)

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
; Don't generate *.~
(setq make-backup-files nil)
; Don't generate .#*
(setq auto-save-default nil)

;; editorconfig
(setq edconf-exec-path "/usr/local/bin/editorconfig")
(editorconfig-mode 1)

;; Markdown
(setq markdown-command "multimarkdown")

;; --- mode ---

;; Jade (Stylus)
(require 'stylus-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; Sass
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))

;; Web mode
(require 'mustache-mode)
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . mustache-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (mustache yasnippet web-mode use-package smex smartparens sass-mode projectile prodigy popwin pallet nyan-mode mustache-mode multiple-cursors magit idle-highlight-mode htmlize flycheck-cask expand-region exec-path-from-shell editorconfig drag-stuff))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
