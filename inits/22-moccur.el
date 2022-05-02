; color-moccur
(when (require 'color-moccur nil t)
  (define-key global-map (kbd "M-o") 'occur-by-moccur)
  (setq moccur-split-word t) ; And Finding
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store") ;; Conditions to exclude when finding directories
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$"))
