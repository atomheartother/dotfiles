#! /usr/bin/sh

# Start sway if we're in tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  # Force QT and FF to use sway
  # Dnoatomic prevents FF flickering on resize
  # The Java var fixes a blank screen on java apps
  # Tell XDG we're using sway to enable screen sharing
  QT_QPA_PLATFORM=wayland-egl \
  XKB_DEFAULT_LAYOUT=us \
  MOZ_ENABLE_WAYLAND=1 \
  _JAVA_AWT_WM_NONREPARENTING=1 \
  XDG_CURRENT_DESKTOP=sway \
  sway \
  -Dnoatomic
fi
