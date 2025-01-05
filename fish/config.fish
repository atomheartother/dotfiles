set -x EDITOR nano

# Start sway if we're in tty1 and have a valid display
if status is-login
	/home/navenn_t/.config/fish/start-sway.sh
end
