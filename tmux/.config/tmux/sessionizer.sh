target_directory=$(fd -t d | fzf)
base=$(basename $target_directory)
if tmux has-session -t $base; then
	tmux a -t $base
else
	tmux new -c $target_directory -s $base "nvim" -o two
fi
