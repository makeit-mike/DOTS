;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; You do not need to run 'doom sync' after modifying this file

(setq user-full-name "MIKE"
      user-mail-address "makeit-mike")

(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; 
(setq cider-jack-in-default 'lein)

;; Shows a ruler on the 80th character
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(setq org-directory "~/org/")

