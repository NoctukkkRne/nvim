return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = {
        enable = true,
        preset = {
          keys = {
            {
              icon = '󰈞 ',
              key = 'f',
              desc = 'Find files',
              action = function()
                Snacks.picker.files()
              end,
            },
            {
              icon = ' ',
              key = 'o',
              desc = 'Find history',
              action = function()
                Snacks.picker.recent()
              end,
            },
            { icon = ' ', key = 'e', desc = 'New file', action = ':enew' },
            { icon = ' ', key = 'o', desc = 'Recent files', action = ':lua Snacks.picker.recent()' },
            { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
            { icon = '󰔛 ', key = 'P', desc = 'Lazy Profile', action = ':Lazy profile', enabled = package.loaded.lazy ~= nil },
            { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
          },
          header = [[
                                                         
   ░░░░░░░░╗  ░░╗   ░░╗  ░░╗   ░░╗  ░░░░░░░░╗  ░░░░░░░╗  
   ╚══▒▒╔══╝  ▒▒║   ▒▒║  ▒▒║   ▒▒║  ▒▒╔═════╝  ▒▒║   ▒▒╗ 
      ▓▓║     ▓▓║   ▓▓║  ▓▓▓▓▓▓▓▓║  ▓▓▓▓▓▓▓▓╗  ▓▓▓▓▓▓▓╔╝ 
      ██║     ██║   ██║  ██╔═══██║  ██╔═════╝  ██╔════╝  
      ██║     ╚██████╔╝  ██║   ██║  ████████╗  ██║       
      ╚═╝      ╚═════╝   ╚═╝   ╚═╝  ╚═══════╝  ╚═╝       
        ]],
        },
        sections = {
          { section = 'header' },
          { icon = ' ', title = 'Keymaps', section = 'keys', indent = 2, padding = 1 },
          { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
          { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
          -- { section = 'startup' },
        },
      },
      explorer = { enabled = false },
      indent = { enabled = false },
      input = { enabled = true },
      picker = { enabled = false },
      notifier = { enabled = false },
      quickfile = { enabled = true },
      scope = { enabled = false },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  }
}
