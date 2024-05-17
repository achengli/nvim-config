local status, lualine = pcall(require, "lualine")
if (not status) then return end

-- solarized-osaka customization
local solarized_osaka_custom = require('lualine.themes.solarized-osaka')

solarized_osaka_custom.normal.c.bg = 'None'
solarized_osaka_custom.normal.b.bg = 'None'
solarized_osaka_custom.normal.b.fg = solarized_osaka_custom.normal.c.fg
solarized_osaka_custom.normal.a.fg = '#fca311'
solarized_osaka_custom.insert.a.fg = '#adc178'
solarized_osaka_custom.visual.a.fg = '#7678ed'
solarized_osaka_custom.command.a.fg = '#ffc2d1'
solarized_osaka_custom.normal.a.bg = 'None'
solarized_osaka_custom.visual.a.bg = 'None'
solarized_osaka_custom.insert.a.bg = 'None'
solarized_osaka_custom.command.a.bg = 'None'

lualine.setup {
    options = {
        icons_enabled = true,
        theme = 'poimandres',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { {
            'filename',
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
        } },
        lualine_x = {
            { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
            hint = ' ' } },
            'encoding',
            'filetype'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { {
            'filename',
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
        } },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = { 'fugitive' }
}
