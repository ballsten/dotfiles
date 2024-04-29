-- setup leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic editor config
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Additional config
--
-- Make line numbers default
vim.g.have_nerd_font = true

-- Make line numbers default
vim.opt.number = true

-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
--vim.opt.relativenumber = true

