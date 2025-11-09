;;; set-theme.el --- Função que configura o tema -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o tema

;;; Code:

(defmacro config/theme-macro (package theme)
  "Macro que declara o tema THEME dentro de PACKAGE."
  `(use-package ,package
    :ensure t
    :config
    (load-theme ,theme t)))

;; Temas
(defun config/theme-tron-legacy ()
  "Função que define o tema tron legacy."
  (config/theme-macro tron-legacy-theme 'tron-legacy))

(defun config/theme-alect-dark ()
  "Função que define o tema alect dark."
  (config/theme-macro alect-themes 'alect-dark))

(defun config/theme-alect-light ()
  "Função que define o tema alect light."
  (config/theme-macro alect-themes 'alect-light))

(defun config/theme-modus-operandi ()
  "Função que define o tema modus operandi."
  (config/theme-macro modus-themes 'modus-operandi))

(defun config/theme-modus-operandi-tinted ()
  "Função que define o tema modus operandi tinted."
  (config/theme-macro modus-themes 'modus-operandi-tinted))

(defun config/theme-modus-vivendi ()
  "Função que define o tema modus vivendi."
  (config/theme-macro modus-themes 'modus-vivendi))

(defun config/theme-standard-light ()
  "Função que define o tema standard light."
  (config/theme-macro standard-themes 'standard-light))

(defun config/theme-standard-light-tinted ()
  "Função que define o tema standard light tinted."
  (config/theme-macro standard-themes 'standard-light-tinted))

(defun config/theme-standard-dark ()
  "Função que define o tema standard dark."
  (config/theme-macro standard-themes 'standard-dark))

(defun config/theme-standard-dark-tinted ()
  "Função que define o tema standard dark tinted."
  (config/theme-macro standard-themes 'standard-dark-tinted))

(defun config/theme-rebecca ()
  "Função que define o tema rebecca."
  (config/theme-macro rebecca-theme 'rebecca))

(provide 'set-theme)

;;; set-theme.el ends here
