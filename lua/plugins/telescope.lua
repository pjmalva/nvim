return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
            file_ignore_patterns = {
                "node_modules",
                ".git",
                ".cache",
                ".venv",
                ".vscode",
                ".DS_Store",
                "vendor"
            },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
      vim.keymap.set('n', '<leader>fl', builtin.lsp_references, {})
      vim.keymap.set('n', '<C-f>', builtin.git_files, {})

      require("telescope").load_extension("ui-select")
    end,
  },
}