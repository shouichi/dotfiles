pre-push: .luacheck .stylua

.luacheck:
	luacheck .

.stylua:
	stylua .
