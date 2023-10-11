-- vim.opt.guicursor = ""

-- Relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Indenting
vim.opt.ts = 4
vim.opt.sts = 4
vim.opt.sw = 4
vim.opt.et = true
vim.opt.si = true

vim.opt.wrap = false

-- Long-lived undo history for undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("XDG_STATE_HOME") .. "/nvim/undodir"
vim.opt.undofile = true

-- Search highlights
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
