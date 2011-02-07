;; The amazing undo tree
(add-path "vendor/submodules/undo-tree/")
(require 'undo-tree)
(global-undo-tree-mode)

(add-path "vendor/submodules/magit")
(require 'magit)

(add-path "vendor/submodules/slime")
(require 'slime)

(add-path "vendor/submodules/ibuffer-git")
(require 'ibuffer-git)

(add-path"vendor/submodules/mk-project")
(require 'mk-project)

;;ac-slime auto-complete plugin
(add-path "vendor/submodules/ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

;;yaml mode
(add-path "vendor/submodules/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))
(add-path "vendor/submodules/slime")
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
(require 'slime)
(slime-setup)

;;add mo-git-blame for git blame support
(add-path  "vendor/submodules/mo-git-blame")
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

(add-path "vendor/submodules/elein")
(require 'elein)

(add-path "vendor/submodules/smex")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


(add-path "vendor/submodules/clojure-mode")
(require 'clojure-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'rainbow-paren-mode)

