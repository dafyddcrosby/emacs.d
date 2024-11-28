; Helper values/methods
(setq dc-daily (* 3600 24)
      dc-weekly (* 3600 24 7)
      dc-monthly (* 3600 24 28))
(setq dc-feed-moribund dc-monthly
      dc-feed-nossl dc-monthly)

(defun dc-blogspot-url (site)
  (concat "https://" site ".blogspot.com/feeds/posts/default"))
(defun dc-libsyn-url (site)
  (concat "https://" site ".libsyn.com/rss"))

(use-package newsticker
  :custom
  (newsticker-retrieval-interval dc-weekly)
  (newsticker-automatically-mark-items-as-old nil)
  (newsticker-automatically-mark-visited-items-as-old nil)
  (newsticker-download-logos nil)
  (newsticker-obsolete-item-max-age dc-monthly))

(dc-maybe-load-init "init/private/newsticker-private.el")
