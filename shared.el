(setq custom-basedir (expand-file-name "~/.emacs.d/"))
(defun add-path (p)
  (add-to-list 'load-path (concat custom-basedir p)))

(load-file "~/.emacs.d/vendor/linkd.el")
(require 'linkd)

(load-file "~/.emacs.d/vendor/anything.el")
(require 'anything)

(load-file "~/.emacs.d/vendor/anything-config/anything-config.el")
(require 'anything-config)

(load-file "~/.emacs.d/vendor/rcodetools.el")
(require 'rcodetools)

(add-to-list 'load-path "~/.emacs.d/vendor/tramp/lisp")
(require 'tramp)

;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/vendor/clojure-mode")
(require 'clojure-mode)

;; swank-clojure
(add-to-list 'load-path "~/.emacs.d/vendor/swank-clojure/src/emacs")

(setq swank-clojure-jar-path "~/.clojure/clojure.jar"
      swank-clojure-extra-classpaths (list
                                      "~/.emacs.d/vendor/swank-clojure/src/main/clojure"
                                      "~/.clojure/clojure-contrib.jar"))

(require 'swank-clojure-autoload)

;; slime
(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "~/.emacs.d/vendor/slime")
(require 'slime)
(slime-setup)

;;add mo-git-blame for git blame support
(add-to-list 'load-path "~/.emacs.d/vendor/mo-git-blame")
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

;;; enables outlining for ruby
;;; You may also want to bind hide-body, hide-subtree, show-substree,
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

(global-set-key (kbd "C-#") 'cua-set-rectangle-mark)

;;remove all trailing whitespace before saving the file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;enable icomplete
(icomplete-mode 1)
(setq icomplete-compute-delay 0)
(load-file "~/.emacs.d/vendor/icomplete+.el")
(require 'icomplete+)

;;WindMove (for easy window navigation (no more C-x o
;;To move between windows use S-(<left>|<right>|<up>|<down>)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;make ^h delete rather than help
(keyboard-translate ?\C-h ?\C-?)

;;redefine help to be C-M-h
(global-set-key (kbd "C-M-h") 'help)

;;macro to insert text above the current line
(fset 'insert-above
   [?\C-e return ?\C-a ?\C-k ?\C-p ?\C-p M-return])
(global-set-key (kbd "M-o") 'insert-above)

;allow the deletion of words:
;backward kill word (forward kill word is M-d)
(global-set-key (kbd "C-w") 'backward-kill-word)
;delete current word
(global-set-key (kbd "M-w") (lambda () (interactive) (backward-word) (kill-word 1)))

;kill regions
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

;;repeat previous command
(global-set-key (kbd "C-.") 'repeat)

;;shortcuts for growing and shrinking windows horizontally
(global-set-key (kbd "C-<") 'enlarge-window-horizontally)
(global-set-key (kbd "C->") 'shrink-window-horizontally)

;get rid of clutter
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;fast vertical naviation
(global-set-key  (kbd "M-p") (lambda () (interactive) (previous-line 10)))
(global-set-key  (kbd "M-n") (lambda () (interactive) (next-line 10)))

;;make sure ansi colour character escapes are honoured
(ansi-color-for-comint-mode-on)

;;enable winner mode for C-c-(<left>|<right>) to navigate the history
;;of buffer changes i.e. undo a split screen
(when (fboundp 'winner-mode)
      (winner-mode 1))

;; Minor Modes
(add-path "vendor")
(require 'textmate)
(textmate-mode 1)

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
(add-to-list 'load-path "/path/to/full-ack")
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;;use buffer move
(load-file "~/.emacs.d/vendor/windmove.el")
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)