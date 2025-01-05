# Start sway if we're in tty1 and have a valid display
if status is-login
	/home/navenn_t/.config/fish/start-sway.sh
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/navenn_t/.ghcup/bin # ghcup-env