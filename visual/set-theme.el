;;; set-theme.el --- Função que configura o tema -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o tema

;;; Code:


;; Tema
(defun config/theme ()
  "Função que define o tema."
  (use-package alect-themes
    :ensure t
    :config
    (load-theme 'alect-light t)))


(provide 'set-theme)

;;; set-theme.el ends here
