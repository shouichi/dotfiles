local _gcloud_os _gcloud_arch
[[ "$OSTYPE" == "darwin"* ]] && _gcloud_os="darwin" || _gcloud_os="linux"
[[ "$(uname -m)" == "arm64" || "$(uname -m)" == "aarch64" ]] && _gcloud_arch="arm" || _gcloud_arch="x86_64"

# Completion comes from completion.zsh.inc. Without nocompletions zinit also takes
# `_`-prefixed files in the archive for completions.
zinit ice wait lucid as"program" pick"*/bin/*" extract nocompletions atload"source */completion.zsh.inc"
zinit snippet https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-565.0.0-${_gcloud_os}-${_gcloud_arch}.tar.gz
