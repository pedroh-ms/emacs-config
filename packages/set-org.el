;;; set-org.el --- Função que configura o org -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o org

;;; Code:

(defun config/org ()
  "Configura o org."
  (use-package org
    :ensure
    :config
    (progn
      (setq org-startup-indented t)
      (add-hook 'org-mode-hook (lambda () (hl-line-mode)))
      (eval-after-load "org" '(require 'ox-md nil t)))))

(provide 'set-org)

;;; set-org.el ends here
