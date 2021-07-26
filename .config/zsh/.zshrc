cowthink -f small $(fortune)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
bindkey -v
# The following lines were added by compinstall
zstyle :compinstall filename '/home/achilles/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
kitty + complete setup zsh | source /dev/stdin

# Function to source files if they exist
function zsh_add_file() {
    [ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}

# Who needs oh-my-zsh ?
function zsh_add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fi
}

# prompt
zsh_add_file "prompt.zsh"
# aliases
zsh_add_file "aliasrc"
# Exports
[ -f ~/.zshenv ] && source ~/.zshenv

# Plugins
zsh_add_plugin "zdharma/fast-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "zsh-users/zsh-history-substring-search"
zsh_add_plugin "jeffreytse/zsh-vi-mode"
# https://github.com/zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
#export ZVM_VI_SURROUND_BINDKEY=s-prefix # ??
#export ZVM_VI_INSERT_ESCAPE_BINDKEY=jk # ??

colored_man=~/.config/zsh/plugins/colored-man-pages.zsh
fzf_bindings=~/.config/zsh/plugins/fzf/key-bindings.zsh
fzf_completion=~/.config/zsh/plugins/fzf/completion.zsh
zsh_menu=~/.config/zsh/plugins/menu.zsh
[ -f $fzf_bindings ] && source $fzf_bindings
[ -f $fzf_completion ] && source $fzf_completion
[ -f $zsh_menu ] && source $zsh_menu
[ -f $colored_man ] && source $colored_man

#################################################################
# Alias								#
#################################################################
alias ls='ls --color=auto'
alias vim='nvim'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cbspwm='nvim ~/.config/bspwm/bspwmrc'
alias csxhkd='nvim ~/.config/sxhkd/sxhkdrc'

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
