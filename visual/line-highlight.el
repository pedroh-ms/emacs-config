;;; line-highlight.el --- Função para definir o destaque de linha -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;; Utiliza o hl-line-mode com hook no modo programação

;;; Code:

(defun config/line-highlight ()
  "Destaca a linha atual."
  (add-hook 'prog-mode-hook (lambda () (hl-line-mode))))


(provide 'line-highlight)

;;; line-highlight.el ends here
