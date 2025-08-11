;;; set-phpunit.el --- Função que configura o phpunit -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-phpunit ()
  "Configura o phpunit."
  (use-package phpunit
    :ensure t))


(provide 'set-phpunit)

;;; set-phpunit.el ends here
