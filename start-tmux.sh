#!/bin/bash

# Ensure the 'music' session exists
if ! tmux has-session -t music 2>/dev/null; then
  # Create a new session named 'music', detached
  cd /workspaces/music
  tmux new-session -d -s music
 fi
