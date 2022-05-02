;; Shell
(eval-when-compile (require 'cl))
(require 'multi-term)

;; (setq multi-term-program "/usr/bin/bash")
(setq kill-buffer-query-functions nil)

;; http://sleepboy-zzz.blogspot.com/2012/12/emacsmulti-termel.html
(defun my/term-send-forward-char ()
  (interactive)
  (term-send-raw-string "\C-f"))

(defun my/term-send-backward-char ()
  (interactive)
  (term-send-raw-string "\C-b"))

(defun my/term-send-previous-line ()
  (interactive)
  (term-send-raw-string "\C-p"))

(defun my/term-send-next-line ()
  (interactive)
  (term-send-raw-string "\C-n"))

(defun my/term-send-return ()
  (interactive)
  (term-send-raw-string "\C-m"))

;; (defun my/term-send-kill-back-ward () ; C-<backspace>
;;   (interactive)
;;   (term-send-backward-kill-word))

(defun my/multi-term (arg)
  (interactive
   (list
    (read-string "Enter string: ")))
  (multi-term)
  (rename-buffer (message "Term: %s" arg))  
  )

(defun my/multi-term-on-client (arg)
  (interactive
   (list
    (read-string "Enter string: ")))
  (find-file "//tmp")  
  (multi-term)
  (rename-buffer (message "Term: %s" arg))
  (kill-buffer "tmp")  
  )
