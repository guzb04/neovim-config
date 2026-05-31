return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",

    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = vim.lsp.config

      vim.lsp.config("phpactor", {
        capabilities = capabilities,
      })
      vim.lsp.enable("phpactor")
      vim.lsp.config("pylsp", {
        capabilities = capabilities,
      })
      vim.lsp.config("jdtls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("jdtls")
      vim.lsp.config("cobol_ls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("cobol_ls")
      vim.lsp.config("gopls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("gopls")
      vim.lsp.config("dockerls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("dockerls")
      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })
      vim.lsp.enable("clangd")
      vim.lsp.config("html", {
        capabilities = capabilities,
      })
      vim.lsp.enable("html")

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      })
      vim.lsp.config("unocss", {
        capabilities = capabilities,
      })
      vim.lsp.enable("unocss")
      vim.lsp.config("jsonls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("jsonls")
      vim.lsp.config("angularls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("angularls")
      vim.lsp.config("csharp_ls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("csharp_ls")
      vim.lsp.config("cssls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("cssls")
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, {})
      vim.g.diagnostics_active = true
    end,
  },
}
