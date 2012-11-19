
;; Only run the given command if it exists, otherwise display a message
(defun jeff-shell-command-maybe (exe &optional paramstr)
  "run executable EXE with PARAMSTR, or warn if EXE's not available; eg. "
  " (jeff-shell-command-maybe \"ls\" \"-l -a\")"
  (if (executable-find exe)
    (shell-command (concat exe " " paramstr))
    (message (concat "Shell command '" exe "' not found."))))

;; Use the wmctrl utility if present to toggle the fullscreen property of the
;; current window.
(defun jeff-full-screen-toggle ()
  "toggle full-screen mode"
  (interactive)
  (jeff-shell-command-maybe "wmctrl" "-r :ACTIVE: -btoggle,fullscreen"))
