;; Pull in all shared init stuff
(load-file "~/.emacs.d/config/core.el")

;;Colour themes
(load-file "~/.emacs.d/vendor/blackbored.el")
(load-file "~/.emacs.d/vendor/whitebored.el")
(color-theme-blackbored)

;;highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333333")

;;cursor
(set-cursor-color "yellow")


;;PATH stuff
(push "/usr/local/bin" exec-path)
(setq path "/Users/sam/bin:/usr/local/bin:$PATH:/bin:/usr/bin")
(setenv "PATH" path)


;;organise ibuffer into handy groups
(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("IRC"      (mode . erc-mode))
               ("emacs" (or
                         (name . "^\\*scratch\\*$")
                         (name . "^\\*Messages\\*$")
                         (name . "^\\*Completions\\*$")
                         (filename . ".emacs.d")))

               ("improcess apps"  (filename . "Development/improcess/apps"))
               ("improcess lib"   (filename . "Development/improcess/lib"))
               ("dired" (mode . dired-mode))

               ))))
(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "default")))


;;projects
(project-def "overtone"
             '((basedir          "/Users/sam/Development/improcess/lib/overtone")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/sam/.emacs.d/etc/mk-project-cache/overtone-files")
               (open-files-cache "/Users/sam/.emacs.d/etc/mk-project-cache/overtone-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))


;;IRC
(require 'erc-join)
(erc-autojoin-mode 1)
(setq erc-autojoin-channels-alist
      '(("freenode.net" "#emacs" "#clojure" "#clojure-casual")
        ("irc.goto10.org" "#openlab")))


;;(erc :server "irc.freenode.net" :full-name "Sam Aaron" :port 6667 :nick "naeu")
;;(erc :server "irc.goto10.org"   :full-name "Sam Aaron" :port 6667 :nick "naeu")

;;org mode config
;;(load-file "~/.emacs.d/org-mode-config.el")
