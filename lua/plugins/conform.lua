return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, -- format-on-save!
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				eruby = { "erb_format" }, -- .erb files
			},
			formatters = {
				erb_format = {
					command = "erb-format",
					args = { "--stdin-filename", "$FILENAME" },
					stdin = true,
				},
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
