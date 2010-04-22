(add-path "vendor")

(require 'linkd)
(require 'rcodetools)
(require 'wrap-region)
(require 'dircolors)
(require 'custom-ruby)
(require 'smooth-scrolling)

(add-path "vendor/emacs-rails")
(require 'rails)

(add-path "vendor/git-emacs")
(require 'git-emacs)

(add-path "vendor/ibuffer-git")
(require 'ibuffer-git)

(add-path"vendor/mk-project")
(require 'mk-project)

(add-path "vendor/tramp/lisp")
(require 'tramp)

(add-path "vendor/rvm")
(require 'rvm)
(rvm-use-default)

(add-path "vendor/undo-tree/")
(require 'undo-tree)
(global-undo-tree-mode)

(add-path "vendor/nxhtml")
(load "~/.emacs.d/vendor/nxhtml/autostart.el")

(require 'icomplete+)
(icomplete-mode 1)
(setq icomplete-compute-delay 0)

;;TODO: get working
(require 'rainbow-parens)
;;(autoload 'rainbow-parens-mode "emacs-lisp-mode")
;;(autoload 'rainbow-parens-mode "clojure-mode")
(autoload 'clojure-mode "rainbow-parens-mode")

;;for easy window navigation (no more C-x o)
;;To move between windows use S-(<left>|<right>|<up>|<down>)
(require 'windmove)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;TODO: Test to see whether this actually works
(require 'backup-dir)
(setq bkup-backup-directory-info
      '((t "~/.backup" ok-create full-path prepend-name)))
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)

;;yassnippet
(add-path "vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

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

;I currently get strange behavour with org-mode
;(add-path "vendor/org-mode/lisp")
;(add-path "vendor/org-mode/contrib/lisp")
;(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
;(require 'org-install)

;comment out because it is currently broken in 23.1.5 edge (OS X)
; (load-file "~/.emacs.d/vendor/anything.el")
; (require 'anything)
;
; (load-file "~/.emacs.d/vendor/anything-config/anything-config.el")
; (require 'anything-config)


