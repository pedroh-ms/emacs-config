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
    (add-hook 'csharp-mode-hook #'eglot-ensure)
    (add-to-list
     'eglot-server-programs
     '(csharp-mode . ("csharp-ls"))))

  (use-package csproj-mode
    :ensure t))

(provide 'set-dotnet)

;;; set-dotnet.el ends here
