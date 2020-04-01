#!/bin/sh
test -f ~/.Xresources && {
	mv ~/.Xresources ~/.Xresources.local
}
test -L ~/.Xresources || {
	ln -s "$DOTFILES"/term/Xresources ~/.Xresources
}

test -f ~/.xinitrc && {
	mv ~/.xinitrc ~/.xinitrc.local
}
test -L ~/.xinitrc || {
	ln -s "$DOTFILES"/term/xinitrc ~/.xinitrc
}
