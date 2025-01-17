require('conform').setup({
  format_on_save = {
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    javascript = { "prettier"},
    javascriptreact = { "prettier"},
    typescript = { "prettier"},
    typescriptreact = { "prettier"},
  }
})
