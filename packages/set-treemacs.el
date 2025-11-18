;;; set-treemacs --- Função que instala e configura o treemacs -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun config/set-treemacs ()
  "Instala e configura o treemacs."
  (use-package projectile
    :ensure t
    :init
    (declare-function projectile-mode "projectile")
    :config
    (projectile-mode +1))
  
  (use-package treemacs-all-the-icons
    :ensure t)
  
  (use-package treemacs
    :ensure t
    :init
    (declare-function treemacs-load-theme "treemacs")
    (declare-function treemacs "treemacs")
    :config
    (treemacs-load-theme "all-the-icons")
    :bind
    (("C-\\" . 'treemacs)))

  (use-package treemacs-projectile
    :after (treemacs projectile)
    :ensure t))

(provide 'set-treemacs)

;;; set-treemacs.el ends here
