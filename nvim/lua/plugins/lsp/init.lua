return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.lsp.lua")
			require("plugins.lsp.ruby")
			require("plugins.lsp.keymap")
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
}
