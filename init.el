;; Emacs LIVE
;;
;; This is where everything starts. Do you remember this place?
;; It remembers you...
;;
;; The energy rushes through your fingertips, sparks fly and you
;; stretch your back as your spine takes on the excess surge. This is
;; the power of Emacs Live - a modular pack-oriented config structure
;; for Emacs.
;;
;; Packs
;; -----
;;
;; Packs are directories which are used to store isolated sets of
;; functionality and configuration. These may be symlinks or git
;; submodules depending on how you choose to store and manage your dot
;; emacs.
;;
;; Pack Structure
;; --------------
;;
;; Each pack consists of three components: the init.el, config dir and
;; lib dir. The init.el file is loaded first and it is here that you
;; can run arbitrary elisp. However, it is recommended that you
;; organise your pack by placing library code in the lib dir and
;; individual config files in the config dir. Emacs Live provides
;; helper fns to make it easy for you to load config files and for you
;; to add lib dirs to your load path. See the section on helper fns
;; below.
;;
;; Shipped Packs
;; -------------
;;
;; Emacs live ships with a few packs:
;; * Live   - A live-programming power up with a specific focus on
;;            Clojure and Overtone hacking
;; * Colour - Colour highlighting in two flavours - blackbeard and
;;            whitebeard
;; * User   - An empty pack for your own libs and config.
;;
;; Loading Packs
;; -------------
;;
;; By default, Emacs live will load the live, colour and user packs in
;; that order. However, you may create a ~/.emacs-live.el file to
;; override this behaviour. Simply set the var live-packs to a list of
;; symbols representing the packs you'd like to load up (the order
;; will be honoured). For example to keep the default:
;; (setq live-packs '(live colour user))
;;
;; Helper fns
;; ----------
;;
;; Emacs Live provides a couple of useful helper fns which you can use
;; within your live packs:
;;
;; * live-pack-lib-dir     - this returns the path of the lib dir for
;;                           the current pack
;; * live-load-config-file - loads a config file located in the config
;;                           dir of the current pack


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
