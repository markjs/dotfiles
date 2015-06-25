# Load zsh colors
autoload -U colors && colors
setopt PROMPT_SUBST

# adds the current branch name
git_branch_name() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo ${ref#refs/heads/}
  fi
}

formatted_git_branch_name() {
  name=$(git_branch_name)
  if [[ -n $name ]]; then
    echo "%F{250}[%F{2}$name%F{250}]$reset_color"
  fi
}

# For more information on the variables that can be used in the prompt,
# and using color, see the archlinux zsh guide.
#
# https://wiki.archlinux.org/index.php/Zsh#Customizing_your_prompt.

_newline=$'\n'
_lineup=$'\e[1A'
_linedown=$'\e[1B'

PROMPT='%F{21}%~$reset_color$(formatted_git_branch_name)${_newline}%(?..%{%F{9}%})%#%{$reset_color%} '

RPROMPT='%{${_lineup}%}%F{199}%n%F{250}@%F{202}%m%F{250}%{${_linedown}%}'
