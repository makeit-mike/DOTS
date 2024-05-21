local configs = require("lspconfig.configs")
local util = require("lspconfig.util")
local cmp = require'cmp'

-- LSP specific remaps
local opts = { buffer = bufnr, noremap = true, silent = true }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts) 

if not configs.sls then
  configs.sls = {
    default_config = {
      cmd = { "static-ls" },
      filetypes = { "haskell" },
      root_dir = util.root_pattern("*.cabal", "package.yaml"),
      single_file_support = false,
      settings = {},
    },
  }
end

if not configs.tss then
  configs.tss = {
    default_config = {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
      init_options = { hostInfo = "neovim" },
      root_dir = util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git"),
      single_file_support = true,
    },
  }
end

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) 
    end,
  },
  window = { },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sls.setup {
  autostart = true,
  capabilities = capabilities,
}

require("lspconfig").tss.setup {
  autostart = true,
  capabilities = capabilities,
}
