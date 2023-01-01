(use-package abbrev
  :custom
  (abbrev-file-name (concat user-emacs-directory "abbrev_defs"))
  (abbrev-suggest t)
  :config
  (setq-default abbrev-mode t)
  )
