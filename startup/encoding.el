;;; encoding.el --- Função para definir a codificação -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;; Usa a função set-language-environment para mudar a codificação para UTF-8

;;; Code:

(defun config-set-encoding ()
  "Muda a codificação para UTF-8."
  (set-language-environment "UTF-8"))

(provide 'encoding)

;;; encoding.el ends here
