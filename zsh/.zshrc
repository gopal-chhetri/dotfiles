if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# keep PATH entries unique (nested shells would otherwise re-append everything below)
typeset -U path PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	dotenv
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# Auto-complete color
#zstyle ':completion:*'  list-colors '=*=32'
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=red'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# enable vim motion
# bindkey -v
alias vi=vim


# Personal aliases
alias thm='cd $HOME/Gopal/CS/THM'
alias stuffs='cd $HOME/stuffs/'
alias soylab='cd $HOME/stuffs/soylab/'
alias lf="$HOME/.config/lf-ueberzug/lf-ueberzug"
alias shrig-solutions='cd $HOME/shrig-solutions/'

alias dsize='du -a | cut -d/ -f2 | sort | uniq -c | sort -nr | head -n -1'
alias open="xdg-open"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Go: the distro package knows its own GOROOT (/usr/lib/go); don't override it
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# opencode
export PATH=$HOME/.opencode/bin:$PATH

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"
# End of LM Studio CLI section


# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
