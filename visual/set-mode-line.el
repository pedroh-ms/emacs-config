;;; set-mode-line.el --- Função que faz alguns ajustes na mode line -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-mode-line ()
  "Faz alguns ajustes na mode line."
  (set-face-attribute
   'mode-line nil
   :box '(:line-width 2 :color "grey14")))


(provide 'set-mode-line)

;;; set-mode-line.el ends here
