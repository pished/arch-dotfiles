export BROWSER='chromium'
export SHELL='/bin/zsh'
export EDITOR='nvim'
export VISUAL='nvim'
export GOPATH=${HOME}/go
export NVIM_CONFIG="~/.config/nvim/init.vim"
export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/nvidia_icd.json"
source "$HOME/.cargo/env"

export SPOTIFY_CLIENT_ID="875e022f32964ad896884d289b522914"
export SPOTIFY_CLIENT_SECRET="f04b87f1d287486e8bd5bdc4d10ea384"

export AWS_ACCESS_KEY_ID="AKIA4V2XLSZR3MGA6XQU"
export AWS_SECRET_ACCESS_KEY="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"

typeset -U PATH path # dont append to path if it already exists
path=(
  /usr/{bin,sbin}
  /usr/local/{bin,sbin}
  ${HOME}/.local/bin
  ${HOME}/bin
  ${GOPATH}/bin
  ${HOME}/.node_modules/bin
  ${HOME}/.dotnet/tools
)
export PATH
export npm_config_prefix=~/.node_modules
