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
go install github.com/brotherlogic/recordsorganiser/recordsorganiser_cli@latest

# Account for Ghostty
tic -x ghostty.terminfo

# Install tmux and emacs
sudo apt-get update && sudo apt-get install -y tmux emacs

# Install gh dash
gh extension install dlvhdr/gh-dash

TMUX_BLOCK=$(cat << 'EOF'
if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
  cd /workspaces/music
  /workspaces/music/start-tmux.sh && tmux attach-session -t music
fi
EOF
)

grep -q "tmux attach-session" ~/.zshrc || echo "$TMUX_BLOCK" >> ~/.zshrc
grep -q "tmux attach-session" ~/.bashrc || echo "$TMUX_BLOCK" >> ~/.bashrc

# Ensure the session is created
/workspaces/music/start-tmux.sh
