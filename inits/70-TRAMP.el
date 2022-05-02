;; TRAMP
                                        ; (add-to-load-path "elisp/tramp-2.4.4")
(require 'tramp)


;; https://holidays-l.hatenadiary.org/entry/20101020/p1
(defadvice tramp-handle-vc-registered (around tramp-handle-vc-registered-around activate)
  (let ((vc-handled-backends '(SVN Git))) ad-do-it))
;; default '(RCS CVS SVN SCCS Bzr Git Hg Mtn Arch)

(setq tramp-copy-size-limit nil)


;; Downloads tramp-2.5.1.tar.gz
;;
;; cd ~/Downloads/
;; mkdir emacs
;; mv tramp-2.5.1.tar.gz emacs
;; cd emacs
;; tar -xvf tramp-2.5.1.tar.gz
;; ln -s tramp-2.5.1.tar.gz tramp
;; cd tramp
;; ./configure --prefix=/opt/emacs-27.2
;; make
;; sudo make install
;; M-x tramp-version # 2.5.1.27.2
