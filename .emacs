;; Red Hat Linux default .emacs initialization file

;; Are we running XEmacs or Emacs?
(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))

;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;; Turn on font-lock mode for Emacs
(cond ((not running-xemacs)
       (global-font-lock-mode t)
))

;; Visual feedback on selections
(setq-default transient-mark-mode t)

;; Always end a file with a newline
(setq require-final-newline t)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; Enable wheelmouse support by default
(cond (window-system
       (mwheel-install)
))

(setq load-path
      (append
       (list
	(expand-file-name "~/elisp/")
	)
       load-path))

(add-to-list 'load-path "~/.emacs.d/lisp/")
;(add-to-list 'load-path "~/.emacs.d/lisp/skk/")
(add-to-list 'load-path "~/.emacs.d/lisp/skk/")
(add-to-list 'load-path "~/.emacs.d/skk/")
(add-to-list 'load-path "~/.emacs.d/lisp/info/")
(add-to-list 'load-path "~/.emacs.d/lisp/share/")
(add-to-list 'load-path "~/.emacs.d/lisp/etc/")

(add-to-list 'load-path "~/bin/emacs-w3m/")
(add-to-list 'load-path "~/.emacs.d/plugins/")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (let ((default-directory (expand-file-name "~/.emacs.d/lisp/"))) ;;
;;  (add-to-list 'load-path default-directory)			    ;;
;;  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)	    ;;
;;      (normal-top-level-add-subdirs-to-load-path)))		    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(setq load-path (cons "~/elisp " load-path))

;; comment ha hako gata
(setq comment-style 'box)
;; jidou hokann
(require 'auto-complete)
(global-auto-complete-mode t)

;; I love ruby 
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)

(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
				     interpreter-mode-alist))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook		
	  '(lambda () (inf-ruby-keys)))

;; ess 
(setq load-path (cons "~/elisp/ess-5.4/lisp" load-path))

(require 'ess-site)

;; elisp no install
(require 'install-elisp)

(setq install-elisp-repository-directory "~/elisp/") 

;; elsip no jidou install
(require 'auto-install)

(setq auto-install-directory "~/elisp/")

(auto-install-update-emacswiki-package-name t)

(auto-install-compatibility-setup)

;; anything
(require 'anything)						

;; anything のキーバインド
(define-key global-map "\C-l" 'anything ) ;;
								
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'anything-config)						   ;;
(setq anything-sources 						   ;;
      (list  anything-c-source-buffers					   ;;
	    anything-c-source-buffers					   ;;
	    anything-c-source-recentf					   ;;
	    anything-c-source-man-pages					   ;;
	    anything-c-source-emacs-commands				   ;;
	    anything-c-source-emacs-functions				   ;;
	    anything-c-source-files-in-current-dir				   ;;
	    )) 								   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(require 'w3m-load)

(put 'downcase-region 'disabled nil)
;; iro now
(global-hl-line-mode 1)
;; iro back
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (set-face-background 'hl-line "darkolivegreen") ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-face-background 'hl-line "darkgreen") ;;
;; iro back
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (set-background-color "darkgreen") ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-background-color "black")
(set-foreground-color "white")
;; rireki
(savehist-mode 1)
;; iti
(setq-default savehist-place t)
(require 'saveplace)
;; kakko
(show-paren-mode 1)
;; gyou to keta 
(line-number-mode t)
(column-number-mode t)
;; tool bar & scrole bar ha iruno ?
(tool-bar-mode -1)
;;(scroll-bar-mode -1) 2016-08-17
;; is " ctr x + o " useful ?
(setq windmove-wrap-around t)
(windmove-default-keybindings)
;; hako gata sentaku
(require 'sense-region)
(sense-region-on)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")

;;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")
;;(require 'yasnippet)
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq yas/prompt-functions '(yas/dropdown-prompt)) ;;
;; 						      ;;
;; 						      ;;
;; (require 'yasnippet)				      ;;
;; (yas/initialize )				      ;;
;; (yas/setup "~/.emacs.d/plugins/yasnippet-0.6.1c")  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'grep-edit)

(require 'grep-a-lot)
(grep-a-lot-setup-keys)

;;;;;;;;;;
;; memo ;;
;;;;;;;;;;
( defun memo ()
  (interactive)
  (add-change-log-entry
   nil
   (expand-file-name "~/.memo/diary.txt")))
;(define-key global-map "\C-m" 'memo )

(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

(add-hook 'c-mode-common-kock (lambda () (flymake-mode t)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'point-undo)			      ;;
;; (define-key global-map (kbd "<f7>") 'point-undo)   ;;
;; (define-key global-map (kbd "S-<f7>") 'point-redo) ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'skk-autoloads)
(global-set-key "\C-x\C-j" 'skk-mode)
(global-set-key "\C-xj" 'skk-mode)
(global-set-key "\C-xt" 'skk-tutorial)

;(iswitchb-mode 1)
;(setq read-buffer-function 'iswitchb-read-buffer)

(autoload 'f90-mode "f90" "major mode for FORTRAN(>=90)" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(f90\\|F90\\|f95\\|F95\\|g90\\|g95\\)$" . f90-mode))

(when (require 'skk nil t)
  (global-set-key (kbd "C-x j") 'skk-auto-fill-mode) ;;良い感じに改行を自動入力してくれる機能
  (setq default-input-method "japanese-skk")         ;;emacs上での日本語入力にskkをつかう
  (require 'skk-study))

(setq skk-tut-file "~/.emacs.d/share/skk/SKK.tut")


;(require 'hatena-diary)
;(require 'hatena-markup-mode)
;(setq hatena:d:major-mode 'hatena-markup-mode)

;(add-to-list 'load-path "~/.emacs.d/hatena-diary")
;(require 'hatena-diary-mode)
;(setq hatena-usrid "fromambertozen")
;(setq hatena-twitter-flag t)

;;;;;;;;;;
;; memo ;;
;;;;;;;;;;
( defun note ()
  (interactive)
  (add-change-log-entry
   nil
   (expand-file-name "~/Dropbox/.memo/note.txt")))

