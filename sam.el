(setq custom-basedir (expand-file-name "~/.emacs.d/"))
(defun add-path (p)
  (add-to-list 'load-path (concat custom-basedir p)))

;Fonts
(color-theme-blackboard)

;;to set the font:
;;M-x mac-font-panel-mode
;;M-x describe-font
(set-face-font 'default "-apple-dejavu sans mono-medium-r-normal--10-100-72-72-m-100-iso10646-1")


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
(textmate-mode)

;;wrap region
;(add-to-list 'load-path "~/.emacs.d/vendor/wrap-region")
(require 'wrap-region)

;; bar cursor mode
(require 'bar-cursor)
(bar-cursor-mode 1)

(require 'linum)
(linum-mode)
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

;;allow rectangular selections
(cua-mode)

;;yassnippet
(add-path "vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

;;enable pc mode for shift selection
(pc-selection-mode)


