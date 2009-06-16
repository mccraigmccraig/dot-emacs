(setq custom-basedir (expand-file-name "~/.emacs.d/"))   
(defun add-path (p)
  (add-to-list 'load-path (concat custom-basedir p)))

;Fonts
(color-theme-blackboard)
(set-face-background 'region "#954B00")

;make ^h delete rather than help
(keyboard-translate ?\C-h ?\C-?)

;;macro to insert text above the current line
(fset 'insert-above
   [?\C-e return ?\C-a ?\C-k ?\C-p ?\C-p M-return])
(global-set-key "\M-]" 'insert-above)

(fset 'move-to-end-of-line-after-creating-and-removing-a-new-line
      [?\C-e return ?\C-a ?\C-k ?\C-p ?\C-e])
(global-set-key "\M-[" 'move-to-end-of-line-after-creating-and-removing-a-new-line)

;;to set the font:
;;M-x mac-font-panel-mode
;;M-x describe-font
(set-face-font 'default "-apple-Menlo-medium-normal-normal-*-10-*-*-*-m-0-iso10646-1")

;allow the deletion of words
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;;shortcuts for growing and shrinking windows horizontally
(global-set-key [(control ,)] 'enlarge-window-horizontally)
(global-set-key [(control .)] 'shrink-window-horizontally)

;get rid of clutter
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;fast vertical naviation
(global-set-key  (kbd "M-p") (lambda () (interactive) (previous-line 10) (recenter)))
(global-set-key  (kbd "M-n") (lambda () (interactive) (next-line 10) (recenter)))

;;make sure ansi colour character escapes are honoured
(ansi-color-for-comint-mode-on)

;;enable winner mode
(when (fboundp 'winner-mode)
      (winner-mode 1))

;; Minor Modes
(add-path "vendor")
(require 'textmate)
(textmate-mode 1)  

;;wrap region
;(add-to-list 'load-path "~/.emacs.d/vendor/wrap-region")
(require 'wrap-region)

;;highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#352748")

;;ioke mode
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

;;whitespace mode
(require 'whitespace)
(whitespace-mode)

;;yassnippet
(add-path "vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

;;enable pc mode for shift selection
(pc-selection-mode)

;show trailing whitespace
(setq default-indicate-empty-lines t)

;cursor
(set-cursor-color "yellow")

(server-start)