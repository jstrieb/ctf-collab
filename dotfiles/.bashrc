
# some more ls aliases
alias ll='ls -AlFh'
alias la='ls -A'
alias l='ls -CF'

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="$HOME/.local/bin:$PATH"

# Create a command to open the ~/.bashrc and source the file immediately after
# editing -- very useful for making bashrc edits without forgetting to apply 'em
function brc () {
  vim ~/.bashrc;
  . ~/.bashrc;
}

# Display the motd if inside tmux
if [ -n "$TMUX" ] && [ -n "$TMUX_PANE" ] && [ "$TMUX_PANE" = "%0" ]; then
  cat /etc/motd
fi

# I missplel stuff
alias tmxu="tmux"
alias sl="ls"

# Useful aliases
alias webserver="python3 -m http.server 8080 &> /dev/null &"
alias backup-website="wget --mirror --convert-links --adjust-extension --page-requisites --no-parent"
alias latest="ls -rt | tail"

# Start up a new tmux session if the user connects over SSH but isn't already
# inside of tmux
if [ -n "$SSH_CONNECTION" ] && [ -z "$TMUX" ]; then
  /bin/bash /home/runner/ttyd_run.sh
fi
