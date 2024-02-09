return {
	{
		"tpope/vim-fugitive",
		lazy = true,
	},
	{
		"lewis6991/gitsigns.nvim",
    lazy = false,
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame <CR>", {})
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk <CR>", {})
		end,
	},
}
