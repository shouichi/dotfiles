return {
	{
		"rgroli/other.nvim",
		config = function()
			local other = require("other-nvim")

			other.setup({
				mappings = {
					"c",
					"golang",
					"rails",
				},
				rememberBuffers = false,
			})

			vim.keymap.set("n", "<leader>o", other.open, {})
		end,
	},
}
