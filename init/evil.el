(use-package evil
  :ensure t
  :custom
  (evil-want-C-i-jump nil "Fix TAB in emacs")
  (evil-undo-system 'undo-redo "Note: requires Emacs 28+")
  :config
  (evil-mode 1)
  (evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)
  (evil-define-key 'normal org-mode-map (kbd "RET") #'org-open-at-point)

  (evil-define-key 'motion Info-mode-map (kbd "RET") #'Info-follow-nearest-node)
  (evil-define-key 'motion Info-mode-map (kbd "[") #'Info-backward-node)
  (evil-define-key 'motion Info-mode-map (kbd "]") #'Info-forward-node)

  (evil-define-key nil 'global (kbd "C-S-v") #'yank)
  (evil-ex-define-cmd "q" #'kill-this-buffer)
  )
