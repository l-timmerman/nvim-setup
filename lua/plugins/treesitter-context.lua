return {
	"nvim-treesitter/nvim-treesitter-context",
	opts = function()
		local tsc = require("treesitter-context")

		return { mode = "cursor", enable = true, trim_scope = "outer", max_lines = 3 }
	end,
}
