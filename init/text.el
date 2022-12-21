;; Revert if on-disk changes are made
(global-auto-revert-mode t)

;; Show contents of compressed files (eg tarballs)
(auto-compression-mode 1)

;; Make code prettier
(electric-pair-mode 1)
(electric-indent-mode 1)
(use-package paren
  :ensure nil
  :config
  (setq show-paren-delay 0)
  (show-paren-mode 1))

(add-hook 'text-mode-hook 'turn-on-auto-fill)
(auto-fill-mode 1)
(setq-default fill-column 80
              indent-tabs-mode nil)
