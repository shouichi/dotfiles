vim.lsp.config("ruby-lsp", {
	cmd = { "ruby-lsp" },
	filetypes = { "ruby", "eruby" },
	root_markers = { "Gemfile", ".git" },
})

vim.lsp.config("rubocop", {
	cmd = { "bundle", "exec", "rubocop", "--lsp" },
	filetypes = { "ruby" },
	root_markers = { "Gemfile" },
})

vim.lsp.enable({ "ruby-lsp", "rubocop" })

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.rb",
	callback = function()
		vim.lsp.buf.format()
	end,
})
