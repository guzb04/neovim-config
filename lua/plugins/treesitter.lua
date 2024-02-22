return {
  {

    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "andymass/vim-matchup",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require("nvim-treesitter.install").compilers = { "zig" }
      local config = require("nvim-treesitter.configs")
      config.setup({
        matchup = {
          enable = true,
        },
        autotag = {
          enable = true,
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup({})
    end,
  },
}
