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

