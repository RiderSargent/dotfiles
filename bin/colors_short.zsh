#! /usr/local/bin/zsh

# for code in {000..255}; do print -P -- "$code: %F{$code}Test%f"; done
for code in {000..020}; do print -P -- "$code: %F{$code}Test%f"; done
