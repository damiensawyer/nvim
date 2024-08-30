return {
  -- other plugins
  {
    "dmmulroy/tsc.nvim",
    config = function()
      require("tsc").setup({
        run_as_monorepo = true,
        -- Add any setup configuration here if needed
      })
    end,
  },
}
