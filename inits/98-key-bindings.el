;;;; Navigation
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
(bind-key* "C-t" 'other-window)
(bind-key* "C-S-t" 'my/other-window-reverse)
(bind-key* "C-S-t" 'my/other-window-back)
(bind-key* "M-t" 'other-frame)
;; (bind-key* "C-S-t" 'next-multiframe-window)
(define-key global-map (kbd "C-m") 'newline-and-indent)
(define-key global-map (kbd "C-S-k") 'kill-this-buffer)
; (define-key global-map (kbd "C-x C-c") 'delete-frame)
(define-key global-map (kbd "C-x f") 'make-frame)

;; iserach
;; (global-set-key (kbd "C-r") 'vr/isearch-backward)
;; (global-set-key (kbd "C-s") 'vr/isearch-forward)
(global-set-key (kbd "C-r") 'isearch-backward)
(global-set-key (kbd "C-s") 'isearch-forward)

;;;; Size
(define-key global-map (kbd "C--") 'text-scale-decrease)
(define-key global-map (kbd "C-0") 'text-scale-adjust)
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(global-set-key (kbd "C->") 'my/zoom-in)
(global-set-key (kbd "C-<") 'my/zoom-out)

;;;; Basic
(define-key global-map (kbd "C-x m") 'my/insert-last-message)
(define-key global-map (kbd "C-M-/") 'help-command)
(global-set-key (kbd "C-c f") 'my/put-current-path-to-clipboard)
;; (global-set-key (kbd "C-c f p") 'my/put-current-path-to-clipboard)
;; (global-set-key (kbd "C-c f n") 'my/put-current-filename-to-clipboard) # my/put-file-name-on-clipboard

;;;; vimish-fold
(define-prefix-command 'my-vimish-fold-map)
(global-set-key (kbd "C-S-f") 'my-vimish-fold-map)

(global-set-key (kbd "C-S-f f") 'vimish-fold)
(global-set-key (kbd "C-S-f d") 'vimish-fold-delete)
(global-set-key (kbd "C-S-f t") 'vimish-fold-toggle)
(global-set-key (kbd "C-S-f a") 'vimish-fold-toggle-all)
(global-set-key (kbd "C-S-f u") 'vimish-fold-unfold)


;;;; Terminal
(global-set-key (kbd "C-S-a") 'my/multi-term-on-client)
(global-set-key (kbd "C-S-m") 'my/multi-term)

;;;; Eazy query replace
(global-set-key (kbd "M-$") 'vr/query-replace)
(define-key global-map (kbd "M-%") 'ez-query-replace)
(define-key global-map (kbd "M-w") 'easy-kill)

;;;; Buffer size
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<up>") 'enlarge-window)
(global-set-key (kbd "M-<down>") 'shrink-window)

;; yasnippet
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; find-grep
(global-set-key (kbd "C-S-g") 'find-grep)

;; dired-hide-details
(define-key dired-mode-map (kbd "RET") 'dired-find-file)
(define-key dired-mode-map (kbd "C-j") 'my/dired-open-in-accordance-with-situation)
(define-key dired-mode-map (kbd "h") 'dired-hide-details-mode)
(define-key dired-mode-map (kbd "s") 'my/dired-do-dwim-symlink)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
(define-key dired-mode-map (kbd "C-t") 'other-windo)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; org
(global-set-key "\C-ca" 'org-agenda)

;; company
(global-set-key (kbd "C-M-i") 'company-complete)
;; (define-key company-active-map (kbd "C-n") 'company-select-next)
;; (define-key company-search-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-s") 'company-filter-candidates)
(define-key company-active-map (kbd "C-i") 'company-complete-selection)
(define-key company-active-map [tab] 'company-complete-selection)
(define-key company-active-map (kbd "C-f") 'company-complete-selection)
(define-key emacs-lisp-mode-map (kbd "C-M-i") 'company-complete)

;; reload
(global-set-key (kbd "C-S-r") 'my/reload-emacs)

;; markdown
(define-key global-map (kbd "C-c m") 'markdown-preview-mode)

;; undo
(define-key global-map (kbd "C-;") 'undo-tree-undo)
(define-key global-map (kbd "C-'") 'undo-tree-redo)


;; python
(define-key global-map (kbd "C-x 8") 'my/flake8-check)
;; (global-set-key (kbd "C-S-i") 'open-ipython-on-ws)
(define-key global-map (kbd "M-p") 'my/execute-region-on-ipython)
;; (define-key global-map (kbd "M-p") 'paste-region-and-execute-it-on-ipython)
(define-key global-map (kbd "M-i") 'my/insert-ipdb)

;; flycheck
(define-key global-map (kbd "C-M-f") 'flycheck-mode)

;; guides
(define-key global-map (kbd "C-M-g") 'highlight-indent-guides-mode)

;; delete-trailing-whitespace
(define-key global-map (kbd "C-M-d") 'delete-trailing-whitespace)

;; color-identifiers-mode
(define-key global-map (kbd "C-M-c") 'color-identifiers-mode)

;; blacken
(define-key global-map (kbd "C-M-;") 'blacken-buffer)

;; term-mode
(add-hook 'term-mode-hook
          '(lambda ()
             (let* ((key-and-func
                     `(("\C-f"           my/term-send-forward-char)
                       ("\C-b"           my/term-send-backward-char)
                       ("\C-p"           my/term-send-previous-line)
                       ("\C-n"           my/term-send-next-line)
                       (,(kbd "C-h")     term-send-backspace)
                       (,(kbd "C-y")     term-paste)
                       (,(kbd "ESC ESC") term-send-raw)
                       (,(kbd "C-S-p")   multi-term-prev)
                       (,(kbd "C-S-n")   multi-term-next)
                       )))
               (loop for (keybind function) in key-and-func do
                     (define-key term-raw-map keybind function)))))

;; tab-bar-mode
(define-prefix-command 'my-tab-bar-map)
(global-set-key (kbd "M-T") 'my-tab-bar-map)
(define-key my-tab-bar-map (kbd "2") 'my/tab-new)
(define-key my-tab-bar-map (kbd "n") 'my/tab-new)
(define-key my-tab-bar-map (kbd "1") 'tab-close-other)
(define-key my-tab-bar-map (kbd "0") 'tab-close)
(define-key my-tab-bar-map (kbd "o") 'tab-next)
(define-key my-tab-bar-map (kbd "m") 'tab-move)
(define-key my-tab-bar-map (kbd "r") 'tab-rename)
(define-key my-tab-bar-map (kbd "RET") 'tab-bar-select-tab-by-name)
(define-key my-tab-bar-map (kbd "b") 'switch-to-buffer-other-tab)
(define-key my-tab-bar-map (kbd "f") 'find-file-other-tab)


;; ;; pdf
;; (define-key pdf-view-mode-map (kbd "C-c h") 'pdf-annot-add-highlight-markup-annotation)

;; (defun my/pdf-highlight ()
;;   (interactive)
;;   (pdf-annot-add-highlight-markup-annotation t)
;;   ;; (insert "C-c C-c")
;;   )
;;   (insert (last-message num)))

;; google-translate
;; (global-set-key "\C-ct" 'google-translate-smooth-translate)
(global-set-key (kbd "C-c t") 'gts-do-translate)
