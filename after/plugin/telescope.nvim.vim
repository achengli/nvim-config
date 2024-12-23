nnoremap ff <cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>
nnoremap \\ <cmd>Telescope buffers<cr>

lua << EOF
local actions = require'telescope.actions'
require'telescope'.setup{
defaults = {
  layout_strategy = 'horizontal',
  layout_config = {
    horizontal = {
      prompt_position = 'top',
      width = {padding = 0},
      height = {padding = 0},
      preview_width = .6,
    },
  },
  prompt_prefix = '$ ',
  initial_mode = 'normal',
  winblend = 0.0,
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

require'telescope'.load_extension('file_browser')
local builtin = require'telescope.builtin'
vim.keymap.set('n', 'sf', function() builtin.resume() end)

EOF
