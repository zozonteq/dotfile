require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "jsonls",
    "cssls",
    "html" ,
    "denols",
    "ts_ls",
    "pyright",
    "lua_ls",
    "clangd",
    "rust_analyzer",
    -- "markdown_oxide",
    "marksman",
  }
})

local lsp = require"lspconfig"

local is_node_dir = function()
  return  lsp.util.root_pattern("package.json")(vim.fn.getcwd())
end

require("mason-lspconfig").setup_handlers {
  function(server_name)
    if server_name == "denols" then
      if is_node_dir() then
        return
      end
      lsp[server_name].setup{
        on_attatch = on_attatch,
      }
    elseif server_name == "ts_ls" then
      if not is_node_dir() then
        return
      end
      lsp[server_name].setup{
        on_attatch = on_attatch,
        single_file_support = true,
        init_options = {
          preferences = {
            importModuleSpecifierPrefernce = "relative",
            importModuleSpecifierEnding = "minimal",
          }
        }
      }
    else
      lsp[server_name].setup {
        capabilities = require('cmp_nvim_lsp').default_capabilities(
          vim.lsp.protocol.make_client_capabilities()
        )
      }
    end
  end
}
