; (require 'magit)
(when (executable-find "git")
   (require 'magit nil t))

(global-git-gutter-mode t)

;; git-gutter
;; git-gutter-fringe
;; git-gutter++
;; (require 'magit-gh-pulls)
