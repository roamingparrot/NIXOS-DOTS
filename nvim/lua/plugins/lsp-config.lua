return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Use the new API introduced in Neovim 0.11
            local lspconfig = vim.lsp.config

            -- Common attach and capabilities
            local on_attach = function(_, _)
                -- You can add LSP keymaps here later if you like
            end
            local capabilities = vim.lsp.protocol.make_client_capabilities()

            -- Define LSP servers
            local servers = { "lua_ls", "clangd" }

            for _, server in ipairs(servers) do
                vim.lsp.start({
                    name = server,
                    cmd = vim.lsp.rpc.connect(server),
                    root_dir = vim.fs.root(0, { ".git", "Makefile", "compile_commands.json" }),
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end
        end,
    },
}
