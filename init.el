(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/")
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(defvar my-packages '(ace-jump-mode
		      undo-tree
		      yasnippet
		      smex
		      ido-ubiquitous
		      alect-themes
		      editorconfig))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(defalias 'yes-or-no-p 'y-or-n-p)
(tool-bar-mode -1)
(menu-bar-mode -1)

(global-set-key (kbd "s-h") 'windmove-left)
(global-set-key (kbd "s-t") 'windmove-up)
(global-set-key (kbd "s-n") 'windmove-down)
(global-set-key (kbd "s-s") 'windmove-right)

(ido-mode 1)
(ido-everywhere 1)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(global-set-key (kbd "s-g") 'magit-status)
(global-set-key (kbd "s-c") 'ace-jump-mode)

(load-theme 'alect-dark t)

(editorconfig-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (haskell-mode yasnippet undo-tree smex paredit magit ido-ubiquitous editorconfig color-theme alect-themes ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
