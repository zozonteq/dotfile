return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      window = {
        width = 40
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignore = false,
        never_show = {
          ".git",
          "DS_Store",
          ".history"
        }
      }
    }
  }
}
