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

               ))))
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

(project-def "bcrp"
             '((basedir          "/Users/mccraig/dev/codeface/bcrp")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/bcrp-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/bcrp-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))
