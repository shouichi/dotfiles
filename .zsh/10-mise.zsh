zinit ice from"gh-r" as"program" bpick"*linux-x64.tar.gz" pick"mise/bin/mise"
zinit light jdx/mise

zinit ice from"gh-r" as"program"
zinit light jdx/usage

source <(mise completion zsh)
eval "$(mise activate zsh)"
