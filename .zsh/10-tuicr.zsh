local _tuicr_os _tuicr_arch
[[ "$OSTYPE" == "darwin"* ]] && _tuicr_os="apple-darwin" || _tuicr_os="unknown-linux-gnu"
[[ "$(uname -m)" == "arm64" || "$(uname -m)" == "aarch64" ]] && _tuicr_arch="aarch64" || _tuicr_arch="x86_64"

zinit ice from"gh-r" as"program" bpick"tuicr-*-${_tuicr_arch}-${_tuicr_os}.tar.gz" pick"tuicr"
zinit light agavra/tuicr
