(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
; TODO use use-package-expand-minimally when I'm happy with my config

(use-package use-package
  :ensure t)

(use-package quelpa
  :ensure t)

(setq use-package-ensure-function 'quelpa)

(quelpa '(quelpa-use-package
          :fetcher github
          :repo "quelpa/quelpa-use-package"))
(require 'quelpa-use-package)
