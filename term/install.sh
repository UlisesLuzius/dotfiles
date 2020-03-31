#!/bin/sh
test -L ~/.Xresources || {
	mv ~/.Xresources ~/.Xresources.local
	ln -s "$DOTFILES"/Xresources ~/.Xresources
}
test -f ~/.Xresources || touch ~/.Xresources.local
