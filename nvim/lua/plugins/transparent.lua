return {
  "xiyaowong/transparent.nvim",
  opts = function ()
    vim.cmd [[TransparentEnable]]
    return {}
  end,
  priority = 100
}
