-- osaka neosolarized theme configuration
-- Osaka theme was created by craftzdog <https://github.com/craftzdog/solarized-osaka.nvim>

require('solarized-osaka').setup({
    transparent = true,
    terminal_colors = true,

    styles = {
        comments = {italic = true},
        keywords = {italic = true},
        functions = {},
        variables = {bold = true},
        sidebars = 'dark',
        floats = 'dark',
    },

    slidebars = {'qf', 'help'},
    day_brightness = .3,
    hide_inactive_statusline = false,
    dim_inactive = false,
    lualine_bold = false,

    on_colors = function(colors) end,
    on_highlights = function(hl, c)
        local prompt = 'None'
        hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.fg_dark,
        }
        hl.TelescopePromptNormal = {
            bg = prompt,
        }
        hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
    end
})
