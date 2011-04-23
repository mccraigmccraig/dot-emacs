;I currently get strange behavour with org-mode
(add-lib-path "vendor/org-mode/lisp")
(add-lib-path "vendor/org-mode/contrib/lisp")
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(require 'org-install)
