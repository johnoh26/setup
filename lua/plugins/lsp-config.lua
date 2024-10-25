return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "ts_ls","csharp_ls", "omnisharp", "clangd", "pyright"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.csharp_ls.setup({})

          --  lspconfig.omnisharp.setup {cmd = { "dotnet", "C:/Users/johno/Documents/lsps/omnisharp-win-x64-net6.0"},

           --       settings = {
               --       FormattingOptions = {
                --          EnableEditorConfigSupport = true,
                    --      OrganizeImports = true,
                    -- },
                  --    MsBuild = {
                    --      LoadProjectsOnDemand = true,
                   --   },
                    --  RoslynExtensionsOptions = {
                       --   EnableAnalyzersSupport = true,
                      --    EnableImportCompletion = nil,
                      --    AnalyzeOpenDocumentsOnly = nil,
                    --  },
                    --  Sdk = {
                        --  IncludePrereleases = true,
                    --  },
                --  },
            --  }
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

           end
    }
--    {
--'Hoffs/omnisharp-extended-lsp.nvim',
 --       config = function()
  --                 vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua require("omnisharp_extended").lsp_definition()<CR>', { noremap = true, silent = true })
   -- replaces vim.lsp.buf.definition()
           -- nnoremap gd <cmd>lua require('omnisharp_extended').lsp_definition()<cr>

            -- replaces vim.lsp.buf.type_definition()
            --nnoremap <leader>D <cmd>lua require('omnisharp_extended').lsp_type_definition()<cr>

            -- replaces vim.lsp.buf.references()
            --nnoremap gr <cmd>lua require('omnisharp_extended').lsp_references()<cr>

            -- replaces vim.lsp.buf.implementation()
            --nnoremap gi <cmd>lua require('omnisharp_extended').lsp_implementation()<cr>
        --end
    --}
}


