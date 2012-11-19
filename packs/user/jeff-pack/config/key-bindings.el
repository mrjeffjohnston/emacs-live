
;; Use F11 as the full screen toggle key, throughout Emacs
(global-set-key (kbd "<f11>") 'jeff-full-screen-toggle)

;; Rebind eval-print-last-sexp to Alt-enter as paredit mode has nicked
;; C-j for paredit-newline
(define-key lisp-interaction-mode-map (kbd "M-<return>") 'eval-print-last-sexp)
