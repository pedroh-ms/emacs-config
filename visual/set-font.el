;;; set-font.el --- Função para definir a fonte -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;;

;;; Code:

(defun config/font ()
  "Função que configura a fonte."
  (progn
    (set-face-attribute 'default nil
			:family "Fira Code"
			:height 110
			:weight 'normal)))


(provide 'set-font)

;;; set-font.el ends here
