;;; set-slime.el --- Função que configura o slime -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-slime ()
  "Configura o slime."
  (use-package slime
    :ensure t
    :config
    (setq inferior-lisp-program "sbcl")))


(provide 'set-slime)

;;; set-slime.el ends here
