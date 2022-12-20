local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<C-a>", mark.add_file)
vim.keymap.set("n", "<C-p>", ui.toggle_quick_menu)

vim.keymap.set("n", "<TAB>", ui.nav_next)
vim.keymap.set("n", "<S-Tab>", ui.nav_prev)
