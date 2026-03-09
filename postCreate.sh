#!/bin/zsh

export GOPATH=/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

go install github.com/brotherlogic/recordgetter/recordgetter_cli@latest
go install github.com/brotherlogic/recordcleaner/recordcleaner_cli@latest
go install github.com/brotherlogic/recordfanout/recordfanout_cli@latest
go install github.com/brotherlogic/gramophile/gram@latest
go install github.com/brotherlogic/recordcollection/recordcollection_cli@latest
go install github.com/brotherlogic/cdprocessor/cdprocessor_cli@latest

# Install Ghostty terminfo for correct terminal support via SSH
curl -s https://raw.githubusercontent.com/ghostty-org/ghostty/main/src/vt/terminfo/ghostty.info | tic -x -
