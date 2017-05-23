;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    .emacs                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: lalves <lalves@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/12/08 10:54:45 by lalves            #+#    #+#              ;
;    Updated: 2016/03/09 17:52:59 by lalves           ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


; =========================================================== ;
;		                 SETTINGS							  ;
; =========================================================== ;



; Load General Features Files.
(setq config_files "/usr/share/emacs/site-lisp/")
(setq load-path (append (list nil config_files) load-path))

(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")


; Set Encoding System.
(set-language-environment "UTF-8")


; Set C Basic Indentation.
(setq-default c-default-style "linux"
			  c-basic-offset 4
			  tab-width 4
			  indent-tabs-mode t
			  tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 64 68
							  72 76 80 84 88 92 96 100 104 108 112 116 120))


; Set Backups Files Directory.
(setq-default backup-directory-alist (quote (("" . "~/.emacs.d/backups"))))


; No More #Files.
(setq auto-save-default nil)


; Highlight Me These Hiden Spaces.
(setq-default show-trailing-whitespace t)
(add-hook 'c-mode-common-hook
          '(lambda () (highlight-regexp "  " 'trailing-whitespace)))


; Show Me Current Line / Column.
(setq-default line-number-mode t)
(setq-default column-number-mode t)


; Backspace Can Now Remove Tabs.
(setq-default c-backspace-function 'backward-delete-char)


; Show Me What's Inside You.
(show-paren-mode 1)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match "#464646")


; Time Is Money.
(setq display-time-day-and-date t
      display-time-24hr-format t)
      (display-time)


; Show Me That Line.
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333")


; Let This Cursor.
(blink-cursor-mode -1)


; =========================================================== ;
;	      		         ALIASES   							  ;
; =========================================================== ;


; Insert {}
(defun insert-accolades ()
    (interactive)
    (insert "{")
	(c-indent-line)
	(insert "\n\n}")
	(c-indent-line)
    (previous-line 1))
(global-set-key "{"  'insert-accolades)
(add-hook 'c-mode-common-hook (lambda () (local-set-key "{"  'insert-accolades)))


; Insert ()
(defun insert-parentheses ()
    (interactive)
    (insert "()")
    (backward-char 1))
(global-set-key "("  'insert-parentheses)
(add-hook 'c-mode-common-hook (lambda () (local-set-key "("  'insert-parentheses)))


; Insert []
(defun insert-crochets ()
    (interactive)
    (insert "[]")
    (backward-char 1))
(global-set-key "["  'insert-crochets)
(add-hook 'c-mode-common-hook (lambda () (local-set-key "["  'insert-crochets)))


; Insert ""
(defun insert-double-cote ()
    (interactive)
    (insert "\"\"")
    (backward-char 1))
(global-set-key "\""  'insert-double-cote)
(add-hook 'c-mode-common-hook (lambda () (local-set-key "\""  'insert-double-cote)))


; Insert ''
(defun insert-simple-cote ()
    (interactive)
    (insert "''")
    (backward-char 1))
(global-set-key "'"  'insert-simple-cote)
(add-hook 'c-mode-common-hook (lambda () (local-set-key "'"  'insert-simple-cote)))


; Give Me Back My Numpad
(global-set-key (kbd "<kp-divide>") "/")
(define-key key-translation-map [kp-0] [?0])
(define-key key-translation-map [kp-1] [?1])
(define-key key-translation-map [kp-2] [?2])
(define-key key-translation-map [kp-3] [?3])
(define-key key-translation-map [kp-4] [?4])
(define-key key-translation-map [kp-5] [?5])
(define-key key-translation-map [kp-6] [?6])
(define-key key-translation-map [kp-7] [?7])
(define-key key-translation-map [kp-8] [?8])
(define-key key-translation-map [kp-9] [?9])
(define-key key-translation-map [kp-enter] [13])
(define-key key-translation-map [kp-add] [?+])
(define-key key-translation-map [kp-subtract] [?-])
(define-key key-translation-map [kp-multiply] [?*])
(define-key key-translation-map [M-O X] [?=])
(global-set-key (kbd "M-O X") "=")
(global-set-key (kbd "M-O n") ".")


; =========================================================== ;
;			             SHORTCUTS							  ;
; =========================================================== ;

; C-a / C-e - Debut / Fin de ligne

; C-Space - Pose la marque

; C-u C-Space - Retire la marque pour revenir a la precedente

; C-w - Coppier marque -> curseur

; C-y - Coller

; C-k - Kill la ligne

; C-s - Recherche

; C-g - Sortir

; C-x u - Undo

; C-c C-h - Header

; C-x C-s - Sauvegarde

; C-x C-c - Quitter



;******************************************************************************;
;				                 MADE BY LALVES		  						   ;
;			             @COPYRIGHT ALL RIGHTS RESERVED 		   			   ;
;******************************************************************************;