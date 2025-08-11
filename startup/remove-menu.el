;;; remove-menu.el --- Função para remover os menus -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1))

;;; Commentary:
;;

;;; Code:

(defun config-remove-menu ()
  "Remover menus."
  (tool-bar-mode -1)
  (menu-bar-mode -1))

(provide 'remove-menu)

;;; remove-menu.el ends here
