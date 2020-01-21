;;; joker-theme.el --- A minimal theme for Emacs in terminal

;; Copyright (C) 2020 Shi Tianshu

;; Author: Shi Tianshu<doglooksgood@gmail.com>
;; URL: http://github.com/DogLooksGood/joker-theme
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://W.gnu.org/licenses/>.

;;; Commentary:

;; A minimal theme for Emacs in terminal.

;;; Code:

(deftheme joker "A minimal theme for Emacs in terminal.")

(custom-theme-set-faces
 'joker
 '(default                        ((t (:foreground "#a8a8a8"))))
 '(mc/cursor-face                 ((t (:background "#949494" :foreground "black"))))
 '(region                         ((t (:background "#00AF5F" :foreground "black"))))
 '(hl-line                        ((t (:background "black"))))
 '(show-paren-match               ((t (:background "#00D787" :foreground "black"))))
 '(company-tooltip-common         ((t (:foreground "#D7005F"))))
 '(company-tooltip-common-selection ((t (:foreground "black"))))
 '(company-tooltip                ((t (:background "black"))))
 '(company-tooltip-selection      ((t (:background "#D7AF00" :foreground "black"))))
 '(company-scrollbar-bg           ((t (:background "#303030"))))
 '(company-scrollbar-fg           ((t (:background "#4E4E4E"))))
 '(font-lock-comment-face         ((t (:foreground "#00AFAF"))))
 '(font-lock-string-face          ((t (:foreground "#D7005F"))))
 '(font-lock-doc-face             ((t (:foreground "#00AFAF"))))
 '(font-lock-builtin-face         ((t ())))
 '(font-lock-type-face            ((t ())))
 '(font-lock-variable-name-face   ((t ())))
 '(font-lock-keyword-face         ((t ())))
 '(font-lock-constant-face        ((t (:foreground "#D7AF00"))))
 '(font-lock-function-name-face   ((t (:foreground "#00AFD7"))))
 '(m4d-insert-indicator           ((t (:foreground "#D7AF00"))))
 '(m4d-visual-indicator           ((t (:foreground "#00D787"))))
 '(cider-result-overlay-face      ((t (:background "#000087"))))
 '(mode-line                      ((t ())))
 '(clojure-character-face         ((t (:inherit font-lock-constant-face))))
 '(highlight                      ((t (:background "#00AFAF" :foreground "black"))))
 '(isearch                        ((t (:background "#00D75F" :foreground "black"))))
 '(isearch-fail                   ((t (:backgronud "#D75FFF" :foreground "black"))))
 '(popup-isearch-match            ((t (:background "#D7AF00" :foreground "black"))))
 '(ivy-highlight-face             ((t (:backgronud "#00AFFF" :foreground "black"))))
 '(ivy-yanked-word                ((t (:background "yellow" :foreground "black"))))
 '(ivy-remote                     ((t ())))
 '(vertical-border                ((t (:background nil :foreground "black"))))
 '(counsel-outline-default        ((t ())))
 '(completions-common-part        ((t ())))
 '(minibuffer-prompt              ((t ())))
 '(lazy-highlight                 ((t (:foreground "white"))))
 '(magit-diff-file-heading-highlight ((t (:background "#000087"))))
 '(magit-section-highlight           ((t (:background "#000087"))))
 '(swiper-background-match-face-1 ((t (:background "#00D75F" :foreground "black"))))
 '(swiper-background-match-face-2 ((t (:background "#00D75F" :foreground "black"))))
 '(swiper-background-match-face-3 ((t (:background "#00D75F" :foreground "black"))))
 '(swiper-background-match-face-4 ((t (:background "#00D75F" :foreground "black"))))
 '(solaire-default-face           ((t (:background "#262626"))))
 '(swiper-match-face-1            ((t (:foreground "white"))))
 '(swiper-match-face-2            ((t (:foreground "white"))))
 '(swiper-match-face-3            ((t (:foreground "white"))))
 '(swiper-match-face-4            ((t (:foreground "white"))))
 '(ivy-current-match              ((t (:background "#D7AF00" :foreground "black"))))
 '(ivy-minibuffer-match-highlight ((t (:foreground "#00D7D7"))))
 '(ivy-minibuffer-match-face-1    ((t (:foreground "#9E9E9E"))))
 '(ivy-minibuffer-match-face-2    ((t (:foreground "#D7005F"))))
 '(ivy-minibuffer-match-face-3    ((t (:foreground "#D7AF00"))))
 '(ivy-minibuffer-match-face-4    ((t (:foreground "#00FFD7"))))
 '(yas-field-highlight-face       ((t (:background "#00D787" :foreground "black")))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'joker)

;;; joker-theme.el ends here
