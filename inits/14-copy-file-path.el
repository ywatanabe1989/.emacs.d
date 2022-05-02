(defun my/put-current-path-to-clipboard ()
    (interactive)
    (let ((file-path buffer-file-name)
          (dir-path default-directory))
      (cond (file-path
             (kill-new (expand-file-name file-path))
             (message "This file path is on the clipboard!"))
            (dir-path
             (kill-new (expand-file-name dir-path))
             (message "This directory path is on the clipboard!"))
            (t
             (error-message-string "Fail to get path name."))))
    )

(defun my/put-current-filename-to-clipboard ()
    (interactive)
    (let ((file-path buffer-file-name)
          (dir-path default-directory))
      (cond (file-path
             (kill-new (file-name-nondirectory file-path))
             (message "This file path is on the clipboard!"))
            (dir-path
             (kill-new (file-name-nondirectory dir-path))
             (message "This directory path is on the clipboard!"))
            (t
             (error-message-string "Fail to get path name."))))
    )

;; ;;;; Copy the file path of the current buffer
;; (defun my/put-file-name-on-clipboard ()
;;   "Put the current file name on the clipboard"
;;   (interactive)
;;   (let ((filename (if (equal major-mode 'dired-mode)
;;                       default-directory
;;                     (buffer-file-name))))
;;     (when filename
;;       (with-temp-buffer
;;         (insert filename)
;;         (clipboard-kill-region (point-min) (point-max)))
;;       (message filename))))
