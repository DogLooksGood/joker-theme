;;; joker-theme.el --- A minimal dark theme
;;; -*- lexical-binding: t -*-

;; Author: Shi Tianshu
;; Keywords: theme
;; Package-Requires: ((emacs "28.0.50"))
;; Version: 1.0.2

;;
;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.


;;; Commentary:

;;; This is a minimal dark theme.

;;; Code:

(deftheme joker "A minimal dark theme.")

(defvar joker-use-italic t
  "Non-nil means use italic for comment and docstring.")

(defvar joker-header-scales '(2.2 1.8 1.6 1.4 1.2 1.2 1.2)
  "Scales for headers.")

(let ((fg "#AFAFAF")
      (fg+1 "#CCCCCC")
      (fg-1 "#909090")
      (bg "#171717")
      (bg-1 "#131313")
      (bg+1 "#242424")
      (bg+2 "#303030")
      (bg+3 "#404040")
      (bg+4 "#505050")
      (white "#E0E0E0")
      (italic joker-use-italic)
      (yellow "#CFA300")
      (red "#E24C49")
      (blue "#00AAAA")
      (green "#2BEF93")
      (purple "#b762de")
      (orange "#FC9F4E")
      (region "#173525")
      (region2 "#350035"))
  (custom-theme-set-faces
   `joker
   ;; We don't specify default foreground/background in TTY.
   `(default                        ((((type tty)))
                                     (((type graphic))
                                      :background ,bg
                                      :foreground ,fg)))
   ;; Basics

   `(cursor                         ((t (:background ,white))))
   `(region                         ((t (:background ,region))))
   `(hl-line                        ((((type graphic)) :background ,bg+1)
                                     (((type tty)))))
   `(fringe                         ((t (:background ,bg+2))))
   `(window-divider                 ((t (:foreground ,bg+4))))
   `(show-paren-match               ((t (:box (:color ,green :line-width (-1 . -1))))))
   `(highlight                      ((t (:underline ,green))))
   `(button                         ((t (:foreground "#2299CC" :underline t))))
   '(vertical-border                ((t (:inherit default))))
   '(window-divider                 ((t ())))
   `(line-number                    ((t (:foreground ,bg+3 :inherit default))))
   `(line-number-current-line       ((((type tty)) :foreground ,yellow)
                                     (((type graphic)) :inherit default :foreground ,yellow :background ,bg+1)))
   `(parenthesis                    ((t (:foreground ,fg-1))))
   `(completions-common-part        ((t ())))
   `(minibuffer-prompt              ((t ())))
   `(lazy-highlight                 ((t (:foreground "white"))))
   `(compilation-info               ((t (:inherit font-lock-function-name-face))))
   `(match                          ((t (:inherit font-lock-doc-face))))


   ;; ISearch
   `(isearch                        ((t (:background ,green :foreground "black"))))
   `(isearch-fail                   ((t (:backgronud ,red :foreground "black"))))

   ;; Font Locks
   `(font-lock-comment-face         ((t (:foreground ,blue :italic ,italic))))
   `(font-lock-comment-delimiter-face         ((t (:foreground ,blue :italic ,italic))))
   `(font-lock-string-face          ((t (:foreground ,red))))
   `(font-lock-doc-face             ((t (:foreground ,blue :italic ,italic))))
   `(font-lock-builtin-face         ((t ())))
   `(font-lock-type-face            ((t ())))
   `(font-lock-variable-name-face   ((t ())))
   `(font-lock-keyword-face         ((t (:foreground ,yellow))))
   `(font-lock-constant-face        ((t (:foreground ,purple))))
   `(font-lock-function-name-face   ((t (:bold t))))
   `(font-lock-warning-face         ((t (:foreground ,orange))))
   `(font-lock-preprocessor-face    ((t (:inherit font-lock-constant-face))))

   ;; IMenu
   '(imenu-list-entry-face-0          ((t ())))
   '(imenu-list-entry-subalist-face-0 ((t (:bold t))))

   ;; Mode Line
   `(mode-line                      ((t (:background ,bg-1))))
   `(mode-line-inactive             ((t (:background ,bg+1))))


   ;; Yascroll
   `(yascroll:thumb-fringe          ((t (:background ,bg+2 :foreground ,bg+2))))
   `(yascroll:thumb-text-area       ((t (:background ,bg+2 :foreground ,bg+2))))

   ;; Company
   `(company-tooltip-common         ((t (:bold t))))
   `(company-tooltip-common-selection ((t (:bold t))))
   `(company-tooltip                ((t (:background ,bg+2))))
   `(company-tooltip-selection      ((t (:inverse-video t))))
   `(company-tooltip-annotation     ((t (:foreground ,blue))))
   `(company-scrollbar-bg           ((t (:background ,bg+2 :height 0.3))))
   `(company-scrollbar-fg           ((t (:background ,bg+4 :height 0.3))))
   `(company-template-field         ((t (:inherit yas-field-highlight-face))))

   ;; Yasnippet
   `(yas-field-highlight-face       ((t (:background ,region2))))

   ;; Meow
   `(meow-keypad-indicator          ((t (:foreground "black" :background ,red))))
   `(meow-insert-indicator          ((t (:foreground "black" :background ,green))))
   `(meow-normal-indicator          ((t (:foreground "black" :background ,yellow))))
   `(meow-motion-indicator          ((t (:foreground "black" :background ,blue))))
   '(meow-keypad-cursor             ((t ())))
   '(meow-insert-cursor             ((t ())))
   '(meow-normal-cursor             ((t ())))
   '(meow-motion-cursor             ((t ())))
   `(meow-grab                      ((t (:background ,region2))))

   ;; Cider
   ;;
   `(cider-result-overlay-face      ((t (:background "black"))))

   ;; Clojure
   ;;
   `(clojure-character-face         ((t (:inherit ,purple))))

   ;; Ivy
   `(ivy-highlight-face             ((t ())))
   `(ivy-yanked-word                ((t (:background "yellow" :foreground "black"))))
   `(ivy-remote                     ((t ())))
   `(ivy-current-match              ((t (:inverse-video t))))
   `(ivy-minibuffer-match-highlight ((t ())))
   `(ivy-minibuffer-match-face-1    ((t ())))
   `(ivy-minibuffer-match-face-2    ((t ())))
   `(ivy-minibuffer-match-face-3    ((t ())))
   `(ivy-minibuffer-match-face-4    ((t ())))
   `(counsel-outline-default        ((t ())))
   `(swiper-background-match-face-1 ((t (:inherit hl-line))))
   `(swiper-background-match-face-2 ((t (:inherit hl-line))))
   `(swiper-background-match-face-3 ((t (:inherit hl-line))))
   `(swiper-background-match-face-4 ((t (:inherit hl-line))))
   `(swiper-match-face-1            ((t (:foreground "white"))))
   `(swiper-match-face-2            ((t (:foreground "white"))))
   `(swiper-match-face-3            ((t (:foreground "white"))))
   `(swiper-match-face-4            ((t (:foreground "white"))))

   ;; Magit
   `(magit-diff-file-heading-highlight ((t (:background ,bg+1))))
   `(magit-section-highlight           ((t (:background ,bg+1))))
   `(magit-diff-removed             ((t (:inherit font-lock-string-face))))
   `(magit-diff-added               ((t (:inherit font-lock-comment-face))))
   `(magit-diff-removed-highlight   ((t (:inherit font-lock-string-face :background ,bg+2))))
   `(magit-diff-added-highlight     ((t (:inherit font-lock-comment-face :background ,bg+2))))
   `(magit-diff-highlight           ((t (:background ,bg+1))))
   `(magit-diff-context-highlight   ((t (:background ,bg+1))))

   ;; SMerge
   `(smerge-refined-added           ((t (:background "#253325"))))
   `(smerge-lower                   ((t (:background "#173017"))))

   ;; Diff-hl
   `(diff-hl-insert                 ((t (:foreground ,green))))
   `(diff-hl-change                 ((t (:foreground ,blue))))
   `(diff-hl-delete                 ((t (:foreground ,red))))

   ;; Term
   `(term-color-blue                ((t (:foreground ,blue :background ,blue))))
   `(term-color-green               ((t (:foreground ,green :background ,green))))
   `(term-color-red                 ((t (:foreground ,red :background ,red))))

   ;; Popup
   `(popup-tip-face                 ((t (:background ,bg+4 :foreground ,fg))))
   `(popup-isearch-match            ((t (:background "#CFA300" :foreground "black"))))

   `(tooltip                        ((t ())))
   '(dired-directory                ((t (:inherit ,yellow))))
   '(web-mode-html-attr-name-face   ((t ())))
   '(web-mode-html-tag-face         ((t ())))

   ;; Emacs Rime
   `(rime-preedit-face              ((t (:underline ,blue :background ,bg+2))))
   `(rime-cursor-face               ((t (:inherit font-lock-constant-face))))
   `(rime-indicator-face            ((t (:foreground ,purple))))
   `(rime-indicator-dim-face        ((t (:foreground ,bg+4))))

   ;; Web Mode
   '(web-mode-function-call-face    ((t ())))
   '(web-mode-function-name-face    ((t ())))
   '(web-mode-html-tag-bracket-face ((t (:inherit parenthesis))))
   '(web-mode-symbol-face           ((t (:inherit ,purple))))
   '(css-selector                   ((t (:inherit ,purple))))

   ;; Markdown
   `(markdown-header-face-1         ((t (:bold t :height ,(nth 0 joker-header-scales)))))
   `(markdown-header-face-2         ((t (:bold t :height ,(nth 1 joker-header-scales)))))
   `(markdown-header-face-3         ((t (:bold t :height ,(nth 2 joker-header-scales)))))
   `(markdown-header-face-4         ((t (:bold t :height ,(nth 3 joker-header-scales)))))
   `(markdown-header-face-5         ((t (:bold t :height ,(nth 4 joker-header-scales)))))
   `(markdown-header-face-6         ((t (:bold t :height ,(nth 5 joker-header-scales)))))
   `(markdown-header-face-7         ((t (:bold t :height ,(nth 6 joker-header-scales)))))

   ;; Telega
   '(telega-entity-type-code        ((t (:inherit font-lock-string-face))))
   `(telega-msg-heading             ((t (:inherit hl-line))))
   `(telega-unmuted-count           ((t (:inherit font-lock-function-name-face))))

   ;; Org-mode
   `(org-table                      ((t (:foreground ,fg+1))))
   `(org-level-1                    ((t (:bold t :height ,(nth 0 joker-header-scales)))))
   `(org-level-2                    ((t (:bold t :height ,(nth 1 joker-header-scales)))))
   `(org-level-3                    ((t (:bold t :height ,(nth 2 joker-header-scales)))))
   `(org-level-4                    ((t (:bold t :height ,(nth 3 joker-header-scales)))))
   `(org-level-5                    ((t (:bold t :height ,(nth 4 joker-header-scales)))))
   `(org-level-6                    ((t (:bold t :height ,(nth 5 joker-header-scales)))))
   `(org-level-7                    ((t (:bold t :height ,(nth 6 joker-header-scales)))))
   `(org-document-title             ((t (:inherit font-lock-string-face))))
   `(org-code                       ((t (:inherit font-lock-constant-face))))

   ;; Treemacs
   `(treemacs-root-face             ((t (:inherit font-lock-function-name-face :height 1.4 :underline t))))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'joker)

;;; joker-theme.el ends here
