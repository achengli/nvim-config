local status, icons = pcall(require, "nvim-web-devicons")
if (not status) then return end

icons.setup {
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
    octave = {
      icon = '󰘨 ',
      color = '#b81363',
      name = 'octave',
    },
    lisp = {
      icon = '󰅲 ',
      color = '#faefb8',
      name = 'octave',
    },
  },
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  color_icons = true,
  default = true,
  override_by_extension = {
    ['m'] = {
      icon = '󰘨 ',
      color = '#b81363',
    },
    ['el'] = {
      icon = ' ',
      color = '#7803b3',
      name = 'elisp',
    }
  }
}
