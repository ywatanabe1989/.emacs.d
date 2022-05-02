;; Theme
(defun my/load-theme (theme)
    "wraps load-theme for tab-bar-mode"
    (interactive)
    ;; (use-package doom-themes
    ;;     :config
    ;;     (setq doom-themes-enable-bold f
    ;;           doom-themes-enable-italic f))
    (load-theme 'doom-opera t)
    (load-theme theme t)
    )
(my/load-theme 'zenburn)

;; Column number
(column-number-mode t)

;; Line number
(global-display-line-numbers-mode t)
(setq display-line-numbers "%4d \u2502 ")

;; Highlight line
(defface my/hl-line-face
  '((((class color) (background dark)) ; when background is dark
     (:background "NavyBlue" t))
    (((class color) (background light)) ; when background is light
     (:background "LightSkyBlue" t))
    (t (:bold t)))
  "hl-line's my face")
(setq hl-line-face 'my/hl-line-face)
(global-hl-line-mode t)


;; indent
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; Display Encoding
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; Parenthesis
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)

;; Time
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode t)
(display-time)

;; Battery
(display-battery-mode t)

;; Modeline
(use-package hide-mode-line
  :hook
  ((neotree-mode imenu-list-minor-mode minimap-mode) . hide-mode-line-mode))

;; Frame
(setq frame-title-format "%f")
(set-frame-position nil 0 -24)
(set-frame-size nil 212 80)


;; Disable menu bar, tool bar, and scroll bar
(setq mode-line-format t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Fontsize
;; http://blog.vivekhaldar.com/post/4809065853/dotemacs-extract-interactively-change-font-size
(defun my/zoom-in ()
  "Increase font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (+ (face-attribute 'default :height)
                         10)))

(defun my/zoom-out ()
  "Decrease font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (- (face-attribute 'default :height)
                         10)))



;; highlight indent
(require 'highlight-indent-guides)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-character 124)
(setq highlight-indent-guides-responsive 'top)

(setq highlight-indent-guides-auto-enabled nil)

(setq highlight-indent-guides-delay 0)

(set-face-background 'highlight-indent-guides-odd-face "dimgray")
(set-face-background 'highlight-indent-guides-even-face "dimgray")
(set-face-foreground 'highlight-indent-guides-character-face "dimgray")

(set-face-background 'highlight-indent-guides-top-odd-face "darkgray")
(set-face-background 'highlight-indent-guides-top-even-face "darkgray")
(set-face-foreground 'highlight-indent-guides-top-character-face "darkgray")

;; M-x customize-variable
;; RET highlight-indent-guides-method
;; RET highlight-indent-guides-character RET ?|
