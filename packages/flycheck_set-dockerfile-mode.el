;;; set-eglot.el --- Função que configura ambiente docker -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/set-dockerfile-mode ()
  "Configura o ambiente docker."

  (use-package dockerfile-mode
    :ensure t))

(provide 'set-dockerfile-mode)
