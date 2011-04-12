(add-path "vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)

(setq yas/root-directory "~/.emacs.d/etc/snippets")

;; Load the snippets
(yas/load-directory yas/root-directory)

