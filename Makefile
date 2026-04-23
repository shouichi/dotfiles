install:
	mkdir -p ~/.config/mise
	ln -snf $(CURDIR)/.zshrc ~/.zshrc
	ln -snf $(CURDIR)/.zsh ~/.zsh
	ln -snf $(CURDIR)/.tmux.conf ~/.tmux.conf
	ln -snf $(CURDIR)/.gitconfig ~/.gitconfig
	ln -snf $(CURDIR)/mise.toml ~/.config/mise/config.toml
	ln -snf $(CURDIR)/nvim ~/.config/nvim

pre-push: .luacheck .stylua

.luacheck:
	luacheck .

.stylua:
	stylua .
