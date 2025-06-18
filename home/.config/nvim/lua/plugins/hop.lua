require('hop').setup {}

vim.keymap.set({ 'n', 'v', 'o' }, '<leader><leader>/', '<cmd>HopPattern<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, '<leader><leader>j', '<cmd>HopLineStart<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, '<leader><leader>w', '<cmd>HopWord<cr>')
vim.keymap.set({ 'n', 'v', 'o' }, 's', '<cmd>HopChar1<cr>')
