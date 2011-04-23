(require 'linkd)
(require 'rcodetools)
(require 'dircolors)
(require 'custom-ruby)
(require 'buffer-move)
(require 'inf-ruby)

(require 'quick-jump)
(require 'multi-term)
(setq multi-term-program "/bin/bash")

(add-lib-path "scratch-el")
(require 'scratch)

(add-lib-path "tramp/lisp")
(add-to-list 'Info-default-directory-list (concat dotfiles-lib-dir "tramp/info/"))
(require 'tramp)

(require 'backup-dir)
(make-variable-buffer-local 'backup-inhibited)
(setq bkup-backup-directory-info
      `((t ,(concat dotfiles-tmp-dir "backups") ok-create full-path prepend-name)))
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)

(add-lib-path "magit")
(require 'magit)

(add-lib-path "ibuffer-git")
(require 'ibuffer-git)

(add-lib-path "mk-project")
(require 'mk-project)

(add-lib-path "arduino-mode")
(require 'arduino-mode)

;;ioke mode
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

;;add ack searching (http://betterthangrep.com/)
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)


(load-dotfile "config/util-fns.el")
(load-dotfile "config/whitespace.el")
(load-dotfile "config/built-in.el")
(load-dotfile "config/bespoke.el")
(load-dotfile "config/erc-growl.el")
(load-dotfile "config/auto-modes.el")
(load-dotfile "config/ruby.el")
(load-dotfile "config/recentf.el")
(load-dotfile "config/cut-n-paste.el")
(load-dotfile "config/ack-conf.el")
(load-dotfile "config/bindings.el")
(load-dotfile "config/auto-modes.el")
(load-dotfile "config/custom-faces.el")
(load-dotfile "config/look-and-feel.el")
(load-dotfile "config/org-mode-conf.el")
(load-dotfile "config/window-number-conf.el")
(load-dotfile "config/markdown-conf.el")
