
export PATH="$HOME/.bin:$PATH"
source /Users/admin/.asdf/asdf.sh

eval "$(rbenv init -)"

export PATH="$HOME/.rbenv/shims:$PATH"
# complete g like git
compdef g=git

function g {
   if [[ $# > 0 ]]; then
     git $@
   else
     git status
   fi
}
source $HOME/dotfiles/zsh/prompt
source $HOME/dotfiles/zsh/aliases
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
