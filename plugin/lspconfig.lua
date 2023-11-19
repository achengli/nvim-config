local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local augroup_format = vim.api.nvim_create_augroup("Format", {clear = true})
local enable_format_on_save = function(_,bufnr)
    vim.api.nvim_clear_autocmds({group = augroup_format, buffer, bufnr})
    vim.api.nvim_create_autocmd("BufWritePre", {
        group= augroup_format,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({bufnr = bufnr})
        end,
    })
end

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()


nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    cmd = { "typescript-language-server", "--stdio" },
    capabilities = capabilities,
    init_options = {
        preferences = {
            disableSuggestions = true,
        },
    },
}

nvim_lsp.lua_ls.setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)
        enable_format_on_save(client, bufnr)
    end,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },

            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
            completion = {
                enable = true,
                autoRequire = true,
                callSnippet = 'Replace',
                KeywordSnippet = 'Replace',
            },
            hint = {
                enable = false,
            },
            runtime = {
                version = "Lua 5.3",
            },
        },
    },
}

nvim_lsp.tailwindcss.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.vimls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.r_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.astro.setup {
}

nvim_lsp.julials.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.ccls.setup {
    capabilities = capabilities
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = false,
    virtual_text = { spacing = 4, prefix = "\u{ea71}" },
    severity_sort = true,
}
)

vim.diagnostic.config({
    virtual_text = {
        prefix = '●'
    },
    update_in_insert = true,
    float = {
        source = "always", -- Or "if_many"
    },
})

