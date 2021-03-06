(put 'dired-find-alternate-file 'disabled nil)

;; require ob-sqlite and ob-sql (for compilation in org src blocks) & tangle
(require 'ob-sqlite)
(require 'ob-sql)
(require 'ob-emacs-lisp)
(require 'ob-R)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (sql . t)
   (python . t)
   (emacs-lisp . t)
   (C . t)))

;; Syntax highlight code in your SRC blocks The last variable removes
;; the annoying “Do you want to execute” your code when you type:
;; C-c C-c
(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t)

;; get packages from MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
