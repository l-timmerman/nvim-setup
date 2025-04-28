return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		vim.filetype.add({
			extension = {
				jb = "ruby",
			},
		})

		configs.setup({
			ensure_installed = { "lua", "vim", "javascript", "elixir", "ruby", "heex" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
