;; $ find ~/.emacs.d/ -name '*.elc' | xargs rm
;; $ find ~/.emacs.d/ -name '*.el' | xargs emacs -batch -f batch-byte-compile

;; Increases the iteration limitations
;; (setq max-specpdl-size 10000)
;; (setq max-lisp-eval-depth 10000)

;; cua
(cua-selection-mode t)

;; backup
;; Backup Dir
;; (add-to-list 'backup-directory-alist
;;              (cons "." "~/.emacs.d/backups/"))

;; ;; Auto Saving Dir
;; (setq auto-save-file-name-transforms
;;       `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))

(setq backup-directory-alist `(("." . "~/.emacs_backups")))

;; Comment Style
(setq comment-style 'multi-line)


;; Disable checking remote files
(global-auto-revert-mode t)


;; Enable y/n questions
(fset 'yes-or-no-p 'y-or-n-p)


;; Ignore case on file name completion
(setq read-file-name-completion-ignore-case t)


;; Follow symlinks
(setq vc-follow-symlinks t)


;; Scroll step
(setq scroll-step 1)


;; Enable Upcase/Downcase-region
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;; Disable right-to-left languages
(setq-default bidi-display-reordering nil)


;; Inhibit startup-message
(setq inhibit-startup-message t)


;; Disable splash screen
(setq inhibit-startup-screen t)
;; (setq inhibit-splash-screen t)


;; Auto save
(setq auto-save-timeout 5)
(setq auto-save-interval 60)


;; Show buffer size
(size-indication-mode t)


;; GC
(setq gc-cons-threshold (* 100 gc-cons-threshold))
(setq garbage-collection-messages t)


;; History limits for the mini-buffer
(setq history-length 10000)

;; yasnippet
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/mysnippets"
        "~/.emacs.d/yasnippets"
        ))
;; https://github.com/AndreaCrotti/yasnippet-snippets
(yas-global-mode 1)

;; regexp
(require 'visual-regexp-steroids)
(setq vr/engine 'python)

;; vimish-fold
(vimish-fold-global-mode t)

;; ignore the ring and flash the mode line instead
(setq ring-bell-function 'ignore)
(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-background 'mode-line)))
          (set-face-background 'mode-line "purple4")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-background 'mode-line fg))
                               orig-fg))))

;; ;; dimmer mode
;; (dimmer-mode -1)

(defun my/reload-emacs ()
  (interactive)
  (load-file "~/.emacs.d/init.el")
  )

(defun my/other-window-reverse ()
  (interactive)
  (other-window -1)
  )

(defun my/other-window-back ()
  (interactive)
  (other-window -1)
  )

(defun my/last-message (&optional num)
  (or num (setq num 1))
  (if (= num 0)
      (current-message)
    (save-excursion
      (set-buffer "*Messages*")
      (save-excursion
    (forward-line (- 1 num))
    (backward-char)
    (let ((end (point)))
      (forward-line 0)
      (buffer-substring-no-properties (point) end))))))

(defun my/insert-last-message (&optional num)
  (interactive "*p")
  (insert (last-message num)))



