;;; set-php-mode.el --- Função que configura o php-mode -*- lexical-binding: t; -*-

;;; Commentary:
;; Configura o php-mode

;;; Code:

(defun config/set-php-mode ()
  "Configura o php-mode."
  (use-package php-mode
    :ensure t
    :mode ("\\.php\\'" . php-mode)
    :config
    (progn
      (add-hook 'php-mode-hook
		(lambda ()
		  (setq left-fringe-width 16)
		  (setq right-fringe-width 16)
		  (set-window-buffer nil (current-buffer)))))))

(provide 'set-php-mode)

;;; set-php-mode.el ends here
