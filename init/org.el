(use-package org
  :custom
  (org-agenda-dim-blocked-tasks nil "Speed up agenda")
  (org-agenda-show-all-dates t "show empty dates")
  (org-agenda-todo-ignore-scheduled 'future "ignore SCHEDULED until day arrives")
  (org-agenda-use-tag-inheritance nil "Speed up agenda")
  (org-agenda-include-diary t)
  (org-clock-out-remove-zero-time-clocks t "Don't save 0-minute clocks")
  (org-clock-persist t "Save running clocks between Emacs sessions")
  (org-clock-persist-query-resume nil "Ask before resuming clock")
  (org-ellipsis "⤵")
  (org-export-with-special-strings nil)
  (org-habit-scheduled-past-days 10000 "Continue seeing undone habits")
  (org-habit-show-habits-only-for-today nil "I like to see upcoming habits")
  (org-hierarchical-todo-statistics nil "Consider all tree entries")
  (org-icalendar-include-todo t "Add unfinished VTODO to icalendar exports")
  (org-icalendar-store-UID t "To prevent duplicate TODOs, adds ID properties to each node")
  (org-refile-use-outline-path 'file "Use file name to determine refile path")
  (org-refile-targets '((nil :maxlevel . 5) (org-agenda-files :maxlevel . 5)))
  (org-return-follows-link t)
  (org-todo-keyword-faces '(("WAITING" :foreground "orange" :weight bold)))

  ; https://orgmode.org/manual/Link-Abbreviations.html
  (org-link-abbrev-alist
   '(
     ("duckduckgo" . "https://duckduckgo.com/?q=%s")
     ("wp"         . "https://en.wikipedia.org/wiki/%s")
     ("omap"       . "https://nominatim.openstreetmap.org/ui/search.html?q=%s&polygon=1")
     ))

  (org-todo-keywords
   '(
     (sequence "TODO(t)" "WIP(w)" "VERIFY(v)" "|" "DONE(d)")
     (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
     (sequence "|" "CANCELED(c)")
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
