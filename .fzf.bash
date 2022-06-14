# Setup fzf
# ---------
if [[ ! "$PATH" == */home/woland/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/woland/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/woland/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/woland/.fzf/shell/key-bindings.bash"
