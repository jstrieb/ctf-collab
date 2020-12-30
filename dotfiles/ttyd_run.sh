# Create a new tmux session with a randomized identifier
cd ~/ctf && tmux new-session -c ~/ctf -s "ctf""$((RANDOM))" -t ctf
