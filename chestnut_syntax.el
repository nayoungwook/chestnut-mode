;; Chsetnut-highlights mode

(setq chestnut-font-lock-keywords
	  (let* (
			 (x-keywords '("if" "else" "for" "while" "break"
						   "continue" "return"
						   "this" "func" "var" "new" "class" "import"
						   "private" "public" "protected" "true" "false"
						   "extends" "constructor" "static" "scene" "null" "object"
						   ))
			 (x-types '("number" "string" "character" "bool" "void"
						"float" "int" "double"))
			 
             (x-keywords-regexp (regexp-opt x-keywords 'words))
             (x-types-regexp (regexp-opt x-types 'words))
             )
        `(
          (,x-types-regexp . 'font-lock-type-face)
          (,x-keywords-regexp . 'font-lock-keyword-face)
		  )
		)
	  )

(define-derived-mode chestnut-mode c-mode "chestnut mode"

  (setq font-lock-defaults '((chestnut-font-lock-keywords))))

(provide 'chestnut-mode)
