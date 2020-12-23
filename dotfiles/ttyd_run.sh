# Create a new tmux session with a randomized identifier
cd ~/ctf && tmux new-session -s "ctf""$(date +%s | sed "s/\(.\)/\1\n/g" | head -n -1 | shuf | tail -n 6 | tr -d "\n")" -t ctf
