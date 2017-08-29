# Setup fzf
# ---------
if [ -d "$HOME/.fzf" ]; then

  if [[ ! "$PATH" == */home/rlarson/.fzf/bin* ]]; then
    export PATH="$PATH:/home/rlarson/.fzf/bin"
  fi

  # Auto-completion
  # ---------------
  [[ $- == *i* ]] && source "/home/rlarson/.fzf/shell/completion.zsh" 2> /dev/null

  # Key bindings
  # ------------
  source "/home/rlarson/.fzf/shell/key-bindings.zsh"

fi
