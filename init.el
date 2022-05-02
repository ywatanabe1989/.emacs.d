(setq debug-on-error t)

;; package
;; see https://emacs-jp.github.io/packages/package
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'package)
;; (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
;; (add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)
;; (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(package-initialize)


(setq package-list
      '(
        jedi
    blacken
    company
    doom-themes
    ez-query-replace
    flycheck
    flycheck-pos-tip
    google-translate
    go-translate
    highlight-indent-guides
    init-loader
    magit
    markdown-mode
    markdown-preview-mode
    multi-term git-gutter
    popup
    popwin
    python-isort
    use-package
    vimish-fold
    visual-regexp-steroids
    wgrep
    yasnippet
    zenburn-theme
	))


(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


; init-loader is located in .emacs.d/site-lisp
(require 'init-loader)
(let ((default-directory (expand-file-name "~/.emacs.d/init-loader")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

; (setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")

;; ;; EOF
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(jedi highlight-guides-mode yaml-mode zenburn-theme yasnippet wgrep visual-regexp-steroids vimish-fold use-package python-isort popwin popup multi-term markdown-preview-mode magit init-loader highlight-indent-guides google-translate go-translate git-gutter flycheck-pos-tip ez-query-replace doom-themes company blacken)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
