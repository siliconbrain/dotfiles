# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/siliconbrain/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-history
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# # # # # # # # # # # # # # # # # # # # # # # # # #
# Personal config
# | Rebind some keys
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
#   | for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# | Prompt config
#   | load and init prompt
autoload -U promptinit
promptinit
autoload -U colors && colors
#   | customize default prompt
PS1="%{$fg[green]%}%# %{$reset_color%}"
RPS1="%{$fg[green]%}%~%{$reset_color%}"
#   | customize waiting prompt
PS2="%{$fg[red]%}%_> %{$reset_color%}"
# | personal aliases
alias ls="ls --color=auto"
alias cd..="cd .."
# | add directories to PATH
for dir in "/opt/bin" "$HOME/.cabal/bin"
do
	if [ -d "$dir" ] && [ ! -L "$dir" ]; then
		PATH="$PATH:$dir"
	fi
done
export PATH
# END OF Personal config
