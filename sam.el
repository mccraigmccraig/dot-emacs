;Fonts
(color-theme-blackboard)

;;to set the font:
;;M-x mac-font-panel-mode
;;M-x describe-font
(set-face-font 'default "-apple-dejavu sans mono-medium-r-normal--10-100-72-72-m-100-iso10646-1")

(global-set-key  (kbd "M-p") (lambda () (interactive) (previous-line 10) (recenter)))
(global-set-key  (kbd "M-n") (lambda () (interactive) (next-line 10) (recenter)))

;;make sure ansi colour character escapes are honoured
(ansi-color-for-comint-mode-on)

;;enable winner mode
(when (fboundp 'winner-mode)
      (winner-mode 1))

;; Minor Modes
(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'textmate)
(textmate-mode)

;; bar cursor mode
(add-to-list 'load-path "~/.emacs.d/vendor/bar-cursor")
(require 'bar-cursor)
(bar-cursor-mode 1)  
(require 'linum)
(linum-mode)
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))
(add-to-list 'load-path "~/.emacs.d/vendor/cedet")
(add-to-list 'load-path "~/.emacs.d/vendor/cedet/common")
(require 'cedet)

(add-to-list 'load-path "~/.emacs.d/vendor/cedet/speedbar")
(require 'speedbar)
(add-to-list 'load-path "~/.emacs.d/vendor/cedet/eieio")
(require 'eieio)
(add-to-list 'load-path "~/.emacs.d/vendor/cedet/semantic")
(require 'semantic)
(add-to-list 'load-path "~/.emacs.d/vendor/ecb")
(require 'ecb)
(cua-mode)
(add-to-list 'load-path "~/.emacs.d/vendor/ack")

;;yassnippet
(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

;;Rails api dock magic

;;(eval-after-load 'ruby-mode '(require 'rails-apidock))

