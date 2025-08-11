;;; remove-welcome.el --- Função para remover as boas vindas do emacs -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;; Utiliza as variáveis inhibit-startup-message e initial-scratch-message para remover as boas vindas

;;; Code:

(defun config-remove-welcome ()
  "Remover boas vindas."
  (setq inhibit-startup-message t)
  (setq initial-scratch-message nil))

(provide 'remove-welcome)

;;; remove-welcome.el ends here
