; C source
(setq use-short-answers t
      ring-bell-function 'ignore
      visible-bell t)

(use-package menu-bar
  :config
  (menu-bar-mode 0)
  )

(use-package tool-bar
  :config
  (tool-bar-mode 0)
  )

(use-package scroll-bar
  :config
  (scroll-bar-mode 0)
  (horizontal-scroll-bar-mode 0)
  )

(use-package font-lock
  :custom
  (font-lock-maximum-decoration t)
  )

(use-package custom
  :config
  (load-theme 'tango-dark)
  )

(use-package window
  :bind
  ("M-o" . other-window)
  )

(use-package apropos
  :custom
  (apropos-do-all t)
  )

(use-package uniquify
  :custom
  (uniquify-buffer-name-style 'forward "unique buffer names"))

(use-package files
  :bind
  ("C-x f" . find-file)
  )

; swap to make regex default
(use-package isearch
  :bind (
         ("C-s" . isearch-forward-regexp)
         ("C-r" . isearch-backward-regexp)
         ("C-M-s" . isearch-forward)
         ("C-M-r" . isearch-backward)
         ))
