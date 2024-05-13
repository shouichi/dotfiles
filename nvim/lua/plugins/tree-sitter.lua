return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = { enable = true },
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "html", "embedded_template", "jsonnet" },
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({
				autotag = {
					enable = true,
					enable_rename = true,
				},
			})
		end,
	},
}
