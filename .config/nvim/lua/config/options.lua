-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = ""
vim.opt.guicursor = "i-ci:block-blinkwait300-blinkon200-blinkoff150"

-- for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true
vim.opt.relativenumber = false

vim.opt.title = true
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders

vim.opt.winblend = 25
vim.opt.undofile = false
