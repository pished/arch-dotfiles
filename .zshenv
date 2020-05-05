export BROWSER='chromium'
export SHELL='/bin/zsh'
export EDITOR='nvim'
export VISUAL='nvim'
export GOPATH=${HOME}/go

typeset -U PATH path # dont append to path if it already exists
path=(
  /usr/{bin,sbin}
  /usr/local/{bin,sbin}
  ${HOME}/bin
  ${GOPATH}/bin
  ${HOME}/.node_modules/bin
)
export PATH


