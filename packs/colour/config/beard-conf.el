;;Color-theme
(live-add-pack-lib "color-theme")
(require 'color-theme)

;; To use blackbored colour theme add the following lines to your
;; config:
;;(load-file (concat live-lib-dir "blackbored.el"))
;;(color-theme-blackbored)

;;highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333333")

;;set cursor colour
(set-cursor-color "yellow")
