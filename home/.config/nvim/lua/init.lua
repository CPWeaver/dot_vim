require("plugins/coq_nvim")
require("plugins/mason")
require("plugins/nvim-autopairs")
require("plugins/nvim-tree")
require("plugins/fzf-lua")
require("plugins/indent-blankline")
require("plugins/conform")
require("plugins/nvim-lsp-endhints")
require("plugins/fidget")


vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.INFO]  = "",
      [vim.diagnostic.severity.HINT]  = "",
    },
  },
  float = {
    focusable = false,
    header = { ' Diagnostics:', 'DiagnosticInfo' },
    scope = 'line',
    suffix = '',
    source = true,
    border = 'rounded',
  },
  virtual_text = {
    prefix = '',
    spacing = 2,
    source = true,
    severity = {
      min = vim.diagnostic.severity.HINT,
    },
  },
})
