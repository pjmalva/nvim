return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap, dapui = require('dap'), require('dapui')

        require('dapui').setup()
        require('dap-go').setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end

        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set('n', '<Leader>db', dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<Leader>dc", dap.continue)
        vim.keymap.set("n", "<Leader>di", dap.step_into)
        vim.keymap.set("n", "<Leader>do", dap.step_over)
        vim.keymap.set("n", "<Leader>dt", dap.step_out)
        vim.keymap.set("n", "<Leader>dk", dap.step_back)
        vim.keymap.set("n", "<Leader>dr", dap.restart)
        vim.keymap.set("n", "<Leader>ds", dap.disconnect)

        vim.fn.sign_define(
            'DapBreakpoint',
            {text = '⦿', texthl = '', linehl = '', numhl = ''}
        )
    end,
}
