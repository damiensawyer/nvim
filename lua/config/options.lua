-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Ensure the undo directory exists
local undodir = vim.fn.expand("~/.config/nvim/undo")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- Enable persistent undo
opt.undofile = true
opt.undodir = undodir
