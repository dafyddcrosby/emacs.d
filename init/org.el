(use-package org
  :custom
  (org-agenda-dim-blocked-tasks 'invisible)
  (org-agenda-show-all-dates t "show empty dates")
  (org-agenda-todo-ignore-scheduled 'future "ignore SCHEDULED until day arrives")
  (org-agenda-use-tag-inheritance nil "Speed up agenda")
  (org-agenda-include-diary t)
  (org-babel-default-header-args '((:eval . "no")))
  (org-clock-out-remove-zero-time-clocks t "Don't save 0-minute clocks")
  (org-clock-persist t "Save running clocks between Emacs sessions")
  (org-clock-persist-query-resume nil "Ask before resuming clock")
  (org-ellipsis "⤵")
  (org-enforce-todo-dependencies t)
  (org-export-use-babel nil)
  (org-export-with-special-strings nil)
  (org-habit-scheduled-past-days 10000 "Continue seeing undone habits")
  (org-habit-show-habits-only-for-today nil "I like to see upcoming habits")
  (org-hierarchical-todo-statistics nil "Consider all tree entries")
  (org-log-into-drawer t)
  (org-refile-use-outline-path 'file "Use file name to determine refile path")
  (org-refile-targets '((nil :maxlevel . 5) (org-agenda-files :maxlevel . 5)))
  (org-return-follows-link t)

  ; https://orgmode.org/manual/Link-Abbreviations.html
  (org-link-abbrev-alist
   '(
     ("chefresource" . "https://docs.chef.io/resources/%s/")
     ("cookstyle"  . "https://docs.chef.io/workstation/cookstyle/%s/")
     ("duckduckgo" . "https://duckduckgo.com/?q=%s")
     ("ghrepo"     . "https://github.com/%s")
     ("inspecresource" . "https://docs.chef.io/inspec/resources/%s/")
     ("omap"       . "https://nominatim.openstreetmap.org/ui/search.html?q=%s&polygon=1")
     ("pypi"       . "https://pypi.org/project/%s")
     ("rubydoc"    . "https://docs.ruby-lang.org/en/master/%s.html")
     ("rubygems"   . "https://rubygems.org/gems/%s")
     ("supermarket" . "https://supermarket.chef.io/cookbooks/%s")
     ("wp"         . "https://en.wikipedia.org/wiki/%s")
     ("yt"         . "https://www.youtube.com/watch?v=%s")
     ))

  (org-todo-keywords
   '(
     (sequence "TODO(t)" "WIP(w)" "|" "DONE(d)" "CANCELLED(x)")
     ))
  :bind
  (
   ("C-c l" . org-store-link)
   ("C-c a" . org-agenda)
   ("C-c c" . org-capture)
   )
  :config
  (org-clock-persistence-insinuate) ;; Resume clocking task on emacs restart
  :hook
  (org-after-todo-statistics . org-summary-todo)
  )

(global-set-key [f5] 'org-capture)
(global-set-key [f6] 'org-agenda)

(use-package org-roam
  :ensure t
  :after org
  :custom
  (org-roam-directory org-directory "Use the same org directory")
  :config
  (org-roam-setup)
  (org-roam-db-autosync-mode)
  :bind (("C-c n f" . org-roam-node-find)
         ("C-c n r" . org-roam-node-random)
         ("C-c n c" . org-roam-capture)
         ("C-c n g" . org-roam-graph)
         :map org-mode-map
         ("C-c n i" . org-roam-node-insert)
         ("C-c n o" . org-id-get-create)
         ("C-c n t" . org-roam-tag-add)
         ("C-c n a" . org-roam-alias-add)
         ("C-c n l" . org-roam-buffer-toggle)
         )
  )

(use-package ox-md)
