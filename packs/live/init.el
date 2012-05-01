;; Live Coding Pack
;; Pulls in and configures all libs useful for live coding
;; with a specific focus on Clojure and Overtone hacking

;; Add the lib dir to the load-path

(require 'dircolors)
(require 'smooth-scrolling)
(require 'rainbow-delimiters)
(require 'mwe-log-commands)
(require 'ace-jump-mode)

;;Add these back when new version of autocomplete
;;has been released.
;;(live-load-config-file "popup-conf.el")
;;(live-load-config-file "fuzzy-conf.el")

(live-load-config-file "backup-dir-conf.el")
(live-load-config-file "key-chord-conf.el")
(live-load-config-file "util-fns.el")
(live-load-config-file "built-in.el")
(live-load-config-file "paredit-conf.el")
(live-load-config-file "lisps-conf.el")
(live-load-config-file "cosmetic.el")
(live-load-config-file "highlight-flash-conf.el")
(live-load-config-file "volatile-highlights-conf.el")
(live-load-config-file "ido-conf.el")
(live-load-config-file "clojure-conf.el")
(live-load-config-file "slime-conf.el")
(live-load-config-file "auto-complete-conf.el")
(live-load-config-file "smex-conf.el")
(live-load-config-file "yasnippet-conf.el")
(live-load-config-file "undo-tree-conf.el")
(live-load-config-file "refheap-conf.el")
(live-load-config-file "javascript-conf.el")
(live-load-config-file "tramp-conf.el")
(live-load-config-file "mouse-conf.el")
(live-load-config-file "ibuffer-git-conf.el")
