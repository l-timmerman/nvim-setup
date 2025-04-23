return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	flavor = "mocha",
	config = function()
		require("catppuccin").setup({
			integrations = {
				nvimtree = true,
				treesitter = true,
				telescope = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
