return {
  -- Plugin for running tests
  {
    "vim-test/vim-test",
    config = function()
      -- Set Vitest as the test runner for JavaScript/TypeScript
      vim.cmd([[
        let test#javascript#runner = 'vitest'
      ]])

      -- Optional: Configure keybindings for test commands
      vim.api.nvim_set_keymap("n", "<leader>tt", ":TestFile<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>tn", ":TestNearest<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>ta", ":TestSuite<CR>", { noremap = true, silent = true })
    end,
  },

  -- Plugin for debugging with nvim-dap
  {
    "mfussenegger/nvim-dap",
    config = function()
      -- Configure nvim-dap for Node.js debugging
      require("dap").adapters.node2 = {
        type = "executable",
        command = "node",
        args = { os.getenv("HOME") .. "/.vscode/extensions/ms-vscode.node-debug2/out/src/nodeDebug.js" },
      }

      require("dap").configurations.typescript = {
        {
          type = "node2",
          request = "launch",
          program = "${workspaceFolder}/src/index.ts",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          protocol = "inspector",
        },
      }

      -- Optional: Configure keybindings for debugging commands
      vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<F10>", ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<F11>", ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<F12>", ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
    end,
  },
}
