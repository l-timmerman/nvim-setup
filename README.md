# Neovim setup
Still WIP

Focusing on web development, with the following languages:
- Ruby 
- Elixir

This configuration uses [lazy vim](https://github.com/LazyVim/LazyVim) as package manager. 

## Plugins  
- [catppuccino](https://github.com/catppuccin/nvim)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [none-ls](https://github.com/nvimtools/none-ls.nvim)
- [telescopj](https://github.com/nvim-telescope/telescope.nvim)
- [nvim tree](https://github.com/nvim-tree/nvim-tree.lua)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context:)
- [nvim-cmp](https://www.lazyvim.org/extras/coding/nvim-cmp)
- [bqf](https://github.com/kevinhwang91/nvim-bqf)
- [lsp-config](https://github.com/neovim/nvim-lspconfig)
- [conform](https://github.com/stevearc/conform.nvim?tab=readme-ov-file#setup)

When using this config, you will need some extra dependencies.
See below what needs to be done, to work with this config. 
Some things are optional, like theming for LazyGit. 

## Mise
I'm currently using [mise](https://mise.jdx.dev/getting-started.html) for installing programming runtimes.

## Lazy git theming (optional)
For using a catpuccino theme in lazygit we need to do the following steps:

### Step 1 
Run the commands below for installing the theme:
```
mkdir -p ~/.config/lazygit/themes  
curl -o ~/.config/lazygit/themes/catppuccin-mocha.yaml https://raw.githubusercontent.com/catppuccin/lazygit/main/themes/mocha.yaml
```

### Step 2 
RUN `nvim ~/.config/lazygit/config.yml`

### Step 3
Add the following:
```
theme:
  user: "catppuccin-mocha"  # or "catppuccin-latte", etc.
```

## none-ls
This configuration has format on save enabled and supports formatting for the following languages:
- lua, which needs [stylua](https://github.com/JohnnyMorganz/StyLua)    

## telescope
Install [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation) so you can use 'grep find'. 

## lspconfig
I'm using mise so the cmd for the ruby-lsp is mise specific 
```cmd = { "mise", "x", "--", "ruby-lsp" }```

## conform
Install [erb-formatter](https://github.com/nebulab/erb-formatter) for formatting `*.erb`
