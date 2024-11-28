;; always start up a server
(require 'server)
(unless (server-running-p)
  (server-start))

(defun dc-load-init (x)
  "Load a file from user emacs directory"
  (load-file (locate-user-emacs-file x)))

(defun dc-maybe-load-init (x)
  "Load a file from user emacs directory if it exists"
  (let ((f (locate-user-emacs-file x)))
    (if (file-exists-p f)
        (load-file f))))

(mapc 'dc-load-init '("init/package.el"))

(use-package cus-edit
  :custom
  (custom-file (locate-user-emacs-file "custom.el"))
  )

(dc-maybe-load-init "init/private/private-begin.el")

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
          "init/newsticker.el"
          "init/slime.el"
          ))

(mapc 'dc-maybe-load-init
      '(
        "custom.el"
        "init/private/work.el"
        "init/private/wip.el"
        "init/private/private-end.el"
        ))
