vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)

    local opts = { buffer = event.buf }

    -- vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    -- vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set('n', 'gf', '<cmd>vsplit | lua vim.lsp.buf.definition()<cr>', opts)
    -- vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set('n', 'go', '<cmd>VtsExec organize_imports<cr>')
    -- FzfLua
    -- vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('n', 'gy', function() vim.lsp.buf.type_definition() end, opts)
    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n', '#$', function() vim.diagnostic.jump({ count = 1, float = true, }) end, opts)
    vim.keymap.set('n', '$#', function() vim.diagnostic.jump({ count = -1, float = true, }) end, opts)
    vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('', '<leader>a', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)

    -- handled by conform.lua
    -- vim.keymap.set({ 'n', 'x' }, '<leader>f', function() vim.lsp.buf.format({ async = true }) end, opts)

    vim.keymap.set('n', '<leader>h',

      function()
        if vim.lsp.inlay_hint.is_enabled() then
          vim.lsp.inlay_hint.enable(false)
        else
          vim.lsp.inlay_hint.enable(true)
        end
      end

    )

    --vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    --vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    --vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    --vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    --vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    --vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    --vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    --vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    --vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    --vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

    vim.lsp.inlay_hint.enable(true, { bufnr = opts.buf })
    if (client) then
      -- if client:supports_method('textDocument/completion') then
      -- vim.lsp.completion.enable(true, client.id, opts.buf, { autotrigger = true })
      -- end

      if client:supports_method('textDocument/inlayHint') then
        vim.lsp.inlay_hint.enable(true, { bufnr = opts.buf })
      end

      if client:supports_method('textDocument/documentHighlight') then
        local autocmd = vim.api.nvim_create_autocmd
        local augroup = vim.api.nvim_create_augroup('lsp_highlight', { clear = false })

        vim.api.nvim_clear_autocmds({ buffer = opts.buf, group = augroup })


        vim.opt.updatetime = 0

        autocmd({ 'CursorHold' }, {
          group = augroup,
          buffer = event.buf,
          callback = function()
            vim.lsp.buf.document_highlight()
          end
        })

        autocmd({ 'CursorMoved' }, {
          group = augroup,
          buffer = opts.buf,
          callback = vim.lsp.buf.clear_references,
        })
      end
    end
  end,
})

local lsp_capabilities = require('blink.cmp').get_lsp_capabilities({})

require("lspconfig.configs").vtsls = require("vtsls").lspconfig

vim.lsp.config('vtsls', {
  capabilities = lsp_capabilities,
  settings = {
    javascript = {
      suggest = {
        completeFunctionCalls = true
      }
    },
    typescript = {
      suggest = {
        completeFunctionCalls = true
      },
      preferences = {
        includePackageJsonAutoImports = 'off'
      },
      tsserver = {
        -- useSyntaxServer = 'never',
        -- log = 'verbose',
        maxTsServerMemory = 8192,
      },
      inlayHints = {
        parameterNames = { enabled = "literals" },
        parameterTypes = { enabled = true },
        variableTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        enumMemberValues = { enabled = true },
      }
    },
    vtsls = {
      experimental = {
        completion = {
          enableServerSideFuzzyMatch = true,
          entriesLimit = 100
        }
      },
    }
  }
})

vim.lsp.config('eslint', {
  capabilities = lsp_capabilities,
  root_markers = { '.git' },
  cmd = { 'vscode-eslint-language-server', '--max-old-space-size=8192', '--stdio' },
  settings = {
    debug = true,
    rootMarkers = { '.git/' },
    packageManager = 'pnpm',
    -- nodePath = vim.env.HOME .. '/dev/assured-dev/node_modules',
    rulesCustomizations = { { rule = '*', severity = 'warn' } },
    run = "onType",
  },
  -- libs = { vim.env.HOME ..  '/dev/assured-dev/node_modules' },
})

vim.lsp.config('lua_ls', {
  capabilities = lsp_capabilities,
  settings = {
    Lua = {
      hint = { enable = true },
      runtime = {
        version = 'LuaJIT'
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
        }
      }
    }
  }
})

require 'mason'.setup()
require 'mason-lspconfig'.setup({
  ensure_installed = { 'vtsls', 'eslint', 'jsonls', 'lua_ls', 'prismals', 'bashls', 'tailwindcss', 'yamlls' },
})
