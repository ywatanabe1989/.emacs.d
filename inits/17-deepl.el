;; https://hangstuck.com/emacs-deepl/

(require 'go-translate)

;; your languages pair used to translate
(setq gts-translate-list '(("en" "ja") ("ja" "en")))

;; config the default translator, it will be used by command gts-do-translate
(setq gts-default-translator
      (gts-translator

       :picker ; used to pick source text, from, to. choose one.

       ;;(gts-noprompt-picker)
       ;;(gts-noprompt-picker :texter (gts-whole-buffer-texter))
       (gts-prompt-picker)
       ;;(gts-prompt-picker :single t)
       ;;(gts-prompt-picker :texter (gts-current-or-selection-texter) :single t)

       :engines ; engines, one or more. Provide a parser to give different output.

       (list
        ;;(gts-bing-cn-engine)
        ;; (gts-google-engine)
        ;;(gts-google-rpc-engine)
        (gts-deepl-engine :auth-key "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:xx" :pro nil)        
        ;;(gts-google-engine :parser (gts-google-summary-parser))
        ;;(gts-google-engine :parser (gts-google-parser))
        ;;(gts-google-rpc-engine :parser (gts-google-rpc-summary-parser) :url "https://translate.google.com")
        ;;(gts-google-rpc-engine :parser (gts-google-rpc-parser) :url "https://translate.google.com")
        )

       :render ; render, only one, used to consumer the output result. Install posframe yourself when use gts-posframe-xxx

       (gts-buffer-render)
       ;; (gts-posframe-pop-render)
       ;;(gts-posframe-pop-render :backcolor "#333333" :forecolor "#ffffff")
       ;;(gts-posframe-pin-render)
       ;;(gts-posframe-pin-render :position (cons 1200 20))
       ;;(gts-posframe-pin-render :width 80 :height 25 :position (cons 1000 20) :forecolor "#ffffff" :backcolor "#111111")
       ;;(gts-kill-ring-render)
       ))

;;(setq go-translate-buffer-follow-p t)       ; focus the result window
;;(setq go-translate-buffer-source-fold-p t)  ; fold the source text in the result window
;;(setq go-translate-buffer-window-config ..) ; config the result window as your wish


(defun my-translate-command-3 ()
  (interactive)
  (gts-translate (gts-translator
                  :picker (gts-prompt-picker)
                  :engines (gts-deepl-engine :auth-key "358ac0bc-c965-bb15-63f3-4add6b384efe:fx" :pro nil)
                  :render (gts-posframe-pop-render))))

;; (global-set-key (kbd "C-c t") 'gts-do-translate)
;; (global-set-key (kbd "C-c t") 'my-translate-command-3)
