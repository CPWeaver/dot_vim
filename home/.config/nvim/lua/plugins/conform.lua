require('conform').setup({
  default_format_opts = {
    lsp_format = "fallback",
  },
  -- convenience that sets up auto format on save
  format_on_save = {
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    json = { "prettierd", "jq" },
    jsonc = { "prettierd" },
    sql = { "pg_format" },
    lua = { "lua-format" },
  }
})

vim.keymap.set("", '<leader>f', function()
  require("conform").format({ async = false })
end)
