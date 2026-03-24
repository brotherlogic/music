#!/bin/zsh

export GOPATH=/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

go install github.com/brotherlogic/recordgetter/recordgetter_cli@latest
go install github.com/brotherlogic/recordcleaner/recordcleaner_cli@latest
go install github.com/brotherlogic/recordfanout/recordfanout_cli@latest
go install github.com/brotherlogic/gramophile/gram@latest
go install github.com/brotherlogic/recordcollection/recordcollection_cli@latest
go install github.com/brotherlogic/cdprocessor/cdprocessor_cli@latest
go install github.com/brotherlogic/queue/queue_cli@latest

# Account for Ghostty
tic -x ghostty.terminfo

# Install tmux and emacs
sudo apt-get update && sudo apt-get install -y tmux emacs

# Install gh dash
gh extension install dlvhdr/gh-dash

# Configure tmux to start on login with two vertical panes
echo 'if [ -z "$TMUX" ]; then' >> ~/.zshrc
echo '    tmux attach || tmux new-session \; split-window -h \; select-pane -t 0' >> ~/.zshrc
echo 'fi' >> ~/.zshrc
