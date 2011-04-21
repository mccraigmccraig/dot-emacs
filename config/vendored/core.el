(add-path "vendor")

;; utils
(require 'linkd)
(require 'rcodetools)
(require 'dircolors)
(require 'custom-ruby)
(require 'smooth-scrolling)
(require 'rainbow-parens)
(require 'rainbow-delimiters)
(require 'buffer-move)
(require 'inf-ruby)

(require 'quick-jump)
(require 'multi-term)
(setq multi-term-program "/bin/bash")

(require 'markdown-mode)
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;color-theme
(add-path "vendor/color-theme")
(require 'color-theme)

;; highlight expression on eval
(require 'highlight)
(require 'eval-sexp-fu)
(setq eval-sexp-fu-flash-duration 0.5)

(add-path "vendor/scratch")
(require 'scratch)

(add-path "vendor/tramp/lisp")
(add-to-list 'Info-default-directory-list (concat custom-basedir "vendor/tramp/info/"))
(require 'tramp)


;;TODO: Test to see whether this actually works
(require 'backup-dir)
(make-variable-buffer-local 'backup-inhibited)
(setq bkup-backup-directory-info
      '((t "~/.backup" ok-create full-path prepend-name)))
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)

;; The amazing undo tree
(add-path "vendor/undo-tree/")
(require 'undo-tree)
(global-undo-tree-mode)

(add-path "vendor/magit")
(require 'magit)

(add-path "vendor/slime")
(require 'slime)

(add-path "vendor/ibuffer-git")
(require 'ibuffer-git)

(add-path "vendor/mk-project")
(require 'mk-project)

(add-path "vendor/elein")
(require 'elein)

(add-path "vendor/arduino-mode")
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

;;pull in larger vendored configs
(load-file "~/.emacs.d/config/vendored/paredit-conf.el")
(load-file "~/.emacs.d/config/vendored/yaml-conf.el")
(load-file "~/.emacs.d/config/vendored/smex-conf.el")
(load-file "~/.emacs.d/config/vendored/org-mode-conf.el")
(load-file "~/.emacs.d/config/vendored/window-number-conf.el")
(load-file "~/.emacs.d/config/vendored/slime-conf.el")
(load-file "~/.emacs.d/config/vendored/clojure-conf.el")
(load-file "~/.emacs.d/config/vendored/ack-conf.el")
(load-file "~/.emacs.d/config/vendored/auto-complete-conf.el")
(load-file "~/.emacs.d/config/vendored/highlight-flash-conf.el")
(load-file "~/.emacs.d/config/vendored/ido-conf.el")
(load-file "~/.emacs.d/config/vendored/durendal-conf.el")
(load-file "~/.emacs.d/config/vendored/yasnippet-conf.el")
