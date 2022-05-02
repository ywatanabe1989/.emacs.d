;; Markdown Mode
; (package-install 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

(use-package markdown-mode
  :mode ("\\.md\\'" . gfm-mode))

(autoload 'markdown-preview-mode "markdown-preview-mode.el" t)
(setq markdown-command "/usr/bin/pandoc")
(setq markdown-open-command "/usr/bin/pandoc")

(remove-hook 'markdown-mode-hook #'enable-trailing-whitespace)
(remove-hook 'gfm-mode-hook #'enable-trailing-whitespace)

;; M-x markdown-live-preview-mode
;; or
;; C-c C-c l


;; GitHub
;; https://qiita.com/ybiquitous/items/34a4c3cb33f26136f670
;; sudo apt update -y
;; sudo apt install -y ruby-github-markup

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("\\.md\\'" . gfm-mode)
          ("\\.markdown\\'" . gfm-mode))
  :config
  (add-hook 'markdown-mode-hook #'flyspell-mode)
  (setq
    markdown-command "github-markup"
    markdown-command-needs-filename t
    markdown-content-type "application/xhtml+xml"
    markdown-css-paths '("https://cdn.jsdelivr.net/npm/github-markdown-css/github-markdown.min.css"
                          "http://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/styles/github.min.css")
    markdown-xhtml-header-content "
<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
<style>
body {
  box-sizing: border-box;
  max-width: 740px;
  width: 100%;
  margin: 40px auto;
  padding: 0 10px;
}
</style>
<script src='http://cdn.jsdelivr.net/gh/highlightjs/cdn-release/build/highlight.min.js'></script>
<script>
document.addEventListener('DOMContentLoaded', () => {
  document.body.classList.add('markdown-body');
  document.querySelectorAll('pre[lang] > code').forEach((code) => {
    code.classList.add(code.parentElement.lang);
    hljs.highlightBlock(code);
  });
});
</script>
"))
