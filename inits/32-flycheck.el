;; Flycheck (Emacs)
;; https://qiita.com/yoichi22/items/1d73a078bc311de7dfbb
(require 'flycheck)
(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))
(global-flycheck-mode)
(setq flycheck-highlighting-mode 'lines)

(use-package flycheck
  :config
  (setq-default flycheck-disabled-checkers '(python-pylint python-pycompile))
  (setq-default flycheck-checkers '(python-flake8))  
  )

(setq flycheck-python-flake8-executable "/home/ywatanabe/envs/py3/bin/python3")
(setq flycheck-flake8rc "/home/ywatanabe/.config/flake8")
