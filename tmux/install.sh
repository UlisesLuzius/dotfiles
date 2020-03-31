#!/bin/sh
test -L ~/.tmux.conf || {
	mv ~/.tmux.conf ~/.tmux.conf.local
	ln -s "$DOTFILES"/tmux/tmux.conf ~/.tmux.conf
}
test -f ~/.tmux.conf || touch ~/.tmux.conf.local
