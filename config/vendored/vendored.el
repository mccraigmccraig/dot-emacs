(add-path "vendor")

;; utils
(require 'package) ;; slime.el seems to depend on it :-(
(require 'paredit)
(require 'pos-tip)
(require 'linkd)
(require 'rcodetools)
(require 'wrap-region)
(require 'dircolors)
(require 'custom-ruby)
(require 'smooth-scrolling)
(require 'rainbow-parens)
(require 'rainbow-delimiters)
(require 'buffer-move)
(require 'inf-ruby)

(require 'multi-term)
(setq multi-term-program "/bin/bash")

;;window-number mode
(require 'window-number)
(autoload 'window-number-mode "window-number"
  "A global minor mode that enables selection of windows according to
numbers with the C-x C-j prefix.  Another mode,
`window-number-meta-mode' enables the use of the M- prefix."
  t)
(window-number-mode 1)

(autoload 'window-number-meta-mode "window-number"
  "A global minor mode that enables use of the M- prefix to select
windows, use `window-number-mode' to display the window numbers in
the mode-line."
  t)
(window-number-meta-mode 1)

;;color-theme
(add-path "vendor/stored/color-theme")
(require 'color-theme)

;; highlight expression on eval
(require 'highlight)
(require 'eval-sexp-fu)
(setq eval-sexp-fu-flash-duration 0.5)

;;yassnippet
(add-path "vendor/stored/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/stored/yasnippet/snippets")

;; The amazing undo tree
(add-path "vendor/undo-tree/")
(require 'undo-tree)
(global-undo-tree-mode)

;;scratch-el
(add-path "vendor/stored/scratch")
(require 'scratch)

;; modes

(add-path "vendor/magit")
(require 'magit)

(add-path "vendor/slime")
(require 'slime)

(add-path "vendor/ibuffer-git")
(require 'ibuffer-git)

(add-path"vendor/mk-project")
(require 'mk-project)

(add-path "vendor/stored/tramp/lisp")
(add-to-list 'Info-default-directory-list "/vendor/stored/tramp/info/")
(require 'tramp)

(add-path "vendor/nxhtml")
(load "~/.emacs.d/vendor/nxhtml/autostart.el")


(add-path "vendor/clojure-mode")
(require 'clojure-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'rainbow-paren-mode)

(add-path "vendor/elein")
(require 'elein)

(add-path "vendor/smex")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'icomplete+)
(icomplete-mode 1)
(setq icomplete-compute-delay 0)


;;TODO: Test to see whether this actually works
(require 'backup-dir)
(setq bkup-backup-directory-info
      '((t "~/.backup" ok-create full-path prepend-name)))
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)


;;add mo-git-blame for git blame support
(add-path  "vendor/mo-git-blame")
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

;;ioke mode
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

;;add ack searching (http://betterthangrep.com/)
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;;yaml mode
(add-path "vendor/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))
(add-path "vendor/slime")
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
(require 'slime)
(slime-setup)

;;ac-slime auto-complete plugin
(add-path "vendor/ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)


;I currently get strange behavour with org-mode
(add-path "vendor/org-mode/lisp")
(add-path "vendor/org-mode/contrib/lisp")
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org-install)

;comment out because it is currently broken in 23.1.5 edge (OS X)
; (load-file "~/.emacs.d/vendor/anything.el")
; (require 'anything)
;
; (load-file "~/.emacs.d/vendor/anything-config/anything-config.el")
; (require 'anything-config)


;;pull in larger vendored configs
(load-file "~/.emacs.d/config/vendored/ack-conf.el")
(load-file "~/.emacs.d/config/vendored/auto-complete-conf.el")
(load-file "~/.emacs.d/config/vendored/highlight-flash-conf.el")
(load-file "~/.emacs.d/config/vendored/clojure-conf.el")
(load-file "~/.emacs.d/config/vendored/slime-conf.el")
(load-file "~/.emacs.d/config/vendored/ido-conf.el")

