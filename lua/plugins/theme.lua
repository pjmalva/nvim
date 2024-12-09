-- return {
--     {
--         "AlexvZyl/nordic.nvim",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             require("nordic").load()
--         end
--     }
-- }

-- return {
--     {
--         "npxbr/gruvbox.nvim",
--         lazy = false,
--         name = "gruvbox",
--         priority = 1000,
--         config = function()
--             vim.cmd.colorscheme "gruvbox"
--         end
--     }
-- }

return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-macchiato"
    end
  }
}
