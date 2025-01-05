# Lang
export LC_ALL=en_US.UTF-8
export LANG=en_us.UTF-8

# Android & React Native Dev
export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export GOPATH=${HOME}/Programming/go

export JEKYLL_GITHUB_TOKEN=b49eb052d3c9d7c9734328c54a41e3b1da56f453

# Add ruby
export PATH=${PATH}:${HOME}/.gem/ruby/2.4.0/bin
# Add personal binaries
export PATH=${HOME}/.bin:$PATH
# Add go binaries
export PATH=${PATH}:${GOPATH}/bin

# Use Clang instead of GCC by default
# export CC=/usr/bin/clang
# export CXX=/usr/bin/clang++
