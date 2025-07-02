return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    opts = {},
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      local configs = require('bufferline')
      configs.setup({
        options = {
          diagnostics = 'nvim_lsp',
          offsets = {{
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = 'left',
          }}
        }
      })
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons',
      opt = true,
    },
    config = function()

      local configs = require('lualine')
        configs.setup({
          options = {
            theme = 'auto',
          }
        })
    end,
  }
}
