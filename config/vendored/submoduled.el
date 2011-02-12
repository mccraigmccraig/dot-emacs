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

;;add mo-git-blame for git blame support
(add-path "vendor/mo-git-blame")
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

(add-path "vendor/elein")
(require 'elein)

(add-path "vendor/smex")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


(add-path "vendor/clojure-mode")
(require 'clojure-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'rainbow-paren-mode)

