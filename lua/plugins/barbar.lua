return {
  "romgrk/barbar.nvim",
  lazy = false,
  dependencies = {
    'lewis6991/gitsigns.nvim',   -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons',
  },
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {}
}
