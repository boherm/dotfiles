return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")

        dapui.setup()

        -- Auto open/close ui
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

        -- Setup UI
        vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939', bg = '#31353f' })
        vim.api.nvim_set_hl(0, 'DapLogPoint', { ctermbg = 0, fg = '#61afef', bg = '#31353f' })
        vim.api.nvim_set_hl(0, 'DapStopped', { ctermbg = 0, fg = '#98c379', bg = '#31353f' })

        vim.fn.sign_define('DapBreakpoint', { text='●', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
        vim.fn.sign_define('DapBreakpointCondition', { text='●', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
        vim.fn.sign_define('DapBreakpointRejected', { text='R', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
        vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint', linehl='DapLogPoint', numhl= 'DapLogPoint' })
        vim.fn.sign_define('DapStopped', { text='◆', texthl='DapStopped', linehl='DapStopped', numhl= 'DapStopped' })

        -- Set keybindings
        vim.keymap.set('n', '<Leader>dc', function() dap.continue() end, { desc="Debug Continue" })
        vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end, { desc="Toggle breakpoint" })
        vim.keymap.set('n', '<Leader>dq', function() dapui.close() end, { desc="Close Debug UI" })

        -- Setup php
        dap.adapters.php = {
            type = 'executable',
            command = 'node',
            args = { '/Users/bHermans/.config/nvim/vscode-php-debug/out/phpDebug.js' }
        }
        dap.configurations.php = {
            {
                type = 'php',
                request = 'launch',
                name = 'Listen for Xdebug',
                port = 9003
            }
        }
    end
}
