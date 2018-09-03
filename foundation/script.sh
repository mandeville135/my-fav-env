#!/bin/sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' )) \$ "
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-pip