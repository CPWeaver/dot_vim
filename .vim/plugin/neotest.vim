lua <<EOF
require("neotest").setup({
  adapters = {
    require("neotest-go"),
  },
  icons = {
    running='',
  },
})

vim.api.nvim_set_keymap('n', '<Leader>t', ':lua require("neotest").run.run()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>tf', ':lua require("neotest").run.run(vim.fn.expand(\'%\'))<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>td', ':lua require("neotest").run.run(vim.fn.expand(\'%:h\'))<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>ts', ':lua require("neotest").summary.toggle()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>to', ':lua require("neotest").output.open()<CR>', {})


EOF

