;; Configure SLIME
;; https://github.com/slime/slime
(use-package slime
  :ensure t
  :config
  (setq inferior-lisp-program "sbcl"))
; (eval-after-load "slime"
;   '(progn
;      (setq common-lisp-hyperspec-root
;            "/usr/local/share/doc/hyperspec/HyperSpec/")
;      (setq common-lisp-hyperspec-symbol-table
;            (concat common-lisp-hyperspec-root "Data/Map_Sym.txt"))
;      (setq common-lisp-hyperspec-issuex-table
;            (concat common-lisp-hyperspec-root "Data/Map_IssX.txt"))))
