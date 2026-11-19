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
})
