;; wrapper for save-buffer ignoring arguments
(defun bjm/save-buffer-no-args ()
  "Save buffer ignoring arguments"
  (save-buffer))


(use-package pdf-tools
 ;; :pin manual ;;manually update
 :config
 ;; initialise
 (pdf-tools-install)
 (setq-default pdf-view-display-size 'fit-page)
 ;; automatically annotate highlights
 (setq pdf-annot-activate-created-annotations t)
 ;; use isearch instead of swiper
 (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
 ;; turn off cua so copy works
 (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
 ;; more fine-grained zooming
 (setq pdf-view-resize-factor 1.1)
 ;; keyboard shortcuts
 (define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
 (define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
 (define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete)
 ;; wait until map is available
 (with-eval-after-load "pdf-annot"
   (define-key pdf-annot-edit-contents-minor-mode-map (kbd "<return>") 'pdf-annot-edit-contents-commit)
   (define-key pdf-annot-edit-contents-minor-mode-map (kbd "<S-return>") 'newline)
   ;; save after adding comment
   (advice-add 'pdf-annot-edit-contents-commit :after 'bjm/save-buffer-no-args)))




;; bookmark
;; org-pdftools is able to set pdf page links, which can then be saved in an org-mode file. Alternatively, if you want to have something embedded in the pdf file, you can add an annotation somewhere on the page (see annotations keybindings list), and then list/jump to them via C-c C-a l and SPACE. I think that these two features are the closest thing that there is to the bookmarks feature in document viewer.

;; jump to a page
;; M-g l (pdf-view-goto-label)


;; (require 'pdf-tools)
;; (pdf-tools-install)
;; ;; open pdfs scaled to fit page
;; (setq-default pdf-view-display-size 'fit-page)
;; ;; automatically annotate highlights
;; (setq pdf-annot-activate-created-annotations t)
;; ;; use normal isearch
;; ; (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)



;; C-c C-a D       pdf-annot-delete
;; C-c C-a a       pdf-annot-attachment-dired
;; C-c C-a h       pdf-annot-add-highlight-markup-annotation
;; C-c C-a l       pdf-annot-list-annotations
;; C-c C-a m       pdf-annot-add-markup-annotation
;; C-c C-a o       pdf-annot-add-strikeout-markup-annotation
;; C-c C-a s       pdf-annot-add-squiggly-markup-annotation
;; C-c C-a t       pdf-annot-add-text-annotation
;; C-c C-a u       pdf-annot-add-underline-markup-annotation

;; `pdf-outline-minor-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------

;; o               pdf-outline


;; `pdf-links-minor-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------

;; F               pdf-links-action-perform
;; f               pdf-links-isearch-link


;; `pdf-history-minor-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------

;; B               pdf-history-backward
;; N               pdf-history-forward
;; l               pdf-history-backward
;; r               pdf-history-forward


;; `company-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------


;; `pdf-isearch-minor-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------

;; <remap>         Prefix Command

;; <remap> <occur>                 pdf-occur


;; `pdf-misc-context-menu-minor-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------

;; <down-mouse-3>  pdf-misc-popup-context-menu


;; `pdf-misc-menu-bar-minor-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------


;; `pdf-misc-minor-mode' Minor Mode Bindings:
;; key             binding
;; ---             -------

;; C-c             Prefix Command
;; I               pdf-misc-display-metadata

;; C-c C-p         pdf-misc-print-document
