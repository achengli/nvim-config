local lspconfig = require'lspconfig'
local cap = require'cmp_nvim_lsp'.default_capabilities()

lspconfig.vimls.setup{
  capabilities = cap,
  filetypes = 'vim',
}

lspconfig.lua_ls.setup{
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if vim.loop.fs_stat(path .. '/.luarc.json') or
      vim.loop.fs_stat(path .. '/.luarc.jsonc') then
      return
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua,{
      runtime = {
        version = 'LuaJIT',
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        }
      }
    })
  end,
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace',
      },
    }
  }
}

lspconfig.pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}

lspconfig.tsserver.setup {
  init_options = {},
  filetypes = {
    'javascript',
    'typescript',
  }
}

<<<<<<< HEAD
lspconfig.rust_analyzer.setup {
  capabilities = cap,
  settings = {
    ['rust-analyzer'] = {
      diagnostics = true,
    },
  },
  filetypes = {
    'rust',
  },
}

lspconfig.clangd.setup{
  cmd = {
    "clangd",
    "--function-arg-placeholders",
    "--background-index",
    "--suggest-missing-includes",
    "--clang-tidy"
  },
  capabilities = cap
=======
lspconfig.astro.setup {}

lspconfig.rust_analyzer.setup{
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true
      },
    }
  }
>>>>>>> b550503 (laptop commit)
}
