lua <<EOF
require("neotest").setup({
  adapters = {
    require("neotest-go"),
    require("neotest-jest")({
      env = { CI = true },
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    }),
  },
  icons = {
    running = '',
    failed  = "",
    passed  = "",
    skipped = "ﰸ",
    unknown = ""
  },
})

vim.api.nvim_set_keymap('n', '<Leader>tr', ':lua require("neotest").run.run()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>tf', ':lua require("neotest").run.run(vim.fn.expand(\'%\'))<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>td', ':lua require("neotest").run.run(vim.fn.expand(\'%:h\'))<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>ts', ':lua require("neotest").summary.toggle()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>to', ':lua require("neotest").output.open()<CR>', {})


EOF

