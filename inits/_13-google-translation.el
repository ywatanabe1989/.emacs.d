;; https://qiita.com/dauuricus/items/3440cb59e3a32f575e4c
￼
￼;; UTF-8
￼;; (set-language-environment "Japanese")
￼(set-default-coding-systems 'utf-8)
￼(set-terminal-coding-system 'utf-8)
￼(set-keyboard-coding-system 'utf-8)
￼(set-buffer-file-coding-system 'utf-8)
￼
￼
￼;; google-translate
￼(require 'google-translate)
￼
￼(defun google-translate--search-tkk () "Search TKK." (list 430675 2721866130))
￼(setq google-translate-backend-method 'curl)
￼(require 'google-translate-smooth-ui)
￼
￼
￼(custom-set-variables
￼  '(google-translate-default-source-language "en")
￼  '(google-translate-default-target-language "ja"))
