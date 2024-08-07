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
    }
  }
}

require'telescope'.load_extension'file_browser'
EOF
