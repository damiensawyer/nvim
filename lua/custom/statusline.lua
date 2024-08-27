-- ~/.config/nvim/lua/custom/statusline.lua

-- Set custom statusline to show full file path
vim.opt.statusline = '%f %m %r %h %w %=%{expand("%:p")}'
