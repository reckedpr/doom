;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-theme 'doom-gruvbox)
(setq display-line-numbers-type t)

(setq org-directory "~/org/")
(setq org-default-notes-file (concat org-directory "/inbox.org"))

(setq auto-save-visited-interval 15)
(auto-save-visited-mode +1)

(add-hook 'org-mode-hook
          (lambda () (org-autolist-mode)))

(after! org
  (setq org-todo-keywords
        '((sequence
           "TODO(t)"
           "WAIT(w)"
           "|"
           "DONE(d)"
           "KILL(k)"))))

(after! org-capture
  (setq org-capture-templates
        '(
          ("t" "todo" entry
           (file "~/org/inbox.org")
           "* TODO %?\n%U\n"
           :prepend t)

          ("T" "todo today" entry
           (file "~/org/inbox.org")
           "* TODO %?\nDEADLINE: %t\n%U\n"
           :prepend t)

          ("i" "inbox" entry
           (file "~/org/inbox.org")
           "* %?\n%U\n"
           :prepend t)

          ("v" "clip to inbox" entry
           (file "~/org/inbox.org")
           "* %x\n%U\n%?"
           :prepend t)
          )))

