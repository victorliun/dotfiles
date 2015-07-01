;;;Project structure layout
(add-to-list 'load-path "~/.emacs.d/vendor/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(add-to-list 'load-path "~/.emacs.d/vendor/")

;; lua2 mode
(require 'lua2-mode)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua2-mode))

;; Yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Auto complete
(require 'auto-complete-config)
(ac-config-default)

;; Dockerfile mode
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; flake8 check
(require 'flake8)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

;;; speed up movement.


;;; add melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
;; key-bindings for magit
(global-set-key (kbd "C-x g") 'magit-status)
