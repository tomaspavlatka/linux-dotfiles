# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source ~/codebase/dep/powerlevel10k/powerlevel10k.zsh-theme

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Aliases
alias v="/usr/bin/nvim"
alias vol:up="wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%+ -l 1.5"
alias vol:down="wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%- -l 1.5"
alias vol:mute="wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init zsh)"

