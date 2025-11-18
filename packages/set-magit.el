;;; set-magit.el --- Função que configura o magit -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/magit ()
  "Configura o magit."
  (use-package magit
    :ensure t
    :bind ("C-x g" . magit-status)
    :config
    (declare-function magit-display-buffer-same-window-except-diff-v1 "magit")
    (setq magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)))

(provide 'set-magit)

;;; set-magit.el ends here
