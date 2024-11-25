case "$1" in
up)
	amixer -D pulse sset Master 10%+
	;;
down)
	amixer -D pulse sset Master 10%-
	;;
esac
