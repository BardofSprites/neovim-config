-- Theme
require("bard.colors")

-- NetRW settings
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Changes the amount of tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Keeps the cursor in the center when scrolling
vim.opt.scrolloff = 18

-- Adds a column to the left of the line numbers to allow for space for the LSP signs
vim.opt.signcolumn = "yes"

-- Search options
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Nice colours
vim.opt.termguicolors = true

-- Relative line numbers
vim.cmd("set rnu")
-- Allows for the viewing of the current
vim.cmd("set number")
