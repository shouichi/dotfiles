local _basecamp_os _basecamp_arch
[[ "$OSTYPE" == "darwin"* ]] && _basecamp_os="darwin" || _basecamp_os="linux"
[[ "$(uname -m)" == "arm64" || "$(uname -m)" == "aarch64" ]] && _basecamp_arch="arm64" || _basecamp_arch="amd64"

zinit ice from"gh-r" as"program" bpick"basecamp_*_${_basecamp_os}_${_basecamp_arch}.tar.gz" pick"basecamp"
zinit light basecamp/basecamp-cli

source <(basecamp completion zsh)
