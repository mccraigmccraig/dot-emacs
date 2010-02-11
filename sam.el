(load-file "~/.emacs.d/shared.el")
(setq exec-path (append exec-path '("/usr/local/git/bin/git")))
(push "/Applications/SuperCollider" exec-path)

(setq path "/Applications/SuperCollider:/Applications/Emacs.app/Contents/MacOS/bin:/Users/sam/bin:/usr/local/bin:$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin/:/usr/local/ruby1.9/bin:/Users/sam/Development/jruby/bin:/Users/sam/Development/chuck/bin:/Users/sam/Development/ioke/bin:~/innovationfactory/suite/dev/if-scripts")
(setenv "PATH" path)


;projects

 (project-def "polynome"
       '((basedir          "/Users/sam/Development/polynome")
         (src-patterns     ("*.rb"))
         (ignore-patterns  ("*.rbc" "*.log"))
         (vcs              git)
         (ack-args         "--ruby")
        (shutdown-hook    nil)))

(add-to-list 'load-path "~/.emacs.d/vendor/supercollider/el")
(require 'sclang)

(custom-set-variables
'(sclang-auto-scroll-post-buffer t)
'(sclang-eval-line-forward nil)
'(sclang-help-path (quote ("/Applications/SuperCollider/Help")))
'(sclang-library-configuration-file "~/.sclang.cfg")
'(sclang-runtime-directory "~/.sclang/"))
;'(sclang-server-panel "Server.default.makeGui"))

;;Fonts
;;to set the font:
;;M-x mac-font-panel-mode
;;M-x describe-font
;;for NS emacs 23
(set-face-font 'default "-apple-Menlo-medium-normal-normal-*-10-*-*-*-m-0-iso10646-1")
;;
;;for Carbon emacs 22
;;(set-face-font 'default "-apple-menlo-medium-r-normal--10-100-72-72-m-100-iso10646-1")

(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))
(global-set-key [(meta return)] 'toggle-fullscreen)



;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/vendor/clojure-mode")
(require 'clojure-mode)

;; swank-clojure
(add-to-list 'load-path "~/.emacs.d/vendor/swank-clojure/src/emacs")

(setq swank-clojure-jar-path "~/.clojure/clojure.jar"
      swank-clojure-extra-classpaths (list
                                      "~/.clojure/"
                                      "~/Development/overtone/lib"
                                      "~/Development/overtone/src"
                                      "~/Development/overtone/test"
))

(require 'swank-clojure-autoload)

;; slime
(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "~/.emacs.d/vendor/slime")
(require 'slime)
(slime-setup)


;;colour theme
(load-file "~/.emacs.d/vendor/blackbored.el")
(color-theme-blackbored)


;;highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333333")


;cursor
(set-cursor-color "yellow")


;clojure
;(eval-after-load 'clojure-mode '(clojure-slime-config))
;(load-file (expand-file-name "~/.emacs.d/elpa/clojure-mode-1.1/clojure-mode.el"))
;(setq clojure-src-root (expand-file-name "~/.emacs.d/vendor/clojure/src"))
;(eval-after-load 'clojure-mode '(clojure-slime-config))


;make mark colour a nice usable dark pink
(set-face-background 'region "#7F073F")


(server-start)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;stuff I tried out and either couldn't get to work or didn't like, but might try again;;
;;ECB
;(add-path "vendor/ecb-2.40")
;(require 'ecb)

;;CEDET mode
;(load-file "~/.emacs.d/vendor/cedet-1.0pre6/common/cedet.el")
;(global-ede-mode 1)                      ; Enable the Project management system
;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion
;(global-srecode-minor-mode 1)            ; Enable template insertion menu

; enable skeleton-pair insert globally
;(setq skeleton-pair t)
;(setq skeleton-pair-on-word t) ; apply skeleton trick even in front of a word.
;(global-set-key (kbd "(")  'skeleton-pair-insert-maybe)
;(global-set-key (kbd "[")  'skeleton-pair-insert-maybe)
;(global-set-key (kbd "{")  'skeleton-pair-insert-maybe)
;(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
;(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
