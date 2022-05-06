# ZSH RC
#  Assemble and source the .zsh.d/*.sh files
find -L ~/.zsh.d -type f -iname '*.sh' | sort -n | while read src; do
  source $src
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/nomad nomad

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
fpath+=${ZDOTDIR:-~}/.zsh_functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
