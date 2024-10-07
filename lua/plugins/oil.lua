return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local oil = require("oil")
        oil.setup({
            watch_for_changes = true,
            view_options = {
                show_hidden = true,
            }
        })
        vim.keymap.set("n", "<leader>pv", oil.toggle_float, {})
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", {})
    end,
}
