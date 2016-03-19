;; TODO
;; [ ]  turn off input method RME in emacs, etc
;; [ ]  define evil key gb for buffer switch

;; appearance
(set-face-attribute 'default nil :height 240)
;; (set-face-attribute 'default nil :family "Consolas")
;; (set-face-attribute 'default nil :family "Lucida Sans Typewriter")
;; (set-face-attribute 'default nil :family "Monospace")
(set-face-attribute 'default nil :family "Monaco")
(set-frame-parameter nil 'fullscreen 'fullscreen)

;; behaviour
(setq preview-scale-function 1.2)
(setq diary-file "~/Documents/Writing/随笔/diary.org")

;; plugins
(require 'color-theme-modern nil t)
(require 'tab-group)
(require 'epa-file)
(require 'auctex-latexmk)
(auctex-latexmk-setup)
;; (latex-preview-pane-enable)

;; modes
(ido-mode t)
(display-time-mode t)
(line-number-mode t)  ;; show line number in mode line
;; (linum-mode t)
(global-relative-line-numbers-mode)
(evil-mode t) 
(setq evil-leader/leader ",") 
(global-evil-leader-mode t)

;; KEY 
(define-prefix-command 'unite-keymap) 
(define-key evil-normal-state-map "u" 'unite-keymap) 
(define-key unite-keymap "u" 'undo)
(define-key unite-keymap "f" 'find-file)
(define-key unite-keymap "r" 'recentf-open-files)
(define-key unite-keymap "b" 'ibuffer)
;; ibuffer mode use j k
(define-key ibuffer-mode-map "J"  'ibuffer-jump-to-buffer)
(define-key ibuffer-mode-map "j"  'ibuffer-forward-line)
(define-key ibuffer-mode-map "K"  'ibuffer-do-kill-lines)
(define-key ibuffer-mode-map "k"  'ibuffer-backward-line)
;; recentf-dialog mode use j k
(define-key recentf-dialog-mode-map "j" 'next-line) ;;  (lookup-key recentf-dialog-mode-map "n") => next-line
(define-key recentf-dialog-mode-map "k" 'previous-line) ;; (lookup-key recentf-dialog-mode-map "p") => previous-line
(define-key package-menu-mode-map "j" 'next-line) ;;  (lookup-key package-menu-mode-map "n") => next-line
(define-key package-menu-mode-map "k" 'previous-line) ;; (lookup-key package-menu-mode-map "p") => previous-line
;; magit
;; (define-key magit-mode-map "\C-j" 'magit-section-forward)
;; (define-key magit-mode-map "\C-k" 'magit-section-backward)) 
;; evil
(evil-leader/set-key "w" 'save-buffer)
(evil-leader/set-key "q" 'kill-this-buffer)


;; hooks
(add-hook 'matlab-mode-hook 'linum-mode)
(add-hook 'emacs-lisp-mode-hook 'linum-mode)

(provide 'myconfig)
