;; Nice color theme from live-coding-emacs.
(add-lib-path "color-theme")
(require 'color-theme)
(load "blackbored")
(color-theme-blackbored)
(global-hl-line-mode 1)
(set-face-background hl-line-face "#333333")
(set-cursor-color "yellow")
