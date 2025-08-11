;;; set-neotree --- Função que instala o pacote neotree -*- lexical-binding: t; -*-

;;; Commentary:
;; Instala e configura o pacote neotree

;;; Code:

(defun set-all-the-icons ()
  "Configura os icones do neotree."
  (use-package all-the-icons
    :ensure t
    :if (display-graphic-p)))


(defun config/set-neotree ()
  "Instala o pacote neotree."
  ;; Árvore de pastas e arquivos
  (use-package neotree
    :ensure t
    :config
    (progn
      (add-hook 'neotree-mode-hook
		(lambda ()
		  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))))
      (set-all-the-icons))
    :bind (("C-\\" . 'neotree-toggle)))) ;; tecla atom


(provide 'set-neotree)

;;; set-neotree.el ends here
