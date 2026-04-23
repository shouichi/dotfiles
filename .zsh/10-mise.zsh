local _mise_os _mise_arch
[[ "$OSTYPE" == "darwin"* ]] && _mise_os="macos" || _mise_os="linux"
[[ "$(uname -m)" == "arm64" || "$(uname -m)" == "aarch64" ]] && _mise_arch="arm64" || _mise_arch="x64"
zinit ice from"gh-r" as"program" bpick"*${_mise_os}-${_mise_arch}.tar.gz" pick"mise/bin/mise"
zinit light jdx/mise

zinit ice from"gh-r" as"program"
zinit light jdx/usage

source <(mise completion zsh)
eval "$(mise activate zsh)"
