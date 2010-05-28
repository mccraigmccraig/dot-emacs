;;mark current function
(global-set-key (kbd "C-x C-p")     'mark-defun)

;;C-c handy shortcuts
;;m - emacs eval shortcuts
;;s - slime eval shortcuts
;;t - text manipulation shortcuts

;;paredit
(global-set-key (kbd "C-M-f")     'paredit-forward)
(global-set-key (kbd "C-M-b")     'paredit-backward)

;;toggle fullscreen
(global-set-key (kbd "C-.")  'ns-toggle-fullscreen)

;;text manipulation shortcuts
(global-set-key (kbd "C-c t b")     'untabify-buffer)
(global-set-key (kbd "C-c t r")     'untabify)


;;C-c C-? bindings
(global-set-key (kbd "C-c C-e")   'slime-eval-last-expression)

;;emacs-lisp shortcuts
(global-set-key (kbd "C-c m s")     'eval-and-replace) ;swap
(global-set-key (kbd "C-c m b")     'eval-buffer)
(global-set-key (kbd "C-c m e")     'eval-last-sexp)
(global-set-key (kbd "C-c m i")     'eval-expression)
(global-set-key (kbd "C-c m d")     'eval-defun)
(global-set-key (kbd "C-c m n")     'eval-print-last-sexp)
(global-set-key (kbd "C-c m r")     'eval-region)

;;slime mode shortcuts
(global-set-key (kbd "C-c s c")     'slime-connect)
(global-set-key (kbd "C-c s e e")   'slime-eval-last-expression)
(global-set-key (kbd "C-c s e b")   'slime-eval-buffer)
(global-set-key (kbd "C-c s e i")   'slime-eval-describe)
(global-set-key (kbd "C-c s e a")   'slime-eval-async)
(global-set-key (kbd "C-c s e d")   'slime-eval-defun)
(global-set-key (kbd "C-c s e f")   'slime-eval-feature-expression)
(global-set-key (kbd "C-c s e l")   'slime-eval-for-lisp)
(global-set-key (kbd "C-c s e m")   'slime-eval-macroexpand-inplace)
(global-set-key (kbd "C-c s e n")   'slime-eval-print-last-expression)
(global-set-key (kbd "C-c s e r")   'slime-eval-region)
(global-set-key (kbd "C-c s e t")   'slime-eval-with-transcript)

;;allow the ability to switch frames using the default OS X keybinding
(global-set-key (kbd "M-`") 'other-frame)

;make C-] and M-] cut and copy respectively
(global-set-key (kbd "C-]") 'kill-region)
(global-set-key (kbd "M-]") 'kill-ring-save)

(global-set-key (kbd "C-' l") (lambda () (interactive) (insert "λ")))
(global-set-key (kbd "C-' n") (lambda () (interactive) (insert "ℕ")))
(global-set-key (kbd "C-' i") (lambda () (interactive) (insert "∞")))
(global-set-key (kbd "C-' .") (lambda () (interactive) (insert "×")))
(global-set-key (kbd "C-' 0") (lambda () (interactive) (insert "∅")))
(global-set-key (kbd "C-' u") (lambda () (interactive) (insert "∪")))
(global-set-key (kbd "C-' s") (lambda () (interactive) (insert "♯")))

;make ^h delete rather than help
(keyboard-translate ?\C-h ?\C-?)

;redefine help shortcut
(global-set-key (kbd "C-M-h") 'help)

(global-set-key (kbd "C-x C-j") 'join-line)
(global-set-key (kbd "M-§") 'file-cache-minibuffer-complete)

;;macro to insert text above the current line
(fset 'insert-above
   [?\C-e return ?\C-a ?\C-k ?\C-p ?\C-p M-return])
(global-set-key (kbd "M-o") 'insert-above)

;allow the deletion of words:
;backward kill word (forward kill word is M-d)
(global-set-key (kbd "C-w") 'backward-kill-word)
;delete current word
(global-set-key (kbd "M-w") (lambda () (interactive) (backward-word) (kill-word 1)))

;kill regions
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

;;repeat previous command
(global-set-key (kbd "C-@")   'set-mark-command)
(global-set-key (kbd "C-SPC") 'set-mark-command)

;;set the mark
(global-set-key (kbd "M-SPC") 'repeat)

;;shortcuts for growing and shrinking windows horizontally
(global-set-key (kbd "C-<") 'enlarge-window-horizontally)
(global-set-key (kbd "C->") 'shrink-window-horizontally)

;;window navigation
(global-set-key (kbd "C-M-]") 'next-multiframe-window)
(global-set-key (kbd "C-M-[") 'previous-multiframe-window)

(global-set-key (kbd "C-c w s") 'swap-windows)
(global-set-key (kbd "C-c w r") 'rotate-windows)

;requires buffer-move
(global-set-key (kbd "C-c w p")  'buf-move-up)
(global-set-key (kbd "C-c w n")  'buf-move-down)
(global-set-key (kbd "C-c w b")  'buf-move-left)
(global-set-key (kbd "C-c w f")  'buf-move-right)

;;fast vertical naviation
(global-set-key  (kbd "M-P") (lambda () (interactive) (previous-line 10)))
(global-set-key  (kbd "M-N") (lambda () (interactive) (next-line 10)))
(global-set-key  (kbd "M-p") 'outline-previous-visible-heading)
(global-set-key  (kbd "M-n") 'outline-next-visible-heading)

;requires cua-mode for rectangle selection
(global-set-key (kbd "C-/") 'cua-set-rectangle-mark)
(define-key undo-tree-map (kbd "C-/") 'cua-set-rectangle-mark)
