;; after-init-hook
(add-hook 'after-init-hook #'global-flycheck-mode)

;; emacs-startup-hook
(add-hook 'emacs-startup-hook
          '(lambda ()
             (require 'bookmark)
             (bookmark-bmenu-list)
             (switch-to-buffer "*Bookmark List*")))
(setq initial-buffer-choice "*Bookmark List*")

;; write-file-hooks
(add-hook 'write-file-hooks 'time-stamp)

;; before-save-hook

;; after-save-hook
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p) ; adds +x

;; flash the mode line
(add-hook 'after-save-hook
      (lambda ()
        (let ((orig-fg (face-background 'mode-line)))
          (set-face-background 'mode-line "dark green")
          (run-with-idle-timer 0.1 nil
                   (lambda (fg) (set-face-background 'mode-line fg))
                   orig-fg))))


;; prog-mode-hooks
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
;; (add-hook 'after-init-hook 'my-set-line-numbers)
;; (add-hook 'prog-mode-hook 'my/set-line-numbers)


;; dired-hooks
;; (add-hook 'dired-load-hook '(lambda () (require 'dired-x))) ; Load Dired X when Dired is loaded.
;; dired-mode-hook
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode t)))
(add-hook 'dired-mode-hook 'my/dired-truncate-lines-hook)

;; ;; term-mode-hook
;; (add-hook 'term-mode-hook (lambda () (ivy-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (auto-composition-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (column-number-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (counsel-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (delete-selection-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (display-line-numbers-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (display-time-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (electric-indent-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (file-name-shadow-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (flycheck-pos-tip-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (font-lock-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-auto-revert-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-company-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-display-line-numbers-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-eldoc-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-flycheck-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-font-lock-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-git-commit-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-git-gutter-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-hl-line-mode -1)))
;; ; (add-hook 'term-mode-hook (lambda () (global-undo-tree-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (line-number-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (magit-auto-revert-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (mouse-wheel-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (show-paren-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (size-indication-mode -1)))
;; ;; (add-hook 'term-mode-hook (lambda () (tab-bar-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (tooltip-mode -1)))
;; (add-hook 'term-mode-hook (lambda () (transient-mark-mode -1)))
;; (remove-hook 'term-mode-hook 'ivy-mode t)
;; (remove-hook 'term-mode-hook 'company-mode t)
;; (remove-hook 'term-mode-hook 'auto-composition-mode t)
;; (remove-hook 'term-mode-hook 'auto-compression-mode t)
;; (remove-hook 'term-mode-hook 'auto-insert-mode t)
;; (remove-hook 'term-mode-hook 'column-number-mode t)


;; python-mode-hook
(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 4))))
(add-hook 'python-mode-hook 'blacken-mode)
; (add-hook 'python-mode-hook 'python-isort-on-save-mode)
;; (add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'highlight-indent-guides-mode)

;; (add-hook 'python-mode-hook
;;           (lambda () (add-hook 'before-save-hook 'blacken-buffer nil 'local)))
;; (add-hook 'python-mode-hook
;; (lambda () (add-hook 'before-save-hook 'blacken-buffer)))

;; (add-hook 'python-mode-hook
;; (lambda () (add-hook 'before-save-hook 'delete-trailing-whitespace)))


;; (add-hook 'python-mode-hook
;;           (lambda () (add-hook 'before-save-hook 'python-isort-buffer)))
;; (add-hook 'python-mode-hook 'flycheck-mode)

; (add-hook 'before-save-hook 'blacken-buffer)
