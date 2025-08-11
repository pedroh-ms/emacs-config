;;; remove-scroll.el --- Função para remover a barra de rolagem -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;; Remove a barra de rolagem com o símbolo scroll-bar-mode

;;; Code:

(defun config-remove-scroll ()
  "Remover barra de rolagem."
  (scroll-bar-mode -1))


(provide 'remove-scroll)

;;; remove-scroll.el ends here
