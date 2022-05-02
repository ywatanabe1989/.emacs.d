;; https://www.emacswiki.org/emacs/DiredOmitMode
(require 'dired-x)

;; kill the remaining buffer during navigation
(put 'dired-find-alternate-file 'disabled nil)

;;;; Omit files
(setq dired-omit-files "^\\...+$")
;; (setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))
(setq dired-omit-files-p t)

;;; Recursive copy/delete
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

;;;; Copy to another shown buffer
(setq dired-dwim-target t) ; https://keens.github.io/blog/2013/10/04/emacs-dired/


;;;; Symlink
(defun my/dired-do-symlink-dwim ()
  (interactive)
  (let ((dired-dwim-target t))
    (dired-do-symlink)))

;;;; Truncate lines
(defun my/dired-truncate-lines-hook ()
  "Custom `dired-mode' behaviours."
  (setq truncate-lines t))

;; file -> another buffer; dir -> the same buffer
(defun my/dired-open-in-accordance-with-situation ()
  (interactive)
  (let ((file (dired-get-filename)))
    (if (file-directory-p file)
        (dired-find-alternate-file)
      (dired-find-file))))
