return {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        -- require("nvim-surround").set_keymaps({ buffer = true })
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })

--         local wk = require("which-key")
-- print('abc')
--         wk.add({
--             { "ys", group = "Surround", mode="n"},
--             { "ysi", group = "Inner", mode="n"},
--             { "ysiw", group = "Word"},
--             { "ds", group = "Surround"},
--             { "cs", group = "Surround"}
--         })

        -- wk.refresh()

    end
}
