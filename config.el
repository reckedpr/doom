;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-theme 'doom-gruvbox)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")

(setq auto-save-visited-interval 15)
(auto-save-visited-mode +1)

(add-hook 'org-mode-hook
          (lambda () (org-autolist-mode)))
