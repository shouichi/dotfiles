return {
	{
		"rgroli/other.nvim",
		config = function()
			local other = require("other-nvim")

			other.setup({
				mappings = {
					"rails",
					"golang",
				},
				rememberBuffers = false,
			})

			vim.keymap.set("n", "<leader>o", other.open, {})
		end,
	},
}
