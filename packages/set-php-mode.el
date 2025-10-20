;;; set-php-mode.el --- Função que configura o php-mode -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o php-mode

;;; Code:

(defun config/set-php-ts-mode ()
  "Configura o php-mode."
  (use-package php-ts-mode
    :init
    (setq treesit-language-source-alist
	  '((php "https://github.com/tree-sitter/tree-sitter-php")
	    (phpdoc "https://github.com/claytonrcarter/tree-sitter-phpdoc")
	    (html "https://github.com/tree-sitter/tree-sitter-html")
	    (javascript "https://github.com/tree-sitter/tree-sitter-javascript")
	    (jsdoc "https://github.com/tree-sitter/tree-sitter-jsdoc")
	    (css "https://github.com/tree-sitter/tree-sitter-css")))

    (dolist (lang '(php phpdoc html javascript jsdoc css))
      (unless (treesit-language-available-p lang)
	(treesit-install-language-grammar lang)))

    :config
    (add-hook 'php-ts-mode-hook (lambda ()
				  (setq-local treesit-font-lock-level 4)))
    (add-to-list 'major-mode-remap-alist '(php-mode . php-ts-mode))))


(defun config/set-php-mode ()
  "Configura o php-mode."
  (use-package php-mode
    :ensure t
    :mode ("\\.php\\'" . php-mode)
    :config
    (progn
      (add-hook 'php-mode-hook
		(lambda ()
		  ;(setq left-fringe-width 16)
		  ;(setq right-fringe-width 16)
		  (set-window-buffer nil (current-buffer)))))))

(provide 'set-php-mode)

;;; set-php-mode.el ends here
