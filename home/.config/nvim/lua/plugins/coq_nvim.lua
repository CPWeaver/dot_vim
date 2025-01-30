vim.g.coq_settings = {
  auto_start = true,

  clients = {
    lsp = {
      resolve_timeout = 2
    },
    tree_sitter = {
      enabled = false
    },
  }
}

require('coq')
