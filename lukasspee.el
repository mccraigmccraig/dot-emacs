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


;make mark colour a nice usable dark pink
(set-face-background 'region "#7F073F")

(server-start)
