;; Create a var for this live config dir
(setq user-config-dir (file-name-directory
                       (or (buffer-file-name) load-file-name)))

(setq user-lib-dir (concat user-config-dir "../lib/"))

;; Define some helper fns for loading live config paths and files
(defun load-user-config-file (f)
  (load-file (concat user-config-dir f)))

(defun add-user-lib-path (p)
  (add-to-list 'load-path (concat user-lib-dir p)))

;; Add the lib dir to the load-path
(add-to-list 'load-path user-lib-dir)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User config starts here

;; use blackbored colour theme
(load-file (concat live-lib-dir "blackbored.el"))
(color-theme-blackbored)

(require 'linkd)
(require 'buffer-move)
(require 'quick-jump)
(require 'tramp)

(add-user-lib-path "scratch-el")
(require 'scratch)

(add-user-lib-path "egg")
(require 'egg)

(add-user-lib-path "mk-project")
(require 'mk-project)

;;ioke mode
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

(load-user-config-file "util-fns.el")
(load-user-config-file "whitespace.el")
(load-user-config-file "built-in.el")
(load-user-config-file "bespoke.el")
(load-user-config-file "erc-growl.el")
(load-user-config-file "auto-modes.el")
(load-user-config-file "ruby.el")
(load-user-config-file "recentf.el")
(load-user-config-file "cut-n-paste.el")
(load-user-config-file "ack-conf.el")
(load-user-config-file "auto-modes.el")
(load-user-config-file "custom-faces.el")
(load-user-config-file "look-and-feel.el")
(load-user-config-file "window-number-conf.el")
(load-user-config-file "markdown-conf.el")
(load-user-config-file "shell.el")
(load-user-config-file "supercollider-conf.el")
(load-user-config-file "personal.el")
(load-user-config-file "erc-conf.el")
(load-user-config-file "actionscript-conf.el")
(load-user-config-file "bindings.el")
(load-user-config-file "org-mode-conf.el")
(load-user-config-file "deft-conf.el")
