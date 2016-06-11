#!/bin/zsh
#
# zchaodc theme
#
#%D The date in yy-mm-dd format.
#%T Current time of day, in 24-hour format.
#%t
#%@ Current time of day, in 12-hour, am/pm format.
#%* Current time of day in 24-hour format, with seconds.
#%w The date in day-dd format.
#%W The date in mm/dd/yy format.
#%D{string}
local current_time='%{$fg[white]%}[%{$fg[yellow]%}%D %*%{$fg[white]%}]%{$reset_color%} '
local user_host='%{$terminfo[bold]$fg[cyan]%}%n%{$fg[white]%}@%{$fg[red]%}%m%{$reset_color%} '
local current_dir='%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%} '
local return_code='%(?..%{$fg[red]%}%? <-%{$reset_color%})'

# version control status support
local git_branch='%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%} '

function prompt_char {
    # if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
    if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo "%{$fg[magenta]%}$%{$reset_color%}"; fi
}

PROMPT="%{$fg_bold[green]%}${current_time}${user_host}${current_dir}${git_branch}
%{$fg_bold[orange]%}$(prompt_char) %{$reset_color%}"
RPS1="${return_code}"

# zsh git info
# Encode with UTF-8
# ✔ - V, ✗ - X
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%} ✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%} ✔ %{$reset_color%}"
