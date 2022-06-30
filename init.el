(electric-pair-mode t)
(add-hook 'prog-mode-hook #'show-paren-mode)
(column-number-mode t)
(global-auto-revert-mode t)
(delete-selection-mode t)
;(add-hook 'prog-mode-hook #'hs-minor-mode)
(global-display-line-numbers-mode 1)
;;(tool-bar-mode -1)
(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.cloud.tencent.com/elpa/gnu/")
			 ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(package-install 'orderless)
(setq completion-styles '(orderless))

(package-install 'vertico)
(vertico-mode t)

(package-install 'use-package)
(eval-when-compile
  (require 'use-package))

(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 2) ;
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t) 
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence))) ;

(require 'company-clang)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'c++-mode-hook 'company-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(vertico company use-package orderless)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

