# gh-r extracts into a versioned directory, so _rg's symlink breaks on update.
zinit ice from"gh-r" as"program" pick"*/rg" \
  atclone"zinit creinstall -q ." atpull"%atclone"
zinit light BurntSushi/ripgrep
