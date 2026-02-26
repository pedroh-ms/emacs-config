;;; set-eglot.el --- Função que configura ambiente docker -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/set-docker ()
  "Configura o ambiente docker."

  (use-package dockerfile-mode
    :ensure t))

(provide 'set-docker)

;;; set-docker.el ends here
