;;make evil tabs visible as arrows
(let ((d (make-display-table)))
  (aset d 9 (vector ?→ ? ))
  (set-window-display-table nil d))

;;nicely format the ibuffer and include git-status
(setq ibuffer-formats '((mark modified read-only git-status-mini " "
      (name 18 18 :left :elide)
      " "
      (size 9 -1 :right)
      " "
      (git-status 8 8 :left :elide)
      " "
      (mode 16 16 :left :elide)
      " " filename-and-process)))


;; Line-wrapping
(set-default 'fill-column 70)

(custom-set-variables
     '(term-default-bg-color "#000000")        ;; background color (black)
     '(term-default-fg-color "#dddd00"))       ;; foreground color (yellow)
