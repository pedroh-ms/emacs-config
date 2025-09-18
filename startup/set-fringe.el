;;; set-fringe.el --- Função que define a fringe -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-fringe ()
  "Define a fringe."
  (add-hook 'after-init-hook (lambda () (fringe-mode 12))))


(provide 'set-fringe)

;;; set-fringe.el ends here
