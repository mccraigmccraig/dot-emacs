(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key lisp-mode-shared-map (kbd "C-w") 'paredit-backward-kill-word)

(defun turn-on-paredit ()
  (paredit-mode t))

(dolist (x '(scheme emacs-lisp lisp clojure))
  (add-hook
   (intern (concat (symbol-name x) "-mode-hook")) 'turn-on-paredit))
