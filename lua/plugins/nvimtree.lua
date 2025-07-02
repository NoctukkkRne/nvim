return {
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()

      local configs = require('nvim-tree')
        configs.setup({})
    end,
  }
}
