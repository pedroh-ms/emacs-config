;;; set-go.el --- Função que configura o ambiente go -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(declare-function eglot-format-buffer "eglot")
(declare-function eglot-code-actions "eglot")
(declare-function eglot-managed-p "eglot")

(defun my/go-format-and-organize ()
  "Formata o buffer e organiza os imports via LSP."
  (when (eglot-managed-p)
    (eglot-format-buffer)
    (eglot-code-actions nil nil "source.organizeImports" t)))

(defun my/go-setup-save-hooks ()
  "Formata o buffer Go automaticamente ao salvar."
  (add-hook 'before-save-hook #'my/go-format-and-organize nil t))

(defun config/set-go ()
  "Configura o ambiente go."
  (defvar treesit-language-source-alist)
  (with-eval-after-load 'treesit
    (dolist (grammar '((go "https://github.com/tree-sitter/tree-sitter-go")
		       (gomod "https://github.com/camdencheek/tree-sitter-go-mod")))
      (unless (assq (car grammar) treesit-language-source-alist)
	(add-to-list 'treesit-language-source-alist grammar))))
  
  (use-package go-ts-mode
    :ensure nil
    :mode (("\\.go\\'" . go-ts-mode)
	   ("/go\\.mod\\'" . go-mod-ts-mode))
    :hook ((go-ts-mode . eglot-ensure)
	   (go-ts-mode . my/go-setup-save-hooks))
    :custom (go-ts-mode-indent-offset 4)))

(provide 'set-go)

;;; set-go.el ends here
