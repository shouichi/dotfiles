vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- completion by <C-x><C-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<C-p>", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "<C-n>", vim.diagnostic.goto_next)
		vim.keymap.set({ "n", "v" }, "<Leader>a", vim.lsp.buf.code_action, opts)
	end,
})
