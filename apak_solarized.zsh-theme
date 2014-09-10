local user_host='%{$terminfo[bold]$FG[064]%}%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$FG[136]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local venv='%{$terminfo[bold]%}$(virtualenv_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[160]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

PROMPT="${user_host}:${current_dir} ${venv}${git_branch}$%b "

