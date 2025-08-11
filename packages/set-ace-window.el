;;; set-ace-window.el --- Função que instala o pacote ace-window -*- lexical-binding: t; -*-

;;; Commentary:
;; Instala e configura o pacote ace-window

;;; Code:


(defun config/set-ace-window ()
  "Instala o pacote ace-window."
  ;; Selecionar janela por número
  (use-package ace-window
    :ensure t
    :bind (("C-x o" . ace-window))))

(provide 'set-ace-window)

;;; set-ace-window.el ends here
