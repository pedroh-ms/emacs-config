;;; set-eglot.el --- Função que configura o eglot -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-eglot ()
  "Configura o eglot."
  (use-package eglot
    :ensure t
    :hook
    (php-mode . eglot-ensure)
    :config
    (add-to-list 'eglot-server-programs '(php-mode . ("intelephense" "--stdio")))
    (add-to-list 'company-backends 'company-capf)
    ))


(provide 'set-eglot)

;;; set-eglot.el ends here
