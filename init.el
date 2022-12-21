;; always start up a server
(require 'server)
(unless (server-running-p)
  (server-start))

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
; TODO use use-package-expand-minimally when I'm happy with my config

(load-file (locate-user-emacs-file "init/ui.el"))
(load-file (locate-user-emacs-file "init/ruby.el"))
(load-file (locate-user-emacs-file "init/text.el"))
(load-file (locate-user-emacs-file "init/mail.el"))

(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
    (load custom-file))

;; Spell checking
(add-hook 'rst-mode-hook (lambda () (flyspell-mode 1)))

;; Abbrev
(load-file (locate-user-emacs-file "init/abbrev.el"))
;; Calendar
(load-file (locate-user-emacs-file "init/calendar.el"))
;; Org-mode (builtin)
(load-file (locate-user-emacs-file "init/org.el"))


;; use evil for vim hawtness
(load-file (locate-user-emacs-file "init/evil.el"))
;; SLIME
(load-file (locate-user-emacs-file "init/slime.el"))

(when (file-exists-p (locate-user-emacs-file "work/work.el"))
  (add-to-list 'load-path (locate-user-emacs-file "work"))
  (require 'work))

; Have a place to put config that I'm not ready to commit to yet
(when (file-exists-p (locate-user-emacs-file "init/wip.el"))
  (load-file (locate-user-emacs-file "init/wip.el")))
