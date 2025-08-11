;;; set-auto-complete.el --- Função que instala o pacote try -*- lexical-binding: t; -*-

;;; Commentary:
;; Instala e configura o pacote auto-complete

;;; Code:

(defun config/set-auto-complete ()
  "Instala o pacote auto-complete."
  ;; Auto-completar o código (tab)
  (use-package auto-complete
    :ensure t
    :init
    (progn
      (ac-config-default)
      (global-auto-complete-mode t))))


(provide 'set-auto-complete)

;;; set-auto-complete.el ends here
