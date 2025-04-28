require('conform').setup({
  -- convenience that sets up auto format on save
  format_on_save = {
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
  }
})

vim.keymap.set("", '<leader>f', function()
  require("conform").format({ async = false })
end)
