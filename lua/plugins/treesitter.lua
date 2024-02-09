return {
  {

    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "andymass/vim-matchup",
      lazy = true,
    },
    config = function()
      require("nvim-treesitter.install").compilers = { "zig" }
      local config = require("nvim-treesitter.configs")
      config.setup({
        matchup = {
          enable = true,
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
