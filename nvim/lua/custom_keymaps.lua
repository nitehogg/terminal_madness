local wk = require("which-key")

wk.add({
  { "<leader>m", group = "  Keymaps"},
  { "<leader>mn", "<cmd>nmap<cr>", desc = "View Normal Mode Keymaps", mode = "n" },
  { "<leader>mi", "<cmd>imap<cr>", desc = "View Insert Mode Keymaps", mode = "n" },
  { "<leader>mv", "<cmd>vmap<cr>", desc = "View Visual Mode Keymaps", mode = "n" },
  { "<leader>li", "<cmd>LspInfo<cr>", desc = "LspInfo", mode = "n" },
  { "<leader>be", "<cmd>e<cr>", desc = "Reload buffer", mode = "n" },
})

-- surround text
-- search and replace
 
