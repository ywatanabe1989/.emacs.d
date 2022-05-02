;; hides the leading asterisks
(setq org-hide-leading-stars t)

;; logs DONE time
(setq org-log-done 'time)

;; show pics inline
(setq org-startup-with-inline-images t)

;; TODO states
(setq org-todo-keywords
      '((sequence "TODO" "DONE" "CANCELED"  "WAITING" "|" "DONE" "CANCELED"  "FEEDBACK")))

;; creates agenda from all files in the org-directory
(setq my-org-agenda-dir "~/proj/org/")
(setq org-agenda-files (list my-org-agenda-dir))

;; enables the pomodoro timer
(require 'org-pomodoro)


;; strike-through between + signs
(require 'cl)   ; for delete*
(setq org-emphasis-alist
      (cons '("+" '(:strike-through t :foreground "gray"))
            (delete* "+" org-emphasis-alist :key 'car :test 'equal)))
