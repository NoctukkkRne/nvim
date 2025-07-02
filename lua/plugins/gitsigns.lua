return {
  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      local configs = require('gitsigns')
      configs.setup({
        signs = {
          add = {text = '+'},
          change = {text = '~'},
          delete = {text = '-'},
          topdelete = {text = '-'},
          changedelete = {text = '-'},
        }
      })
    end
  },
}
