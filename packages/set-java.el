;;; set-java.el --- Função que configura o ambiente java -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/set-java ()
  "Configura o ambiente java."
  
  (use-package gradle-mode
    :ensure t)

  (use-package groovy-mode
    :ensure t))

(provide 'set-java)

;;; set-java.el ends here
