;;; set-highlight-indent-guides.el --- Função que configura as linhas de indentação -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/set-highlight-indent-guides ()
  "Configura as linhas de indentação."
  (use-package highlight-indent-guides
    :ensure t
    :hook (prog-mode . highlight-indent-guides-mode)
    :config
    (setq highlight-indent-guides-method 'fill)
    (setq highlight-indent-guides-auto-enabled t)
    ;(setq highlight-indent-guides-character ?\|)
    (setq highlight-indent-guides-responsive 'top)
    (setq highlight-indent-guides-delay 0)))


(provide 'set-highlight-indent-guides)

;;; set-highlight-indent-guides.el ends here
