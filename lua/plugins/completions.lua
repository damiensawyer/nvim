-- ~/.config/nvim/lua/plugins/completions.lua

return {
  -- Specify the plugin and its configuration
  {
    "hrsh7th/nvim-cmp",
    "neovim/nvim-lspconfig",
    config = function()
      -- Ensure nvim-cmp is required
      local cmp = require("cmp")

      -- Setup nvim-cmp
      cmp.setup({
        completion = {
          autocomplete = false, -- Disable automatic completion. The menu will only pop up when you press Ctrl-Space.
        },
        mapping = {
          ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion manually with Ctrl-Space
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
          ["<Tab>"] = cmp.mapping.select_next_item(), -- Navigate to the next item
          ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Navigate to the previous item
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "nvim_lspconfig" },
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
