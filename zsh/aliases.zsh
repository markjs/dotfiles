# Make jumping between directories a bit less painful.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

# cd into whatever is the forefront Finder window.
# Found here: https://github.com/paulirish/dotfiles/commit/e67d1bc03
# By @sindresorhus
cdf() {
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}

# Shortcuts for long directory listing.
alias ll='ls -l'

# List all files.
alias l='ls -laF'

# Create a new directory and `cd` into it.
take() {
  mkdir "$1" && cd "$1"
}

# Shorter way to open files or the current directory.
alias o='open'
alias o.='open .'

# Shorter way to `sudo` something.
alias _='sudo'

# Update and edit dotfiles.
alias reload!='. ~/.zshrc'

# Usage: httpserver [<port>]
httpserver() {
  python -m SimpleHTTPServer "$@"
}
