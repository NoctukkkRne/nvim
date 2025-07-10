return {
  {
    'folke/tokyonight.nvim',
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {},
    config = function(_, opts)
      local configs = require('catppuccin')
      configs.setup(opts)
    end
  },
  {
    'ellisonleao/gruvbox.nvim'
  },
}
