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

(defun dc-load-init (x)
  "Load a file from user emacs directory"
  (load-file (locate-user-emacs-file x)))

(defun dc-maybe-load-init (x)
  "Load a file from user emacs directory if it exists"
  (let ((f (locate-user-emacs-file x)))
    (if (file-exists-p f)
        (load-file f))))

(use-package cus-edit
  :custom
  (custom-file (locate-user-emacs-file "custom.el"))
  )

(dc-maybe-load-init "init/private-begin.el")

(mapc 'dc-load-init
        '(
          "init/ui.el"
          "init/ruby.el"
          "init/text.el"
          "init/mail.el"
          "init/abbrev.el"
          "init/calendar.el"
          "init/org.el"
          "init/evil.el"
          "init/slime.el"
          ))

(mapc 'dc-maybe-load-init
      '(
        "custom.el"
        "init/work.el"
        "init/wip.el"
        "init/private-end.el"
        ))
