;;; set-slime.el --- Função que configura o slime -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-slime ()
  "Configura o slime."
  (use-package slime
    :ensure t
    :init
    (declare-function company-quickhelp-local-mode "company-quickhelp")
    :config
    (setq inferior-lisp-program "sbcl")
    
    (add-hook 'slime-mode-hook
	      (lambda ()
		(company-quickhelp-local-mode -1)))

    (add-hook 'slime-repl-mode-hook
	      (lambda ()
		(company-quickhelp-local-mode -1)))))


(provide 'set-slime)

;;; set-slime.el ends here
