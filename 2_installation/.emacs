(put 'dired-find-alternate-file 'disabled nil)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (C . t)))

;; stop asking for confirmation
(setq org-confirm-babel-evaluate nil)

;; enable snippet expansion via org-structure-template-alist
(require 'org-tempo)

;; get packages from MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(org-beautify dracula))
 '(custom-safe-themes
   '("fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7" "071f18fb366412734b6215fa97918f465cedad058285f426504f3bf84aae7a3b" default))
 '(package-selected-packages
   '(org-bullets org-tree-slide org-beautify-theme dracula-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
