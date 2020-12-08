
# some more ls aliases
alias ll='ls -AlFh'
alias la='ls -A'
alias l='ls -CF'

export VISUAL=vim
export EDITOR="$VISUAL"

function brc () {
  vim ~/.bashrc;
  . ~/.bashrc;
}

# Display the motd if inside tmux
if [ -n "$TMUX" ] && [ -n "$TMUX_PANE" ] && [ "$TMUX_PANE" = "%0" ]; then
  cat /etc/motd
fi

alias tmxu="tmux"
alias sl="ls"

alias webserver="python3 -m http.server 8080 &> /dev/null &"
alias backup-website="wget --mirror --convert-links --adjust-extension --page-requisites --no-parent"
alias latest="ls -rt | tail"
