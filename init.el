;; Emacs LIVE
;;
;; This is where everything starts. Do you remember this place?
;; It remembers you...

;; Store live base dirs
(setq live-root-dir (file-name-directory
                     (or (buffer-file-name) load-file-name)))

(setq live-tmp-dir (concat live-root-dir "tmp/"))
(setq live-etc-dir (concat live-root-dir "etc/"))
(setq live-packs-dir (concat live-root-dir "packs/"))

;;default live packs
(setq live-packs '(live colour user))

;; Helper fn for loading live packs
(defun live-load-pack (pack-name)
  "Load a live pack. This is a dir that contains at least a file
  called init.el. Adds the packs's lib dir to the load-path"
  (let* ((pack-name (if (symbolp pack-name)
                        (symbol-name pack-name)
                      pack-name))
         (pack-init (concat live-packs-dir pack-name "/init.el"))
         (pack-lib (concat live-packs-dir pack-name "/lib")))
    (add-to-list 'load-path pack-lib)
    (if (file-exists-p pack-init)
        (load-file pack-init))))

(defun live-pack-root ()
  "Returns the path of the root of the current pack (must be
  called from an .el file within a pack."
  (let* ((file-dir (file-name-directory (or load-file-name
                                            buffer-file-name)))
       (packs-dir-len (length live-packs-dir))
       (pack-path (substring file-dir 0 packs-dir-len ))
       (rest-path (substring file-dir packs-dir-len -1 ))
       (pack-name (car (split-string rest-path "/"))))
    (concat pack-path pack-name "/")))

(defun live-pack-config ()
  "Returns the path of the config dir for the current pack"
  (concat (live-pack-root) "config/"))

(defun live-add-pack-lib (p)
  "Adds the path (specified relative to the the pack's lib dir)
  to the load-path"
  (let ((lib-path (live-pack-lib-dir)))
    (add-to-list 'load-path (concat lib-path p))))

(defun live-load-config-file (f-name)
  "Load the config file with name f-name in the current pack"
  (let* ((config (live-pack-config)))
    (load-file (concat config f-name))))

(defun live-pack-lib-dir ()
  "Returns the path of the lib dir for the current pack"
  (concat (live-pack-root) "lib/"))

;; Load `~/.emacs-live.el`. This allows you to override variables such
;; as live-packs (allowing you to specify pack loading order)
(let* ((pack-file "~/.emacs-live.el"))
  (if (file-exists-p pack-file)
      (load-file pack-file)))

;; Load all packs - Power Extreme!
(mapcar (lambda (pack-name) (live-load-pack pack-name)) live-packs)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(ns-antialias-text nil)
 '(sclang-auto-scroll-post-buffer t)
 '(sclang-eval-line-forward nil)
 '(sclang-help-path (quote ("/Applications/SuperCollider/Help")))
 '(sclang-runtime-directory "~/.sclang/")
 '(tab-width 2)
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#dddd00"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "#EDEDED" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "apple" :family "Monaco"))))
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-even-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark red"))))
 '(font-lock-comment-face ((t (:foreground "#8B8989"))))
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black")))))
