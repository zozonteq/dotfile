return {
  "xiyaowong/transparent.nvim",
  opts = function ()
    vim.cmd [[TransparentDisable]]
    return {}
  end,
  priority = 1000
}
