vim.g.mapleader = " "

-- Colorscheme
vim.pack.add({
	{
		src = "https://github.com/rose-pine/neovim",
		name = "rose-pine",
	},
})
require("rose-pine").setup()
vim.cmd("colorscheme rose-pine")

-- Formatting
vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
  formatters_by_ft = {
    markdown = { "rumdl" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})

-- Zen
vim.pack.add({ "https://github.com/folke/zen-mode.nvim" })

require("zen-mode").setup({
  window = { width = 80 },
})
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>")

-- Twilight
vim.pack.add({ "https://github.com/folke/twilight.nvim" })
require("twilight").setup()

-- Outline
vim.pack.add({ "https://github.com/hedyhli/outline.nvim" })
require("outline").setup({
  outline_window = {
    position = "left",
  },
})
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>")

-- Options
-- vim.opt.textwidth = 80
-- vim.opt.formatoptions = vim.opt.formatoptions + { 't', 'q' }
