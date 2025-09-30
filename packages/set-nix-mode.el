;;; set-nix-mode.el --- Função que configura o ambiente para arquivos nix -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/nix-mode ()
  "Configura o ambiente para arquivos .nix."

  (use-package nix-mode
    :ensure t
    :mode "\\.nix\\'"
    :config
    (setq nix-indent-level 2)
    (add-hook 'nix-mode-hook
	      (lambda ()
		(add-hook 'before-save-hook 'nixfmt nil 'local))))

  (use-package nixos-options
    :ensure t
    :after nix-mode)

  (use-package company-nixos-options
    :ensure t
    :after (company nix-mode)
    :config
    (add-to-list 'company-backends 'company-nixos-options)))


(provide 'set-nix-mode)
;;; set-nix-mode.el ends here
