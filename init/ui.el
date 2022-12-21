;; disable the menu bar
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(horizontal-scroll-bar-mode 0)

; unique buffer names
(use-package uniquify
  :ensure nil
  :config
  (setq uniquify-buffer-name-style 'forward))

(setq font-lock-maximum-decoration t
      apropos-do-all t
      use-short-answers t
      visible-bell t)

(load-theme 'tango-dark)

(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-x f") 'find-file)

; swap to make regex default
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
