-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Map 'kj' to Escape in insert mode
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })

-- (Optional) Map 'kj' to Escape in terminal mode as well
vim.api.nvim_set_keymap("t", "kj", "<C-\\><C-n>", { noremap = true, silent = true })
