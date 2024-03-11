# change directory by ./dir
setopt AUTO_CD

# push path to stack when cd
setopt AUTO_PUSHD

alias c="cd"

cdpath=($HOME $HOME/ghq/github.com)

# <C-o> to cd into ghq managed projects
function _ghq_fzf_cd() {
     local repo=$(ghq list | fzf --reverse)
     local dir=$(ghq root)/$repo
     [[ -n $repo ]] && cd $dir
     zle accept-line
     zle reset-prompt
}
zle -N _ghq_fzf_cd
bindkey "^O" _ghq_fzf_cd
