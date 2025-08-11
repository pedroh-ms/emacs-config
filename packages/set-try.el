;;; set-try.el --- Função que instala o pacote try -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;; Instala e configura o pacote try

;;; Code:

(defun config/set-try ()
  "Instala o pacote try."
  ;; Pacote para testar outros pacotes sem instalá-los
  (use-package try
    :ensure t))


(provide 'set-try)

;;; set-try.el ends here
