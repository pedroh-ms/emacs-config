;;; set-repeat.el --- Função que configura o repeat -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-repeat ()
  "Configura o repeat."
  (use-package repeat
    :config
    (repeat-mode)))


(provide 'set-repeat)

;;; set-repeat.el ends here
