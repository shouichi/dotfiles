if [[ "$(uname -s)" == "Linux" ]]; then
  zinit ice wait lucid as"program" pick"*/dist/aws" extract
  zinit snippet https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
fi
