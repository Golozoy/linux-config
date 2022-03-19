if [ $UID -eq 0 ]; then NCOLOR="red"; ENDER='#'; else NCOLOR="green"; ENDER='$'; fi

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$reset_color%}%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%} ✚"                                  
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%} -"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%} ✖"                                  
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%} ➜"                              
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%} ═"                              
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%} ✹"

PROMPT=$'%{$fg_bold[$NCOLOR]%}[%n@%m]-[%{$fg_bold[cyan]%}%~%{$fg_bold[$NCOLOR]%}]%{$reset_color%} \
%{$fg_bold[$NCOLOR]%}[%{$fg_bold[cyan]%}%D{%H:%M:%S}%{$fg_bold[$NCOLOR]%}]$ENDER%{$reset_color%} '
RPROMPT='$(git_prompt_status)$(git_prompt_info)'
