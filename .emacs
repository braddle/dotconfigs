;; File:   .emacs
;; Author: Mark Bradley

;; Global Setting
;; --------------

;; Ensure the correct font lock mode is used.
(add-to-list 'load-path "~/elisp")

(require 'php-mode)

;; Pre-save hooks
;; (add-hook 'before-save-hook "delete-trailing-whitespace")

;; Ensure the correct font lock mode is used.
(global-font-lock-mode 1)

(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)

(global-set-key "\M-g" 'goto-line)
;(global-set-key "\C-\M-<" 'beginning-of-buffer)
;(global-set-key "\C-\M->" 'end-of-buffer)

;; Visual feedback on selections
(setq-default transient-mark-mode t)

show-paren-mode(show-paren-mode)

; menu is waste of space!
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

; Don't create a backup file                                                                                                                                                                                  
(setq make-backup-files nil)

; Show line-number in the mode line                                                                                                                                                                           
(line-number-mode 1)

; Show column-number in the mode line                                                                                                                                                                         
(column-number-mode 1)

;; PHP Mode
;; --------

(setq c-default-style "bsd"
      tab-width 4)

; Method insert function
(defun mbradley-insert-method ()
  "Insert a new method with complete author tag."
  (interactive)
  (indent-for-tab-command)
  (insert "/**")
  (newline)

  (insert "*")
  (indent-for-tab-command)
  (newline)

  (insert "* @author Mark Bradley<mark@mark-bradley.net>")
  (indent-for-tab-command)
  (newline)

  (insert "* @access public")
  (indent-for-tab-command)
  (newline)

  (insert "* @params ")
  (indent-for-tab-command)
  (newline)

  (insert "* @returns ")
  (indent-for-tab-command)
  (newline)

  (indent-for-tab-command)
  (insert "*/")
  (newline)

  (indent-for-tab-command)
  (insert "public function ()")
  (newline)

  (insert "{")
  (indent-for-tab-command)
  (newline)

  (insert "}")
  (indent-for-tab-command)
  (newline)

  (search-backward "(")
)

(defun mbradley-insert-class ()
  "Insert a new method with complete author tag."
  (interactive)
  
  (insert "<?php")
  (newline)
  (newline)

  (indent-for-tab-command)
  (insert "/**")
  (newline)

  (insert "*")
  (indent-for-tab-command)
  (newline)

  (insert "* @author Mark Bradley<mark@mark-bradley.net>")
  (indent-for-tab-command)
  (newline)

  (indent-for-tab-command)
  (insert "*/")
  (newline)

  (indent-for-tab-command)
  (insert "class")
  (newline)

  (insert "{")
  (indent-for-tab-command)
  (newline)

  (insert "}")
  (indent-for-tab-command)
  (newline)

  (search-backward "class")
)

;; Ctrl-Alt-? function setup
(global-set-key "\C-\M-m" 'mbradley-insert-method)
(global-set-key "\C-\M-c" 'mbradley-insert-class)
