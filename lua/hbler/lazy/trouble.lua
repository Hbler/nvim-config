return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
        keys = {
            { "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Open trouble workspace diagnostics" },
            { "<leader>td", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics" },
            { "<leader>tq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open trouble quickfix list" },
            { "<leader>tl", "<cmd>TroubleToggle loclist<CR>", desc = "Open trouble location list" },
            { "<leader>tT", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble" },
        },
        config = function()
            require("trouble").setup()

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle()
            end)

            vim.keymap.set("n", "[t", function()
                require("trouble").next({skip_groups = true, jump = true});
            end)

            vim.keymap.set("n", "]t", function()
                require("trouble").previous({skip_groups = true, jump = true});
            end)

        end
    },
}
