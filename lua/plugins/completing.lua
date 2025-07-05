return {
  {
	  'saghen/blink.cmp',
    event = { 'BufReadPost', 'BufNewFile' },
	  version = '1.*',
	  opts = {
      completion = {
        keyword = {
          range = 'full',
        },
        trigger = {
          show_on_keyword = true,
        },
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
        menu = {
          draw = {
            columns = {
              { 'label', 'label_description', gap = 1 },
              { 'kind_icon' },
            },
          },
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
      },
      keymap = {
        preset = 'none',
        ['<C-n>']     = { 'select_next',                    'fallback' },
        ['<C-m>']     = { 'select_prev',                    'fallback' },
        ['<C-i>']     = { 'scroll_documentation_up',        'fallback' },
        ['<C-o>']     = { 'scroll_documentation_down',      'fallback' },
        ['<Tab>']     = { 'accept',                         'fallback' },
        ['<CR>']     =  { 'fallback' },
      },
      signature = {
        enabled = true,
      },
      sources = {
        default = { 'lsp', 'path', 'buffer' },
        providers = {
          buffer = {score_offset = 5},
          lsp = {score_offset = 4},
          path = {score_offset = 3},
        },
      },
      cmdline = {
        completion = {
          list = {
            selection = {
              preselect = false,
              auto_insert = true,
            },
          },
          menu = {
            auto_show = true,
          },
        },
        keymap = {
          preset = 'none',
          ['<C-n>']     = { 'select_next',                    'fallback' },
          ['<C-m>']     = { 'select_prev',                    'fallback' },
          ['<CR>']      = { 'accept_and_enter',               'fallback' },
        },
      },
    },
  },
}
