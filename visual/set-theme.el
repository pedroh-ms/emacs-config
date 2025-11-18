;;; set-theme.el --- Função que configura o tema -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o tema

;;; Code:

(defmacro define-config/theme (&rest packages-and-themes)
  "Macro que declara a função de tema usando as declarações em PACKAGES-AND-THEMES."
  `(progn
     ,@(mapcan
	(lambda (package-and-themes)
	  (let ((package (car package-and-themes))
		(themes (cadr package-and-themes)))
	    (mapcar
	     (lambda (theme)
	       (let ((theme-name (symbol-name theme)))
		 `(defun ,(intern (concat "config/theme-" theme-name)) (&rest args)
		    ,(format "Função que define o tema %s." (replace-regexp-in-string "-" " " theme-name))
		    (use-package ,package
		      :ensure t
		      :config
		      (let ((config (plist-get args :config)))
			(when (functionp config)
			  (funcall config)))
		      (load-theme ',theme t)))))
	     themes)))
	packages-and-themes)))

(define-config/theme
 (standard-themes
  (standard-light standard-light-tinted standard-dark standard-dark-tinted))
 (alect-themes
  (alect-light alect-dark))
 (modus-themes
  (modus-operandi modus-operandi-tinted modus-vivendi modus-vivendi-tinted))
 (tron-legacy-theme (tron-legacy))
 (rebecca-theme (rebecca)))

(provide 'set-theme)

;;; set-theme.el ends here
