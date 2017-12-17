local user_host='%{$terminfo[bold]$FG[064]%}%m%{$reset_color%}'
# https://unix.stackexchange.com/questions/273529/shorten-path-in-zsh-prompt
local current_dir='%{$terminfo[bold]$FG[136]%}%(5~|%-1~/…/%3~|%4~)%{$reset_color%}'

local git_branch='$(git_prompt_info)%{$reset_color%}'
local venv='%{$terminfo[bold]%}$(virtualenv_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[160]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

PROMPT="${user_host}:${current_dir} ${venv}${git_branch}$%b "

preexec () {
  # http://stackoverflow.com/questions/13125825/zsh-update-prompt-with-current-time-when-a-command-is-started
  DATE=`date +"%H:%M:%S %Y-%m-%d"`
  C=$(($COLUMNS-20))
  echo -e "\033[1A\033[${C}C \e[1m\e[38;5;240m${DATE}\e[0m"
}

