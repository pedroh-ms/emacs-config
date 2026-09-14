;;; set-restclient.el --- Função que carrega o restclient -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/restclient ()
  "Carrega o restclient."
  (use-package restclient
    :ensure t
    :mode ("\\.http\\'" . restclient-mode)))

(provide 'set-restclient)

;;; set-restclient.el ends here
