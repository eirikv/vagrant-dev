#!/bin/bash

echo -e "\n**** Installing a sane global .gitconfig in the VM ****\n"
cat <<EOL >> ~/.gitconfig
[color]
  diff = auto
  status = auto
  branch = auto
  interactive = auto
  ui = auto
[gc]
  auto = 1
[merge]
  summary = true
[alias]
  co = checkout
  ci = commit -v
  st = status
  cp = cherry-pick -x
  rb = rebase
  pr = pull --rebase
  br = branch
  b = branch -v
  r = remote -v
  t = tag -l
  put = push origin HEAD
  unstage = reset HEAD
  uncommit = reset --soft HEAD^
  recommit = commit -C head --amend
  d = diff
  c = commit -v
  s = status
  dc = diff --cached
  pr = pull --rebase
  ar = add -A
EOL

echo -e "\n**** \n**** Installation is done!!\n**** \n"
