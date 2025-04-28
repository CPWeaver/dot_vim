local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 'l', api.node.open.edit, opts("Open"))
  vim.keymap.set('n', 's', api.node.open.horizontal, opts("Open"))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts("Open"))
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts("Close Directory"))
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  view = {
    width = 45,
  },
  update_focused_file = {
    enable = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  }
})


vim.keymap.set({ 'n' }, '<space>e', '<cmd>NvimTreeToggle<cr>')
