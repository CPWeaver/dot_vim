lua <<EOF
-- if set, when we switch between buffers, it will not split more than once. It will switch to the existing buffer instead
vim.opt.switchbuf = 'useopen'

local goc = require'nvim-goc'
goc.setup({ verticalSplit = false })


vim.api.nvim_set_keymap('n', '<Leader>v', ':lua require("nvim-goc").Coverage()<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<Leader>vv', ':lua require("nvim-goc").ClearCoverage()<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<Leader>vt', ':lua require("nvim-goc").CoverageFunc()<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<Leader>va', ':lua cf(false)<CR><CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<Leader>vb', ':lua cf(true)<CR><CR>', {silent=true})

_G.cf = function(testCurrentFunction)
  local cb = function(path)
    if path then
      vim.cmd(":silent exec \"!xdg-open " .. path .. "\"")
    end
  end

  if testCurrentFunction then
    goc.CoverageFunc(nil, cb, 0)
  else
    goc.Coverage(nil, cb)
  end
end

-- default colors
-- vim.highlight.link('GocNormal', 'Comment')
-- vim.highlight.link('GocCovered', 'String')
-- vim.highlight.link('GocUncovered', 'Error')

-- alternate between test file and normal file
vim.api.nvim_set_keymap('n', ']a', ':lua require("nvim-goc").Alternate()<CR>', {silent=true})

-- alternate in a new split
vim.api.nvim_set_keymap('n', '[a', ':lua require("nvim-goc").Alternate(true)<CR>', {silent=true})
EOF
