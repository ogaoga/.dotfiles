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
;(require 'cask)
(require 'cask "/usr/local/opt/cask/cask.el")
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

;;; smooth-scroll
(require 'smooth-scroll)
(smooth-scroll-mode t)

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

(global-set-key "√" 'scroll-down)

;; tab
;;(setq-default tab-width 2)
;;(setq tab-width 2)
(setq-default tab-width 2 indent-tabs-mode nil)
(setq tab-width 2 indent-tabs-mode nil)
(setq js-indent-level 2)

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
;(require 'scss-mode)
;(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
;(require 'sass-mode)
;(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

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
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . web-mode))

;; TypeScript mode
(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts[x]?\\'" . typescript-mode))
;(require 'tss)
;(setq tss-popup-help-key "C-:")
;(setq tss-jump-to-definition-key "C->")
;(setq tss-implement-definition-key "C-c i")
;(tss-config-default)

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
    (vue-html-mode vue-mode git-gutter+ mustache yasnippet web-mode use-package smex smartparens sass-mode scss-mode projectile prodigy popwin pallet nyan-mode mustache-mode multiple-cursors magit idle-highlight-mode htmlize flycheck-cask expand-region exec-path-from-shell editorconfig drag-stuff))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))
;; ;; emmet mode
;; (require 'emmet-mode)
;; (add-hook 'sgml-mode-hook 'emmet-mode) ;; マークアップ言語全部で使う
;; (add-hook 'css-mode-hook  'emmet-mode) ;; CSSにも使う
;; (add-hook 'web-mode-hook  'emmet-mode)
;; (add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent はスペース2個
;; ;(setq emmet-expand-jsx-className? t) ;; default nil
;; (eval-after-load "emmet-mode"
;;   '(define-key emmet-mode-keymap (kbd "C-j") nil)) ;; ままにしておく
;; ;(keyboard-translate ?\C-i ?\H-i) ;;C-i と Tabの被りを回避
;; ;(define-key emmet-mode-keymap (kbd "H-i") 'emmet-expand-line) ;; C-i で展開
;; (define-key emmet-mode-keymap (kbd "C-i") 'emmet-expand-line) ;; C-i で展開

;; ;; --- git-gutter-puls ---
;; (global-git-gutter+-mode)
;; (setq git-gutter+-modified-sign "  ") ;; two space
;; (setq git-gutter+-added-sign "++")    ;; multiple character is OK
;; (setq git-gutter+-deleted-sign "--")
;; (set-face-background 'git-gutter+-modified "purple") ;; background color
;; (set-face-foreground 'git-gutter+-added "green")
;; (set-face-foreground 'git-gutter+-deleted "red")

;; (set-face-attribute 'git-gutter+-added nil
;;                     :foreground "white" :background "dark green")
;; (set-face-attribute 'git-gutter+-deleted nil
;;                     :foreground "white" :background "dark red")
;; (set-face-attribute 'git-gutter+-modified nil
;;                     :foreground nil :background nil
;;                     :weight 'bold :inverse-video t)

