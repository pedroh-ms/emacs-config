;;; set-yaml.el --- Função que configura o yaml-mode -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o yaml-mode

;;; Code:

(defun config/set-yaml-mode ()
  "Configura o yaml-mode."
  (use-package yaml-mode
    :ensure t
    :config
    (progn
      (add-hook 'yaml-mode-hook (lambda () (hl-line-mode))))))


(provide 'set-yaml)

;;; set-yaml.el ends here
