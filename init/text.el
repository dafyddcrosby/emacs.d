; C source code
(setq-default fill-column 80
              indent-tabs-mode nil)

;; Revert if on-disk changes are made
(use-package autorevert
  :config
  (global-auto-revert-mode t)
  )

;; Show contents of compressed files (eg tarballs)
(auto-compression-mode 1)

(use-package elec-pair
  :config
  (electric-pair-mode 1)
  )

(use-package electric
  :config
  (electric-indent-mode 1)
  )

(use-package paren
  :custom
  (show-paren-delay 0)
  :config
  (show-paren-mode 1))

(use-package simple
  :hook
  (text-mode . turn-on-auto-fill)
  :config
  (auto-fill-mode 1)
  )

;; Spell checking
; TODO use-package
(add-hook 'rst-mode-hook (lambda () (flyspell-mode 1)))
