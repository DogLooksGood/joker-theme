# Joker Theme

> A simple dark theme for coding in the midnight.

## Installation

Add `joker-theme.el` to your `load-theme`, then enable `joker` theme.

## Tips

If you using a WM and have a nice border color, you may want to set `joker-theme-main-color` to that color.

You may want to disable fringe in minibuffer

```emacs-lisp
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (set-window-fringes
             (minibuffer-window frame) 0 0 nil t)))
```

## screenshot

![screenshot](https://user-images.githubusercontent.com/11796018/106364491-60675500-636a-11eb-8e90-1a99ef765b7e.png)
