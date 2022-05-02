(tab-bar-mode t)
(setq tab-bar-show t)
(setq tab-bar-tab-hints t)
(setq tab-bar-name-truncated t)
(setq tab-bar-new-tab-to 'rightmost)


;; use Ivy for `tab-bar-switch-to-tab`
(defun my/advice-completing-read-to-ivy (orig-func &rest args)
    (interactive
     (let* ((recent-tabs (mapcar (lambda (tab)
                                     (alist-get 'name tab))
                                 (tab-bar--tabs-recent))))
         (list (ivy-completing-read "Switch to tab by name (default recent): "
                                    recent-tabs nil nil nil nil recent-tabs))))
    (apply orig-func args))
(advice-add #'tab-bar-switch-to-tab :around #'my/advice-completing-read-to-ivy)

(defun my/tab-new (arg)
  (interactive
   (list
    (read-string "Enter string: ")))
  (tab-new)
  (tab-rename (message "%s" arg))
  ;; (tab-rename (format "%s" arg))    
  )

;; C-x t
;; 2	tab-new
;; 1	tab-close-other
;; 0	tab-close
;; o	tab-next
;; m	tab-move
;; r	tab-rename
;; RET	tab-bar-select-tab-by-name
;; b	switch-to-buffer-other-tab
;; C-f, f	find-file-other-tab
