return {
  -- other plugins
  {
    "dmmulroy/tsc.nvim",
    config = function()
      require("tsc").setup({
        -- Add any setup configuration here if needed
      })
    end,
  },
}
