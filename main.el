;;; main.el --- My emacs configd -*- lexical-binding: t; -*-

;;; Commentary:
;;; Code:

(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)
  (with-temp-file custom-file
    (insert ";; Custom file for Emacs customizations\n")))
(load custom-file)


(add-to-list 'load-path "~/.emacs.d/emacs-config/startup")
(add-to-list 'load-path "~/.emacs.d/emacs-config/visual")
(add-to-list 'load-path "~/.emacs.d/emacs-config/packages")
(add-to-list 'load-path "~/.emacs.d/emacs-config/utilities")

(require 'package)

(setq package-enable-at-startup nil) ; desabilitar inicio de ativação

;; MELPA - repositório
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))

(package-initialize) ; iniciar pacotes

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(require 'remove-welcome)
(require 'encoding)
(require 'remove-menu)
(require 'remove-scroll)
(require 'line-highlight)
(require 'set-font)
(require 'set-ligature)
(require 'set-try)
(require 'set-which-key)
(require 'set-auto-complete)
(require 'set-neotree)
(require 'set-ace-window)
(require 'set-flycheck)
(require 'set-yaml)
(require 'set-markdown)
(require 'set-theme)
(require 'set-org)
(require 'set-php-mode)
(require 'set-eglot)
(require 'set-dape)
(require 'set-repeat)
(require 'set-phpunit)
(require 'set-daemon)
(require 'set-mode-line)
(require 'set-elcord)
(require 'set-slime)
(require 'convert-vowels-to-ascii)
(require 'set-highlight-indent-guides)
(require 'set-indent-bars)
(require 'set-web-mode)
(require 'set-fringe)
(require 'set-company)

(config-remove-welcome)
(config-set-encoding)
(config-remove-menu)
(config-remove-scroll)

(config/line-highlight)
(config/font)
(config/ligature)
(config/theme)

(config/set-try)
(config/set-which-key)
;(config/set-auto-complete)
(config/set-neotree)
(config/set-ace-window)
(config/set-flycheck)
(config/org)

(config/set-company)
(config/set-yaml-mode)
;(config/set-markdown-mode)
(config/set-php-mode)
(config/set-eglot)
(config/set-dape)
(config/set-repeat)
(config/set-phpunit)
;(config/set-daemon)
;(config/set-mode-line)
(config/set-elcord)
(config/set-slime)
;(config/set-highlight-indent-guides)
(config/set-indent-bars)
;(config/set-web-mode)
(config/set-fringe)

(provide 'main)
;;; main.el ends here
