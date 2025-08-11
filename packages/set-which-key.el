;;; set-which-key.el --- Função que instala o pacote whick-key -*- lexical-binding: t; -*-

;;; Commentary:
;; Instala e configura o pacote whick-key

;;; Code:

(defun config/set-which-key ()
  "Instala o pacote which-key."
  ;; Mostra as key bindings
  (use-package which-key
    :ensure t
    :config
    (progn
      (which-key-setup-side-window-right-bottom)
      (which-key-mode))))


(provide 'set-which-key)

;;; set-which-key.el ends here
