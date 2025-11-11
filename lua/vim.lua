vim.diagnostic.config({ virtual_text = true })

vim.g.mapleader = " "
vim.g.markdown_recommended_style = 0

vim.keymap.set("n", "j", "gj", { silent = true, noremap = true })
vim.keymap.set("n", "k", "gk", { silent = true, noremap = true })
vim.keymap.set("v", "j", "gj", { silent = true, noremap = true })
vim.keymap.set("v", "k", "gk", { silent = true, noremap = true })
vim.keymap.set("n", "<Down>", "gj", { silent = true, noremap = true })
vim.keymap.set("n", "<Up>", "gk", { silent = true, noremap = true })
vim.keymap.set("v", "<Down>", "gj", { silent = true, noremap = true })
vim.keymap.set("v", "<Up>", "gk", { silent = true, noremap = true })

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.spelllang = { "en_us" }
vim.opt.spell = true
