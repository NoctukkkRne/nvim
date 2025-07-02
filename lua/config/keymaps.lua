-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- mapleader is defined in options.lua


local mode_nvi = {'n', 'v', 'i'}
local mode_nv = {'n', 'v'}
local mode_n =  {'n'}
local mode_v =  {'v'}
local mode_i =  {'i'}

local nmappings = {
  -- Basic
  { from = ';',             to = ':',                                               mode = mode_nv    },
  { from = ',',             to = '<nop>',                                           mode = mode_nv    },
  { from = '.',             to = '<nop>',                                           mode = mode_nv    },
  { from = 's',             to = '<nop>',                                           mode = mode_nv    },
  { from = '-',             to = '<nop>',                                           mode = mode_nv    },
  { from = '+',             to = '<nop>',                                           mode = mode_nv    },
  { from = '<CR>',          to = '<nop>',                                           mode = mode_nv    },
  -- Movement
  { from = '<C-h>',         to = '5h',                                              mode = mode_nv    },
  { from = '<C-j>',         to = '5j',                                              mode = mode_nv    },
  { from = '<C-k>',         to = '5k',                                              mode = mode_nv    },
  { from = '<C-l>',         to = '5l',                                              mode = mode_nv    },
  -- Split
  { from = 'wh',            to = ':set nosplitright<CR> :vsplit<CR>',               mode = mode_n     };
  { from = 'wj',            to = ':set splitbelow<CR> :split<CR>',                  mode = mode_n     };
  { from = 'wk',            to = ':set nosplitbelow<CR> :split<CR>',                mode = mode_n     };
  { from = 'wl',            to = ':set splitright<CR> :vsplit<CR>',                 mode = mode_n     };

  -- Plugins
  { from = 'tt',            to = ':NvimTreeToggle<CR>',                             mode = mode_n}
}

for _, mapping in ipairs(nmappings) do
  vim.keymap.set(mapping.mode or 'n', mapping.from, mapping.to, { noremap = true })
end
