-- vim.lsp.enable('lua_ls')
-- vim.lsp.enable('pyright')
vim.lsp.enable('clangd')

local icons = {}
icons.diagnostics = {
  Error = 'E',
  Warn = 'W',
  Info = 'I',
  Hint = '􁷖',
}

vim.diagnostic.config {
  virtual_text = {
    spacing = 4,
    prefix = '',
  },
  float = {
    severity_sort = true,
    source = 'if_many',
    border = 'single',
  },
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = icons.diagnostics.Error,
      [vim.diagnostic.severity.WARN] = icons.diagnostics.Warn,
      [vim.diagnostic.severity.INFO] = icons.diagnostics.Info,
      [vim.diagnostic.severity.HINT] = icons.diagnostics.Hint,
    },
  },
}

