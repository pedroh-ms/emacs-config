;;; set-eglot.el --- Função que configura o eglot -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(require 'company)

(defun config/set-eglot ()
  "Configura o eglot."
  (use-package eglot
    :ensure t
    :config
    (add-to-list 'company-backends 'company-capf)))

(provide 'set-eglot)

;;; set-eglot.el ends here
