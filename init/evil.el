(use-package evil
  :ensure t
  :custom
  (evil-want-C-i-jump nil "Fix TAB in emacs")
  (evil-undo-system 'undo-redo "Note: requires Emacs 28+")
  (evil-respect-visual-line-mode 't "Note: evil must load after visual-line-mode")
  :config
  (evil-mode 1)
  (evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)
  (evil-define-key 'normal org-mode-map (kbd "RET") #'org-open-at-point)

  (evil-define-key 'motion Info-mode-map (kbd "RET") #'Info-follow-nearest-node)
  (evil-define-key 'motion Info-mode-map (kbd "[") #'Info-backward-node)
  (evil-define-key 'motion Info-mode-map (kbd "]") #'Info-forward-node)

  (evil-global-set-key 'motion (kbd "<down>") #'evil-next-visual-line)
  (evil-global-set-key 'motion (kbd "<up>") #'evil-previous-visual-line)
  (evil-define-key nil 'global (kbd "C-S-v") #'yank)
  (evil-ex-define-cmd "q" #'kill-this-buffer)
  )

; some modes don't make sense with evil
(cl-loop for (mode . state)
      in '(
           (inferior-emacs-lisp-mode . emacs)
           (git-commit-mode . insert)
           (term-mode . emacs)
           (help-mode . emacs)
           (Info-mode . emacs)
           (dired-mode . emacs)
           (newsticker-treeview-mode . emacs)
           )
      do (evil-set-initial-state mode state))
