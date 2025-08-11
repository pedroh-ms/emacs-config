;;; set-daemon.el --- Função que configura o daemon -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(add-to-list 'load-path "../visual")

(require 'set-theme)

(defun config/set-daemon ()
  "Configura o daemon."
  (if (daemonp)
      (add-hook 'after-make-frame-functions
      (lambda (frame)
        (with-selected-frame frame
	  (progn
	    (config/theme)))))
  (progn
    (config/theme))))

(provide 'set-daemon)

;;; set-daemon.el ends here
