;;; set-eglot.el --- Função que configura o eglot -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/set-eglot ()
  "Configura o eglot."
  (use-package eglot
    :ensure t
    :config
    (add-to-list 'eglot-server-programs '(php-mode . ("intelephense" "--stdio")))
    (add-to-list 'eglot-server-programs '(csharp-mode . ("csharp-ls")))))

(provide 'set-eglot)

;;; set-eglot.el ends here
