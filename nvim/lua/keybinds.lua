-- telescope keymap
vim.keymap.set("n", "<leader>ff", function()
    require("telescope.builtin").find_files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", function()
    require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

vim.keymap.set("n", "<leader>fo", function()
    require("telescope.builtin").oldfiles()
end, { desc = "Search Recent Files" })

-- Neo-tree keymap
vim.keymap.set("n", "<leader>e", function()
    require("neo-tree.command").execute({ toggle = true })
end, { desc = "Toggle Neo-tree" })


--lsp keymap
vim.keymap.set("n", "<leader>h", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})


-- snippets
local luasnip = require("luasnip")

vim.keymap.set({"i", "s"}, "<Tab>", function()
  return luasnip.jumpable(1) and luasnip.jump(1) or "<Tab>"
end, {expr = true, silent = true})

vim.keymap.set({"i", "s"}, "<S-Tab>", function()
  return luasnip.jumpable(-1) and luasnip.jump(-1) or "<S-Tab>"
end, {expr = true, silent = true})
