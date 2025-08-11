;;; set-markdown.el --- Função que configura o markdown-mode -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o markdown-mode

;;; Code:

(defun config/set-markdown-mode ()
  "Configura o markdown-mode."
  (use-package markdown-mode
    :ensure t
    :config
    (progn
      (add-hook 'markdown-mode-hook (lambda () (hl-line-mode))))))


(provide 'set-markdown)

;;; set-markdown.el ends here
