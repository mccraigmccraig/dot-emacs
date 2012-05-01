;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User config starts here

(require 'linkd)
(require 'buffer-move)
(require 'quick-jump)
(require 'tramp)

(live-add-pack-lib "scratch-el")
(require 'scratch)

(live-add-pack-lib "egg")
(require 'egg)

(live-add-pack-lib "mk-project")
(require 'mk-project)

;;ioke mode
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

(live-load-config-file "util-fns.el")
(live-load-config-file "whitespace.el")
(live-load-config-file "built-in.el")
(live-load-config-file "bespoke.el")
(live-load-config-file "erc-growl.el")
(live-load-config-file "auto-modes.el")
(live-load-config-file "ruby.el")
(live-load-config-file "recentf.el")
(live-load-config-file "cut-n-paste.el")
(live-load-config-file "ack-conf.el")
(live-load-config-file "auto-modes.el")
(live-load-config-file "look-and-feel.el")
(live-load-config-file "window-number-conf.el")
(live-load-config-file "markdown-conf.el")
(live-load-config-file "shell.el")
(live-load-config-file "supercollider-conf.el")
(live-load-config-file "personal.el")
(live-load-config-file "erc-conf.el")
(live-load-config-file "actionscript-conf.el")
(live-load-config-file "bindings.el")
(live-load-config-file "org-mode-conf.el")
(live-load-config-file "deft-conf.el")
