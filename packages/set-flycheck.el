;;; set-flycheck.el --- Função que instala o pacote flycheck -*- lexical-binding: t; -*-

;;; Commentary:
;; Instala e configura o pacote flycheck

;;; Code:


(defun config/set-flycheck ()
  "Instala o pacote flycheck."
  ;; Checagem de sintaxe
  (use-package flycheck
    :ensure t
    :init (progn
	    (global-flycheck-mode t)
	    (setq-default flycheck-emacs-lisp-load-path 'inherit))))


(provide 'set-flycheck)

;;; set-flycheck.el ends here
