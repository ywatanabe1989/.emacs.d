;; bin paths
(add-to-list 'exec-path "/usr/bin")
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/opt/local/bin")
(add-to-list 'exec-path "~/envs/py3/bin/")


;; load paths
(defun my/add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(my/add-to-load-path "elisp")

;; ;; custom file
;; (setq custom-file (locate-user-emacs-file "custom.el")) ; Emacs write to custom.el
;; (unless (file-exists-p custom-file)
;;   (write-region "" nil custom-file)) ; If there is not custom.el, make custom.el.
;; (load custom-file 'noerror) ; load custom.el


;; destination for package-install eilsp
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp/")
