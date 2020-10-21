# Anek Prompt
PROMPT='%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%} %{$fg[cyan]%}%n%{$reset_color%} %{$fg[green]%}at%{$reset_color%} %{$fg[cyan]%}%M%{$reset_color%} %{$fg[green]%}in%{$reset_color%} %{$fg_bold[red]%}%~%{$reset_color%} $(git_prompt_info)
%{$fg[blue]%}%#%{$reset_color%} '

# GIT PROMPT
ZSH_THEME_GIT_PROMPT_PREFIX="%{$bg_no_bold[white]%}%{$fg_no_bold[black]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="]%{$reset_color%} %{$fg_bold[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="]%{$reset_color%}"
