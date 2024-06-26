lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "bash",
    "go",
    "graphql",
    "javascript",
    "json",
    "jsonc",
    "prisma",
    "typescript",
    "tsx",
    "yaml",
    "csv",
    "psv",
    "vimdoc",
    "http"
  }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",

    },
  },
  indent = {
    enable = true,
  }
}
EOF
