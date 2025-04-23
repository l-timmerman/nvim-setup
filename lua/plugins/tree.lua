return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { silent = true }),
      vim.keymap.set("n", "<leader>ft", ":NvimTreeFocus<CR>", { silent = true }),
      update_focused_file = {
        enable = true,
        update_root = {
          enable = false,
          ignore_list = {},
        },
        exclude = false,
      },
    }
  end,
}
