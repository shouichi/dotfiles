local _duckdb_os _duckdb_arch
[[ "$OSTYPE" == "darwin"* ]] && _duckdb_os="osx" || _duckdb_os="linux"
[[ "$(uname -m)" == "arm64" || "$(uname -m)" == "aarch64" ]] && _duckdb_arch="arm64" || _duckdb_arch="amd64"

zinit ice from"gh-r" as"program" bpick"duckdb_cli-${_duckdb_os}-${_duckdb_arch}.zip" pick"duckdb"
zinit light duckdb/duckdb
