;; Open Ipython on Server
;; (fset 'open-ipython-on-ws
;;    [?\S-\C-a ?w ?s return ?i ?p ?y ?3 return \C-l])

;; Execute Python script on ipython
;; (fset 'paste-region-and-execute-it-on-ipython
;;       [?\C-w ?\C-y ?\C-t ?p ?a ?s ?t ?e return ?\C-t])
;; (fset 'paste-and-execute-region-on-ipython
;;       [?\C-w ?\C-t ?p ?a ?s ?t ?e return ?\C-t])

(defun my/execute-region-on-ipython ()
  (interactive)
  ;; (mark-whole-buffer)
  (kill-ring-save (region-beginning) (region-end))
  ;; (kill-region (region-beginning) (region-end))
  (other-window 1)
  ;; (yank)
  (term-send-raw-string "paste")
  (term-send-raw-string "\C-m")  
  ;; (my/term-send-return)
  (other-window -1)
  ;; (undo-tree-undo)
  (set-mark-command -1)
  ;; (set-mark-command -1)  
  )

;; ipdb
(defun my/insert-ipdb ()
  (interactive)
  (insert "import ipdb; ipdb.set_trace()")
  )

;; Flake8
;; (defun my/flake8-check ()
;;   "Checks the current python mode buffer using flake8"
;;   (interactive)
;;   (python-check "/home/ywatanabe/envs/py3/bin/flake8")
;;   )

;; Code Checker
(setq python-check-command "/home/ywatanabe/envs/py3/bin/flake8")
;; (executable-find "flake8")

;; linter
; disable pylinter since it does not work well together.
; M-x flycheck-verify-setup

;; isort
; pip install isort
(require 'python-isort)

;; blacken
; pip install black
(require 'blacken)
(defun bl-b ()
  (interactive)
  (blacken-buffer)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto Completion
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; https://qiita.com/nyancook/items/9fb4f7d4c0a973d09394
;; pip install jedi epc
;; pip install --upgrade ~/.emacs.d/elpa/jedi-core-20210503.1315
;; rm -rf .emacs.d/.python-environments/default
;; M-x install jedi:install-server
(setq jedi:server-command (list (executable-find "jediepcserver")))
(setq jedi:complete-on-dot t)                 ; optional

;;;; insert tree parts
; C-x =
(defun my/insert-tree-parts ()
  "Eval unicode decimal codes for expressing tree structures."
  (interactive)
  ;; (insert 9472)
  ;; (insert 32)  
  (insert 9474)
  (insert 32)
  ;; └──
  (insert 9492)
  (insert 9472)
  (insert 9472)  
  (insert 32)    
  ;; ├──
  (insert 9500)
  (insert 9472)
  (insert 9472)
  (insert 32)      
  ;; ───  
  (insert 9472)
  (insert 9472)  
  (insert 9472)    
  )
