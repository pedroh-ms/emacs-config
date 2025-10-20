;;; set-treesitter.el --- Função que configura o tree sitter -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(eval-when-compile
  (defvar treesit-language-source-alist))

(defun config/treesitter ()
  "Configura o tree sitter."

  (setq treesit-language-source-alist
	'((typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src"))
	  (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src"))))

  (use-package tsx-ts-mode
    :ensure nil
    :mode "\\.tsx\\'"
    :init
    (dolist (lang '(tsx typescript))
      (unless (treesit-language-available-p lang)
	(treesit-install-language-grammar lang)))))


(provide 'set-treesitter)
;;; set-treesitter.el ends here
