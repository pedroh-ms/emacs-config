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
    (progn
      (add-to-list 'eglot-server-programs '(php-mode . ("intelephense" "--stdio"))))))


(provide 'set-eglot)

;;; set-eglot.el ends here
