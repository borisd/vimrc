ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    if [ -n "$(parse_git_dirty)" ]; then
      echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)*$ZSH_THEME_GIT_PROMPT_SUFFIX"
    else
      echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
    fi
  fi
}

#RVM and git settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  RPS1='%{$fg[red]%}[`~/.rvm/bin/rvm-prompt`]%{$reset_color%} $EPS1'
fi

PROMPT='%{$fg[cyan]%}%~% $(git_custom_status)%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
