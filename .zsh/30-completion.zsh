# insert the first match immediately
setopt MENU_COMPLETE

# append slash to dir when complete
setopt AUTO_PARAM_SLASH

# use cache for completion
zstyle ":completion:*" use-cache true

# case insensitive completion
zstyle ":completion:*" matcher-list "m:{[:lower:][:upper:]}={[:upper:][:lower:]}"

# open menu when completion
zstyle ":completion:*" menu select=2

# color completion
zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}

# shift-tab to complete backward
bindkey "^[[Z" reverse-menu-complete

zinit light zsh-users/zsh-autosuggestions
