if true then
  return {}
end
return {
  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup({
        -- Enable default mappings (below are the default keybindings)
        default_mappings = true,

        -- Whether to map keybindings or not. If false, you need to manually define keybindings.
        mappings = {
          toggle = "m", -- Toggle mark at the current line
          delete_line = "dm", -- Delete mark on the current line
          delete_buf = "dm<space>", -- Delete all marks in the current buffer
          next = "m]", -- Go toma the next mark
          prev = "m[", -- Go to the previous mark
          preview = "m;", -- Preview the mark
          set_bookmark0 = "m0", -- Set bookmark 0 at the current line
          set_bookmark1 = "m1", -- Set bookmark 1 at the current line
          set_bookmark2 = "m2", -- Set bookmark 2 at the current line
          set_bookmark3 = "m3", -- Set bookmark 3 at the current line
          set_bookmark4 = "m4", -- Set bookmark 4 at the current line
          set_bookmark5 = "m5", -- Set bookmark 5 at the current line
          set_bookmark6 = "m6", -- Set bookmark 6 at the current line
          set_bookmark7 = "m7", -- Set bookmark 7 at the current line
          set_bookmark8 = "m8", -- Set bookmark 8 at the current line
          set_bookmark9 = "m9", -- Set bookmark 9 at the current line
          delete_bookmark = "dm-", -- Delete the specified bookmark
          annotate = "m<space>", -- Annotate a mark
        },

        -- Which builtin marks to show. default is {} (all marks)
        builtin_marks = {},

        -- Sign configurations
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },

        -- Whether to use cyclic navigation for marks
        cyclic = true,

        -- Highlight configurations
        force_write_shada = true,
        excluded_filetypes = {}, -- Exclude specific filetypes from mark usage

        -- Built-in or bookmark specific keybindings
        bookmark_0 = {
          sign = "⚑", -- Optional sign for bookmark 0
          virt_text = "mark 0", -- Text to display next to bookmark 0
        },
        mappings_enabled = true, -- Enable default keybindings
      })
    end,
  },
}
