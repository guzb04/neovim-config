return {
	{
		"adigitoleo/vim-mellow",
		lazy = false,
		name = "mellow",
		priority = 1000,
		config = function()
        vim.g.mellow_user_colors = 1
        vim.cmd.colorscheme("mellow")
    end,
	},
}
