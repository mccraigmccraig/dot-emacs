;I currently get strange behavour with org-mode
(add-lib-path "org-mode/lisp")
(add-lib-path "org-mode/contrib/lisp")
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(require 'org-install)
(require 'org-velocity)
