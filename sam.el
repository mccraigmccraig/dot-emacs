(load-file "~/.emacs.d/shared.el")

;;Fonts
;;to set the font:
;;M-x mac-font-panel-mode
;;M-x describe-font
(set-face-font 'default "-apple-Menlo-medium-normal-normal-*-10-*-*-*-m-0-iso10646-1")

;;colour theme
(load-file "~/.emacs.d/vendor/blackbored.el")
(color-theme-blackbored)


;;highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333333")


;cursor
(set-cursor-color "yellow")


;clojure
(eval-after-load 'clojure-mode '(clojure-slime-config))
(load-file (expand-file-name "~/.emacs.d/elpa/clojure-mode-1.1/clojure-mode.el"))
(setq clojure-src-root (expand-file-name "~/.emacs.d/vendor/clojure/src"))
(eval-after-load 'clojure-mode '(clojure-slime-config))


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
