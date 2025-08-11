;;; set-dape.el --- Função que configura o dape-mode -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun config/set-dape ()
  "Configura o dape-mode."
  (use-package dape
    :ensure t
    :config
    (add-to-list 'dape-configs
		 `(php-xdebug
		   modes (php-mode)
		   command "node"
		   command-args ,(list (expand-file-name "~/.emacs.d/debug-adapters/php-debug/extension/out/phpDebug.js") "--server=9003")
		   :type "php"
		   :request "launch"
		   :hostname "192.168.0.102"
		   :port 9003
		   :workspaceFolder "c:/Users/Usuario/source/repos/php_logins"
		   :pathMappings (:/var/www/html "c:/Users/Usuario/source/repos/php_logins")))))


(provide 'set-dape)

;;; set-dape.el ends here
