# Hi future me,
# The env isn't set here anymore because i3 needs to have our PATH set right to see our .bin/
# The file that sets it is /etc/profile.d/env.sh
# loves <3

# This doesn't need to be set at i3 boot:
export ESHELL=/usr/bin/zsh
export VISUAL="nano"

export ANDROID_HOME=$HOME/Programming/Android/install
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator