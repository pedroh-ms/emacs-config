;;; set-ligature.el --- Função para definir a fonte -*- lexical-binding: t; -*-

;; Author: Pedro de Souza
;; Version: 1.0
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;; Usa o pacote ligature.el para definir as ligaduras

;;; Code:

(defun config/ligature ()
  "Define as ligaduras."
  (use-package ligature
    :ensure t
    :config
    (progn
      ;; Ativa em todos os modos de programação
      (ligature-set-ligatures
       'prog-mode
       '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
	 "==" "===" "!=" "!==" "=!=" "=:=" "=/=" "<=" ">="
	 "&&" "||" "!!" "??" "???" "::" ":::" ":=" "++" "+++"
         "--" "---" "->" "->>" "-<" "-<<" "<-" "<<-" "<->"
         "<--" "<==>" "<=>" "<=>>" "<<=" "<>" "<<<" ">>>"
         "<+>" "+++" "<*>" ":?>" "<|" "<|>" "|>" "||>" "|||"
         "<:" ":<" ":>" ">:" "<~" "<~~" "~~" "~~>" "~>" "=>"
         "==>" "=>>" ">>" ">>-" ">-" "->>" ">>=" ">>>" "<<<"
         "<=>" "<==>" "<=>>" "<~>" "<~~" "<$>" "<+>" "<*>"
         "</>" "<\\>" "<!>" "<@>" "<#>" "<%>" "<^>" "<&>"
         "<\">" "<'>" "<:>" "<~>" "<?>" "<.>" "<->"))
      (global-ligature-mode t)
      (add-hook 'vterm-mode-hook
		(lambda ()
		  (auto-composition-mode))))))

(provide 'set-ligature)

;;; set-ligature.el ends here
