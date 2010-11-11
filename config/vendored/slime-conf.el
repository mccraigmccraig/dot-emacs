(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))
(add-path "vendor/slime")
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
(require 'slime)
(slime-setup)


