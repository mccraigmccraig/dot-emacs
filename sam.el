;; Minor Modes
(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'textmate)
(textmate-mode)
(require 'linum)
(linum-mode)
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))
