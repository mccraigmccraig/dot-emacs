(setq custom-basedir (expand-file-name "~/.emacs.d/"))
(defun add-path (p)
  (add-to-list 'load-path (concat custom-basedir p)))
;; Line-wrapping
(set-default 'fill-column 180)

;;git-emacs
(add-path "vendor/git-emacs")
(require 'git-emacs)

;;use ibuffer-git
(add-path "vendor/ibuffer-git")
(require 'ibuffer-git)

(setq ibuffer-formats '((mark modified read-only git-status-mini " "
      (name 18 18 :left :elide)
      " "
      (size 9 -1 :right)
      " "
      (git-status 8 8 :left :elide)
      " "
      (mode 16 16 :left :elide)
      " " filename-and-process)))

;;pull in org-mode
(add-path "vendor/org-mode/lisp")
(add-path "vendor/org-mode/contrib/lisp")
;(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org-install)

;;WindMove (for easy window navigation (no more C-x o
;;To move between windows use S-(<left>|<right>|<up>|<down>)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;use buffer move
(load-file "~/.emacs.d/vendor/windmove.el")

;add mk-project
(add-to-list 'load-path "~/.emacs.d/vendor/mk-project")
(require 'mk-project)

;; set comment style to be indent
(setq comment-style 'indent)

;;on os x use command key as meta
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'nil)

(load-file "~/.emacs.d/vendor/backup-dir.el")
(require 'backup-dir)
(setq bkup-backup-directory-info
      '((t "~/.backup" ok-create full-path prepend-name)))
(setq delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)

(load-file "~/.emacs.d/vendor/dircolors.el")
(require 'dircolors)

(load-file "~/.emacs.d/vendor/undo-tree/undo-tree.el")
(require 'undo-tree)
(global-undo-tree-mode)

(load-file "~/.emacs.d/vendor/linkd.el")
(require 'linkd)

;comment out because it is currently broken in 23.1.5 edge (OS X)
; (load-file "~/.emacs.d/vendor/anything.el")
; (require 'anything)
;
; (load-file "~/.emacs.d/vendor/anything-config/anything-config.el")
; (require 'anything-config)

(load-file "~/.emacs.d/vendor/rcodetools.el")
(require 'rcodetools)

(add-to-list 'load-path "~/.emacs.d/vendor/tramp/lisp")
(require 'tramp)


;;add mo-git-blame for git blame support
(add-to-list 'load-path "~/.emacs.d/vendor/mo-git-blame")
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

;;; enables outlining for ruby
;;; You may also want to bind hide-body, hide-subtree, show-substree
;;; show-all, show-children, ... to some keys easy folding and unfolding
(add-hook 'ruby-mode-hook
              '(lambda ()
                 (outline-minor-mode)
                 (setq outline-regexp " *\\(def \\|class\\|module\\|describe \\|it \\)")))

;;make evil tabs visible as arrows
(let ((d (make-display-table)))
  (aset d 9 (vector ?→ ? ))
  (set-window-display-table nil d))

;;enable cua-mode for rectangular selections
(cua-mode 1)
(setq cua-enable-cua-keys nil)

;;remove all trailing whitespace before saving the file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;enable icomplete
(icomplete-mode 1)
(setq icomplete-compute-delay 0)
(load-file "~/.emacs.d/vendor/icomplete+.el")
(require 'icomplete+)

;get rid of clutter
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;make sure ansi colour character escapes are honoured
(ansi-color-for-comint-mode-on)

;;enable winner mode for C-c-(<left>|<right>) to navigate the history
;;of buffer changes i.e. undo a split screen
(when (fboundp 'winner-mode)
      (winner-mode 1))

;; Minor Modes
(add-path "vendor")

;;wrap region
;(add-to-list 'load-path "~/.emacs.d/vendor/wrap-region")
(require 'wrap-region)

;;yassnippet
(add-path "vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

;;ioke mode
(autoload 'ioke-mode "ioke-mode")
(autoload 'run-ioke "inf-ioke" nil t)
(add-to-list 'auto-mode-alist '("\\.ik$" . ioke-mode))

(require 'custom-ruby)

;;add ack searching (http://betterthangrep.com/)
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)


;use aspell
(setq-default ispell-program-name "aspell")
;;Setup some dictionary languages
(setq ispell-dictionary "british")'
(setq flyspell-default-dictionary "british")

(load-file "~/.emacs.d/shortcuts.el")
