;;; set-company.el --- Função que configura o company para autocomplete -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/set-company ()
  "Configura o company para adicionar autocomplete pelo eglot."
  (use-package company
    :ensure t
    :init
    (declare-function global-auto-complete-mode "autocomplete")
    :hook
    (after-init . global-company-mode)
    (eglot-managed-mode . company-mode)
    :config
    (setq company-minimum-prefix-length 1
	  company-idle-delay 0.2
	  company-selection-wrap-around t
	  company-tooltip-align-annotations t
	  company-tooltip-minimum 1)
    (global-auto-complete-mode -1)
    (config/set-company-quickhelp)
    (add-hook 'slime-repl-mode-hook (lambda () (company-mode -1)))))

(defun config/set-company-quickhelp()
  "Configura o company-quickhelp para informações sobre a definição."
  (use-package pos-tip
    :ensure t)

  (use-package company-quickhelp
    :ensure t
    :hook
    (company-mode . company-quickhelp-mode)
    :config
    (setq company-quickhelp-use-propertized-text t)
    (setq company-quickhelp-delay 0.5)))


(provide 'set-company)

;;; set-company.el ends here
