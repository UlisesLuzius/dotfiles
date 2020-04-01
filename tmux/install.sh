#!/bin/sh
test -f ~/.tmux.conf && {
	mv ~/.tmux.conf ~/.tmux.conf.local
}
test -L ~/.tmux.conf || {
	ln -s "$DOTFILES"/tmux/tmux.conf ~/.tmux.conf
}
