#!/bin/zsh
# zchaodc theme
#
local current_time='%{$fg[magenta]%}%D %*%{$reset_color%} '
local user_host='%{$terminfo[bold]$fg[blue]%}%n@%{$fg[red]%}%m%{$reset_color%} '
local current_dir='%{$terminfo[bold]$fg[green]%}%~%{$reset_color%} '
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local git_branch='%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%} '

function prompt_char {
	# if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
	if [ $UID -eq 0  ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo "%{$fg[magenta]%}$%{$reset_color%}"; fi
}

PROMPT="%{$fg_bold[green]%}${current_time}${user_host}${current_dir}${git_branch}
%{$fg_bold[orange]%}$(prompt_char) %{$reset_color%}"
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg_no_bold[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg_no_bold[green]%}✓"
