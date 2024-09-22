nnoremap ff <cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>
nnoremap \\ <cmd>Telescope buffers<cr>

lua << EOF
local actions = require'telescope.actions'
require'telescope'.setup{
defaults = {
  mappings = {
    n = {
      ['q'] = actions.close
    }
    }
  },
extensions = {
  file_browser = {
    theme = 'dropdown',
    hidden = true,
    }
  }
}

require'telescope'.load_extension'file_browser'
EOF

hi TelescopeBorder guibg=none
hi TelescopePromptBorder guibg=none
<<<<<<< HEAD
hi TelescopeResultsBorder guibg=none
hi TelescopePromptTitle guibg=none
hi TelescopeTitle guibg=none
=======
hi TelescopePreviewBorder guibg=none
hi TelescopeResultsBorder guibg=none
>>>>>>> b550503 (laptop commit)
