return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lspconfig = require("lspconfig")

		local on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({ bufnr = bufnr })
					end,
				})
			end

			-- LSP key mappings for navigation and references
			local opts = { buffer = bufnr, noremap = true, silent = true }
			vim.keymap.set("n", "gR", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
			vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
			vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
		end

		-- Ruby LSP setup (for your ruby-lsp specific configuration)
		lspconfig.ruby_lsp.setup({
			cmd = { "mise", "x", "--", "ruby-lsp" },
			init_options = {
				formatter = "standard",
				linters = { "standard" },
			},
			on_attach = on_attach, -- Use the common on_attach function
		})
	end,
}
