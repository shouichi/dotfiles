if [[ "$(uname -s)" == "Linux" ]]; then
  # Without this zinit takes `_`-prefixed files in the archive for completions.
  zinit ice wait lucid as"program" pick"*/dist/aws" extract nocompletions
  zinit snippet https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
fi
