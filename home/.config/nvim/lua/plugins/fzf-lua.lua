require('fzf-lua').setup(
  {
    -- profile to set defaults like fzf.vim did
    'fzf-vim',
    winopts = {
      preview = {
        border       = 'rounded',
        layout       = 'flex',
        vertical     = 'down:60%',
        flip_columns = 200,
        hidden       = false,
      }
    },
  })

vim.keymap.set({ 'n' }, '<space>t', '<cmd>FzfLua files<cr>')
vim.keymap.set({ 'n' }, '<space>d', '<cmd>FzfLua diagnostics_workspace<cr>')
vim.keymap.set({ 'n' }, '<space>s', '<cmd>FzfLua lsp_live_workspace_symbols<cr>')
vim.keymap.set({ 'n' }, '<space>o', '<cmd>FzfLua lsp_document_symbols<cr>')

vim.keymap.set({ 'n' }, 'gr', '<cmd>FzfLua lsp_references<cr>')
vim.keymap.set({ 'n' }, '<space>a', '<cmd>FzfLua lsp_code_actions<cr>')
vim.keymap.set({ 'n' }, '<space>gg', '<cmd>FzfLua grep<cr>')
vim.keymap.set({ 'n' }, '\\', '<cmd>FzfLua grep<cr>')
vim.keymap.set({ 'v' }, '<space>gv', '<cmd>FzfLua grep_visual<cr>')
vim.keymap.set({ 'n' }, '<space>gr', '<cmd>FzfLua grep_cword<cr>')
vim.keymap.set({ 'n' }, '<space>b', '<cmd>FzfLua buffers<cr>')
vim.keymap.set({ 'n' }, '<space>m', '<cmd>FzfLua oldfiles<cr>')
vim.keymap.set({ 'n' }, '<space>p', '<cmd>FzfLua resume<cr>')
