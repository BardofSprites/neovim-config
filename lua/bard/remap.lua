-- Leader key
vim.g.mapleader = " "
-- Open file manager
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Format the entire file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Markdown preview shortcut, only works when you have a markdown file open
vim.keymap.set("n", "<leader>mp", vim.cmd.MarkdownPreview)
