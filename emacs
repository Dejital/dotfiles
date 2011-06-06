;; Interface stuff {{{
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 240 :width normal :foundry "apple" :family "Menlo")))))
;; Interface stuff }}}

;; Disabling backup
(setq make-backup-files nil) ;; do not make backup files 


;;;;;;;;;;;;;;
;; org-mode ;;
;;;;;;;;;;;;;;

;; Associate *.org files with org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Key-mappings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cr" 'org-remember)

(setq org-directory "~/org")
(require 'remember)
(require 'org-remember)
