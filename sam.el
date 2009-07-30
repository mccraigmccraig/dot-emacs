(setq custom-basedir (expand-file-name "~/.emacs.d/"))   
(defun add-path (p)
  (add-to-list 'load-path (concat custom-basedir p)))

;;WindMove (for easy window navigation (no more C-x o
;;To move between windows use S-(<left>|<right>|<up>|<down>)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;CEDET mode
(load-file "~/.emacs.d/vendor/cedet-1.0pre6/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu

;;ECB
(add-path "vendor/ecb-2.40")
(require 'ecb)

;;Fonts
(load-file "~/.emacs.d/vendor/blackbored.el")
(color-theme-blackbored)

;make ^h delete rather than help
(keyboard-translate ?\C-h ?\C-?)

;;macro to insert text above the current line
(fset 'insert-above
   [?\C-e return ?\C-a ?\C-k ?\C-p ?\C-p M-return])
(global-set-key (kbd "M-h") 'insert-above)

;;to set the font:
;;M-x mac-font-panel-mode
;;M-x describe-font
(set-face-font 'default "-apple-Menlo-medium-normal-normal-*-10-*-*-*-m-0-iso10646-1")

;allow the deletion of words
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

;;shortcuts for growing and shrinking windows horizontally
(global-set-key (kbd "C-,") 'enlarge-window-horizontally)
(global-set-key (kbd "C-.") 'shrink-window-horizontally)

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
(set-face-background 'hl-line "#333333")

;;ioke mode
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

; enable skeleton-pair insert globally
;(setq skeleton-pair t)
;(setq skeleton-pair-on-word t) ; apply skeleton trick even in front of a word.
;(global-set-key (kbd "(")  'skeleton-pair-insert-maybe)
;(global-set-key (kbd "[")  'skeleton-pair-insert-maybe)
;(global-set-key (kbd "{")  'skeleton-pair-insert-maybe)
;(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
;(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)

;;whitespace mode
(require 'whitespace)
(whitespace-mode)

;;yassnippet
(add-path "vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

;show trailing whitespace
(setq default-indicate-empty-lines t)

;cursor
(set-cursor-color "yellow")

;clojure
(eval-after-load 'clojure-mode '(clojure-slime-config))
(load-file (expand-file-name "~/.emacs.d/elpa/clojure-mode-1.1/clojure-mode.el"))
(setq clojure-src-root (expand-file-name "~/src"))
(eval-after-load 'clojure-mode '(clojure-slime-config))

;make mark colour a nice usable dark pink
(set-face-background 'region "#7F073F")

(server-start)