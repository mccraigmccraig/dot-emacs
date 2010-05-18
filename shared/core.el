(setq custom-basedir (expand-file-name "~/.emacs.d/"))

(defun add-path (p)
  (add-to-list 'load-path (concat custom-basedir p)))

(load-file "~/.emacs.d/shared/vendored.el")
(load-file "~/.emacs.d/shared/shortcuts.el")
(load-file "~/.emacs.d/shared/look-and-feel.el")
(load-file "~/.emacs.d/shared/built-in.el")

