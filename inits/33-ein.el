;; M-x package-refresh-contents RET
;; M-x package-install RET ein RET

;; on Server
; $ jupyter-notebook --no-browser --port=9999

;; on Client
; $ ssh -L 8080:localhost:9999 ywatanabe@8939
                                        ; ein:notebooklist-open RET 8080 RET


;;;; https://tam5917.hatenablog.com/entry/2021/03/28/204747
;; (eval-when-compile
;;   (require 'ein)
;;   (require 'ein-notebook)
;;   (require 'ein-notebooklist)
;;   (require 'ein-markdown-mode)
;;   (require 'smartrep))

;; (add-hook 'ein:notebook-mode-hook 'electric-pair-mode)
;; (add-hook 'ein:notebook-mode-hook 'undo-tree-mode)

;; Enabled undo
(setq ein:worksheet-enable-undo t)

;; Inilne
(setq ein:output-area-inlined-images t)

;; | M-x ein:run                      | Run the jupyter                                   |
;; | C-c C-t                          | Toggle the eval mode as Python -> MarkDown -> raw |
;; | C-c C-n                          | Move to the next cell                             |
;; | C-c C-p                          | Move to the previous cell                         |
;; | C-c C-e                          | Toggle the display of the cell                    |
;; | C-c C-c                          | Evaluate the cell                                 |
;; | C-u C-c C-c                      | Evaluate all the cell from the top                |
;; | C-c C-k                          | Kill the cell                                     |
;; | C-c C-a                          | Append a python cell upward                       |
;; | C-u C-c C-a                      | Append a markdown cell upward                     |
;; | C-c C-b                          | Append a python cell downward                     |
;; | C-u C-c C-b                      | Append a markdown cell downward                   |
;; | C-c C-s                          | Spilt the cell                                    |
;; | C-c C-m                          | Merge the cell                                    |
;; | C-c C-l                          | Clear the output of the cell                      |
;; | C-c C-S-l                        | Clear all the outputs                             |
;; | C-x C-s                          | Save the notebook                                 |
;; | C-x C-w                          | Save the notebook as X                            |
;; | M-x ein:notebook-save-to-command | Copy the notebook as X                            |
;; | C-c C-x C-r                      | Reboot the notebook session (clear the indice)    |
;; | M-x ein:stop                     | Stop the jupyter
