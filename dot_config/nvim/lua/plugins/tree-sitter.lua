return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require"nvim-treesitter.configs".setup{
      ensure_installed = {
        "http", "json", "tsx", "yaml", "css", "lua", "php", "toml"
      },
      highlight = {
        enable = true,
      }
    }
    local parse_config = require"nvim-treesitter.parsers".get_parser_configs()
    parse_config.tsx.filetype_to_parsename = {"javascript", "typescript.tsx"}
  end

}
