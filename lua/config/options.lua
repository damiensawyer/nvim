-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Ensure the undo directory exists
local undodir = vim.fn.expand("~/.local/nvim/undohistory")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- Enable persistent undo
opt.undofile = true
opt.undodir = undodir

-- Enable global marks across sessions
vim.o.shada = [['100,<50,s10,h]]

-- Allow hidden buffers to retain marks
vim.o.hidden = true

-- Function to delete all marks
function DeleteAllMarks()
  vim.cmd("delmarks! | delmarks a-zA-Z0-9")
end

-- Map 'mda' to delete all marks
vim.api.nvim_set_keymap("n", "MD", ":lua DeleteAllMarks()<CR>", { noremap = true, silent = true })

-- Allow :touch to have file completion
vim.api.nvim_create_user_command("Touch", function(opts)
  vim.cmd("silent! !touch " .. opts.args)
end, { nargs = 1, complete = "file" })

-- Create an alias `touch` that maps to `Touch`
--vim.cmd("command! -nargs=1 -complete=file touch :Touch <args>")
