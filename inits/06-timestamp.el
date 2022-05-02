(require 'time-stamp)

(setq
  time-stamp-active t          ; do enable time-stamps
  time-stamp-line-limit 10     ; check first 10 buffer lines for Time-stamp:
  time-stamp-format "%Y-%02m-%02d %02H:%02M:%02S (%u)") ; date format

(eval-after-load 'autoinsert
  '(define-auto-insert '(python-mode . "python utf-8 encode")
     '("Description: "
       "#!/usr/bin/env python3" \n
       "# -*- coding: utf-8 -*-" \n
       "# Time-stamp: \" \"" \n
       )))
(auto-insert-mode)
