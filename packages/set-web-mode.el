;;; set-web-mode.el --- Função que configura o web-mode -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-web-mode ()
  "Configura o web-mode."
  (use-package web-mode
    :ensure t
    :mode ("\\.phtml\\'" "\\.php\\'" "\\.tpl\\.php\\'" "\\.jsp\\'" "\\.as[cp]x\\'"
           "\\.erb\\'" "\\.mustache\\'" "\\.djhtml\\'" "\\.html?\\'")
    :config
    (setq web-mode-engines-alist
          '(("php" . "\\.phtml\\'")
            ("php" . "\\.php\\'")))
    (setq web-mode-enable-current-element-highlight t)
    (setq web-mode-enable-current-column-highlight t)
  
    ;; Configurações de indentação
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 4)  ; PHP
    (setq web-mode-script-padding 1)
    (setq web-mode-block-padding 0)
  
    ;; Cores para diferentes contextos
    (setq web-mode-enable-part-face t)
    (setq web-mode-enable-block-face t)
    (setq web-mode-enable-comment-interpolation t)
  
    ;; Auto-pairs para diferentes contextos
    (setq web-mode-enable-auto-pairing t)
    (setq web-mode-enable-auto-closing t)
    (setq web-mode-enable-auto-quoting t)))


(provide 'set-web-mode)

;;; set-web-mode.el ends here
