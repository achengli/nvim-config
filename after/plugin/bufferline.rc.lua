local bufferline = require('bufferline')
bufferline.setup({
  options = {
    style_preset = bufferline.style_preset.no_bold,
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
        or (e == "warning" and " " or "" )
        s = s .. n .. sym
      end
      return s
    end,
    hover = {
      enabled = true,
      delay = 90,
      reveal = {'close'},
    }
  },
})


