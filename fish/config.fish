# Init PATH
set -x PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin

# Node
set -x PATH $PATH ~/.nodebrew/current/bin

set -x LANG "ja_JP.UTF-8"

# Fish

set -x fish_greeting ""

# Dart
set -x PATH $PATH ~/.pub-cache/bin

# Flutter

set -x PATH $PATH ~/flutter/bin

# Git

function commit_empty 
  git commit --allow-empty -m "NOPR: squash me [ci skip]"
end

function gitco
  set argv $argv "-"
  git checkout $argv[1]
end

function hp
  history | peco
end

echo "config.fish is loaded."
