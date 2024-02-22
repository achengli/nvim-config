local utils = {}

vim.has = require'vimcompletions'.has
vim.t.is_transparent = false

return {
  --- function utils.info
  --- Takes a message `msg` and displays it with the selected `mode`.
  --- --
  --- @param msg string
  --- @param mode string
  info = function(msg, mode)
    if (string.match(mode, 'Debug')) then
      error(msg)
    else
      print(msg)
    end
  end,

  --- Configuring toggle transparency in vim
  --- --
  --- Changes the transparency doing the current theme background transparent.
  --- To change it, the function converts the background to a dark color due
  --- The color is reversed again.
  toggle_transparent_background = function()
    if vim.t.is_transparent then
      vim.api.nvim_exec('silent! colorscheme ' .. vim.api.nvim_exec('silent! colorscheme',false),false)
      vim.t.is_transparent = false
    else
      if vim.has(7) then
        vim.api.nvim_set_hl(0,'Normal',{ctermbg = 'NONE', bg='NONE'})
      else
        vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
      end
      vim.t.is_transparent = true
    end
  end
}
