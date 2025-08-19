-- init.lua

------------------------------------------------------------
-- Plugin Manager: lazy.nvim (modern alternative to vim-plug)
------------------------------------------------------------
-- Automatically install lazy.nvim if not present
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Replace this with actual lazy.nvim plugin spec
  {
    "easymotion/vim-easymotion",
    lazy = false,
  },
})

------------------------------------------------------------
-- Settings
------------------------------------------------------------
vim.opt.compatible = false
vim.cmd("syntax enable")

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 7
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.virtualedit = "all"
vim.opt.guicursor = "a:block"

------------------------------------------------------------
-- Keymaps
------------------------------------------------------------
vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Move selected lines up/down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Delete word in insert mode
keymap("i", "<C-H>", "<C-W>", opts)

-- Easymotion
keymap("n", "<leader>f", "<Plug>(easymotion-bd-w)", {})

-- Delete inner word and next character
keymap("n", "diw", "diwx", opts)

-- Buffer navigation
keymap("n", ";n", ":bn<CR>", opts)

-- File explorer
keymap("n", "<leader>d", ":Ex<CR>", opts)

-- Toggle line numbers
keymap("n", ";ln", function()
  local number = vim.wo.number
  local relnumber = vim.wo.relativenumber
  if number and relnumber then
    vim.wo.number = false
    vim.wo.relativenumber = false
  else
    vim.wo.number = true
    vim.wo.relativenumber = true
  end
end, opts)


-- Edit current file
keymap("n", "<leader>e", ":e ", opts)

-- Run Python script
keymap("n", "<leader>P", ":terminal clear; echo '-------'; sleep .25; python3 main.py<CR>i", opts)
-- keymap("n", "<leader>P", ":!clear; echo '-------'; sleep .25; python3 main.py<CR>", opts)

-- Paste over selection without overwriting register
keymap("x", "<leader>p", '"_dP', opts)

-- Snippet (example)
-- keymap("n", ",cb", ":-1read ~/snippets/codeBubble.md<CR>ji", opts)

