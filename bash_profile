export GIT_EDITOR=vim

# aliases
alias ~='cd ~'
alias ..='cd ..'
alias be='bundle exec'
alias colorslist="set | egrep 'COLOR_\w*'" # Lists all the colors, uses vars in .bashrc_non-interactive
alias lollar='echo I LOVE LOLLAR SO MUCH; echo HE IS THE GREATEST HUMAN BEING TO EVER LIVE; echo AND EVERYTHING HE SAYS IS TRUE!!!;'
# git aliases
alias gs='git status'
alias gc='git commit'
alias gco='git checkout'

# setup some colors to use later in interactive shell or scripts
export COLOR_NC='\[\e[0m\]' # No Color
export COLOR_WHITE='\[\e[1;37m\]'
export COLOR_BLACK='\[\e[0;30m\]'
export COLOR_BLUE='\[\e[0;34m\]'
export COLOR_LIGHT_BLUE='\[\e[1;34m\]'
export COLOR_GREEN='\[\e[0;32m\]'
export COLOR_LIGHT_GREEN='\[\e[1;32m\]'
export COLOR_CYAN='\[\e[0;36m\]'
export COLOR_LIGHT_CYAN='\[\e[1;36m\]'
export COLOR_RED='\[\e[0;31m\]'
export COLOR_LIGHT_RED='\[\e[1;31m\]'
export COLOR_PURPLE='\[\e[0;35m\]'
export COLOR_LIGHT_PURPLE='\[\e[1;35m\]'
export COLOR_BROWN='\[\e[0;33m\]'
export COLOR_YELLOW='\[\e[1;33m\]'
export COLOR_GRAY='\[\e[1;30m\]'
export COLOR_LIGHT_GRAY='\[\e[0;37m\]'

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  c_git_clean='\[\e[1;32m\]'
  c_git_dirty='\[\e[1;31m\]'
  c_git_prefix='\[\e[1;37m\]'
else
  c_git_clean=
  c_git_dirty=
fi

# Function to assemble the Git parsingart of our prompt.
git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  git_branch=$(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p')
  if git diff --quiet 2>/dev/null >&2; then
    git_color="$c_git_clean"
  else
    git_color="$c_git_dirty"
  fi
  echo "${COLOR_YELLOW}::${COLOR_WHITE}[$git_color$git_branch${COLOR_WHITE}]"
}

# Prompts ----------------------------------------------------------
PROMPT_COMMAND='PS1="\n${COLOR_LIGHT_GRAY}\W$(git_prompt) >${COLOR_NC} "'
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# source job specific stuff via the bashrc file
[[ -s ~/.bashrc ]] && source ~/.bashrc
