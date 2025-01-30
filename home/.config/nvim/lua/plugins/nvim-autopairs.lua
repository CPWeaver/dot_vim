local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

npairs.setup({ map_bs = false, map_cr = false })

-- skip it, if you use another global object
_G.MUtils= {}

-- If you want insert `(` after select function or method item
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local cmp = require('cmp')
-- cmp.event:on(
  -- 'confirm_done',
  -- cmp_autopairs.on_confirm_done()
-- )
