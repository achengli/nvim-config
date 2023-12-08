local status, telescope = pcall(require, 'telescope')
if not status then return end
local actions = require'telescope.actions'
local builtin = require'telescope.builtin'

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require'telescope'.extensions.file_browser.actions
local themes = require'telescope'.themes

telescope.setup {
  prompt_prefix = " ",
  selection_caret = " ",
  path_display = { "smart" },

  defaults = {
    previewer = true,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    mappings = {
      n = {
        ['q'] = actions.close
      },
    },
  },
  extensions = {file_browser = {
    require('telescope.themes').get_dropdown {
      previewer = true,
    },
    mappings = {
      ['i'] = {
        ['<C-w>'] = function () vim.cmd('normal vbd') end,
      },
      ['n'] = {
        ['N'] = fb_actions.create,
        ['h'] = fb_actions.goto_parent_dir,
        ['/'] = function()
          vim.cmd('startinsert')
        end
      },
    },
  },
},
}

telescope.load_extension('file_browser')

vim.keymap.set('n', ';f',
function ()
  builtin.find_files({
  })
end)

vim.keymap.set('n',';r', function()
  builtin.live_grep()
end)

vim.keymap.set('n','\\\\',function()
  builtin.buffers()
end)

vim.keymap.set('n', ';t', function()
  builtin.help_tags()
end)
vim.keymap.set('n', ';;', function()
  builtin.resume()
end)
vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end)
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = false,
    grouped = false,
    previewer = true,
--    initial_mode = "normal",
  })
end)

vim.cmd[[
hi TelescopePromptNormal ctermbg=None
hi TelescopePromptBorder ctermbg=None
hi TelescopePromptTitle ctermbg=None
hi TelescopeResultsNormal ctermbg=None
hi TelescopeResultsBorder ctermbg=None
hi TelescopeResultsTitle ctermbg=None
hi TelescopePreviewNormal ctermbg=None
hi TelescopePreviewBorder ctermbg=None
hi TelescopePreviewTitle ctermbg=None
]]
