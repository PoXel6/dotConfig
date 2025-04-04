target_directory=$(fd -t d | fzf --tmux)
base=$(basename $target_directory)
if tmux has-session -t $base; then
	tmux a -t $base
else
	tmux new -c $target_directory -s $base
fi
