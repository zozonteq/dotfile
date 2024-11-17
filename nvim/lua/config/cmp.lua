-- lspのハンドラーに設定
capabilities = require("cmp_nvim_lsp").default_capabilities()

-- lspの設定後に追加
vim.opt.completeopt = "menu,menuone,noselect"
local cmp = require"cmp"
cmp.setup({
  snippet = {
    expand = function(args)
      -- require("luasnip").lsp_expand(args.body)
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<Cr>"] = cmp.mapping.confirm({select = true})
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer"},
  })
})
