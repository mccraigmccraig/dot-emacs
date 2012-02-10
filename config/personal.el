;;PATH stuff
(push "/usr/local/bin" exec-path)
(setq path "/Applications/Supercollider:/Users/mccraig/bin:/usr/local/bin:$PATH:/bin:/usr/bin")
(setenv "PATH" path)
(push "/Applications/SuperCollider" exec-path)

;;organise ibuffer into handy groups
(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("IRC"      (mode . erc-mode))
               ("emacs" (or
                         (name . "^\\*scratch\\*$")
                         (name . "^\\*Messages\\*$")
                         (name . "^\\*Completions\\*$")
                         (filename . ".emacs.d")))

               ("dired" (mode . dired-mode))
               ("SLIME" (or
                         (name . "^\\*inferior-lisp\\*$")
                         (name . "^\\*slime-events\\*$")
                         (name . "^\\*slime-repl.*$")
                         (name . "^\\*SLIME Macroexpansion\\*")
                         (name . "^\\*SLIME Compilation\\*")))))))
(setq ibuffer-default-sorting-mode (quote filename/process))
(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "default")))

;;projects
(project-def "overtone"
             '((basedir          "/Users/mccraig/dev/clojure/overtone")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/overtone-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/overtone-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "tones"
             '((basedir          "/Users/mccraig/dev/tones")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/tones-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/tones-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "bcrp"
             '((basedir          "/Users/mccraig/dev/codeface/bcrp")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/bcrp-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/bcrp-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "techcitymap-api"
             '((basedir          "/Users/mccraig/dev/techcitymap-api")
               (src-patterns     ("*.clj" "*.html" "*.css" "*.js"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/techcitymap-api-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/techcitymap-api-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "techcitymap-admin"
             '((basedir          "/Users/mccraig/dev/techcitymap-admin")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/techcitymap-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/techcitymap-app-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "dyd_diary_2012"
             '((basedir          "/Users/mccraig/dev/codeface/dyd_diary_2012")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/dyd_diary_2012-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/dyd_diary_2012-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "cloudtimers"
             '((basedir          "/Users/mccraig/dev/cloudtimers")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cloudtimers-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cloudtimers-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "battleships"
             '((basedir          "/Users/mccraig/dev/clojure/battleships")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/battleships-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/battleships-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))
