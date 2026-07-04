# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi


# Prompt configuration
#source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Oh My Posh
# Exclude the default terminal from oh-my-posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  #eval "$(oh-my-posh init zsh --config ~/DotFiles/OhMyPosh/Themes/nordcustom.omp.json)"
  eval "$(oh-my-posh init zsh --config ~/DotFiles/OhMyPosh/Themes/cap_mocha.omp.json)"
  #eval "$(oh-my-posh init zsh --config ~/DotFiles/OhMyPosh/Themes/tokyo.omp.json)"
  #eval "$(oh-my-posh init zsh --config ~/DotFiles/OhMyPosh/Themes/honukai.omp.json)"
fi


source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#source ~/.nvm/nvm.sh


# Favorite alias commands
alias cls="clear"
alias ls="eza -l --icons=always"
alias la="ls -a"
alias lg="lazygit"
alias n="nvim"
alias nn="nvim ."
alias nvc="nvim $HOME/.config/"
alias rdr='open -na "Rider.app" --args nosplash "$@“' 
alias notes="nvim $HOME/Documents/'Main - Vault'/"
alias k="kubectl"
alias kc="kubectl config"
alias delds="find . -name '.DS_Store' -type f -delete"

eval "$(zoxide init zsh)"


source <(fzf --zsh)

#Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

GOPATH=$HOME/go PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Yazi setup for the y alias
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

. "$HOME/.local/bin/env"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
eval "$(atuin init zsh)"

export VISUAL=$(which nvim)
export EDITOR=$VISUAL
