export HISTFILE=${HOME}/.zsh_history

# in-mem
export HISTSIZE=10000

# persist
export SAVEHIST=10000000

# with timestamp
setopt EXTENDED_HISTORY

# share between sessions
setopt SHARE_HISTORY

# remove duplicated
setopt HIST_IGNORE_ALL_DUPS

# remove spaces
setopt HIST_REDUCE_BLANKS

# ommit commands from history when start with space
setopt HIST_IGNORE_SPACE

# ommit history command from history
setopt HIST_NO_STORE

# search history by prefix
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
