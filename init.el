;; always start up a server
(require 'server)
(unless (server-running-p)
  (server-start))

(load-file (concat user-emacs-directory "init/ui.el"))
(load-file (concat user-emacs-directory "init/ruby.el"))
(load-file (concat user-emacs-directory "init/text.el"))
(load-file (concat user-emacs-directory "init/mail.el"))

(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
    (load custom-file))

;; Spell checking
(add-hook 'rst-mode-hook (lambda () (flyspell-mode 1)))

;; Abbrev
(load-file (concat user-emacs-directory "init/abbrev.el"))
;; Calendar
(load-file (concat user-emacs-directory "init/calendar.el"))
;; Org-mode (builtin)
(load-file (concat user-emacs-directory "init/org.el"))

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; use evil for vim hawtness
(load-file (concat user-emacs-directory "init/evil.el"))
;; SLIME
(load-file (concat user-emacs-directory "init/slime.el"))

(when (file-exists-p (concat user-emacs-directory "work/work.el"))
  (add-to-list 'load-path (concat user-emacs-directory "work"))
  (require 'work))

; Have a place to put config that I'm not ready to commit to yet
(when (file-exists-p (concat user-emacs-directory "init/wip.el"))
  (load-file (concat user-emacs-directory "init/wip.el")))
