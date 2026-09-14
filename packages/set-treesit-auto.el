;;; set-treesit-auto.el --- Função que configura o treesit-auto -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/treesit-auto ()
  "Configura o treesit-auto."
  (use-package treesit-auto
    :ensure t
    :functions (treesit-auto-add-to-auto-mode-alist
		global-treesit-auto-mode)
    :config
    (treesit-auto-add-to-auto-mode-alist 'all)
    (global-treesit-auto-mode)))

(provide 'set-treesit-auto)

;;; set-treesit-auto.el ends here
