;;; convert-vowels-to-ascii.el --- Função que transforma as vogais em ASCII -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun convert-vowels-to-ascii-region (start end)
  "Replace vowels in the selected region(START to END) with their ASCII values."
  (interactive "r") ;; 'r' gives start and end of the selected region
  (let* ((vowels '(?a ?e ?i ?o ?u ?A ?E ?I ?O ?U))
         (input (buffer-substring-no-properties start end))
         (result ""))
    ;; Process each character
    (dotimes (i (length input))
      (let ((char (aref input i)))
        (if (member char vowels)
            (setq result (concat result (number-to-string char)))
          (setq result (concat result (string char))))))
    ;; Replace region with result
    (delete-region start end)
    (insert result)))


(provide 'convert-vowels-to-ascii)

;;; convert-vowels-to-ascii.el ends here
