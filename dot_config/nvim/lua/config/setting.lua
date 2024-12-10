vim.o.number = true
vim.o.relativenumber = true
vim.o.syntax = "on"
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.cursorline = true
vim.o.mouse = "a"

vim.opt.termguicolors = true
vim.opt.winblend = 0 -- ウィンドウの不透明度
vim.opt.pumblend = 0 -- ポップアップメニューの不透明度
vim.opt.swapfile = false

vim.api.nvim_set_option('clipboard', 'unnamedplus')
vim.g.user_emmet_settings = { javascript = { jsx = { extends = 'jsx' } } }
