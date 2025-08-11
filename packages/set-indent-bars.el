;;; set-indent-bars.el --- Função que define as linhas de indentação com o indent-bars -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-indent-bars ()
  "Define as linhas de indentação com o indent-bars."
  (use-package indent-bars
    :ensure t
    :hook (prog-mode . indent-bars-mode)
    :config
    (setq
     indent-bars-color '(highlight :face-bg t :blend 0.15)
     indent-bars-pattern "."
     indent-bars-width-frac 0.1
     indent-bars-pad-frac 0.1
     indent-bars-zigzag nil
     indent-bars-color-by-depth nil
     indent-bars-highlight-current-depth nil
     indent-bars-display-on-blank-lines t)))


(provide 'set-indent-bars)

;;; set-indent-bars.el ends here
