;;; set-dotnet.el --- Função que configura o ambiente do .NET -*- lexical-binding: t; -*-

;;; Commentary:
;; Configuração para .NET

;;; Code:

(require 'eglot)

(defun config/set-dotnet ()
  "Configura o ambiente do .NET."

  (use-package csharp-mode
    :ensure t
    :after eglot
    :config
    (add-hook 'csharp-mode-hook #'eglot-ensure))

  (use-package csproj-mode
    :ensure t))

(provide 'set-dotnet)

;;; set-dotnet.el ends here
