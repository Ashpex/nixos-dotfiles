-- LSP Configuration for Go, Nix, and Rust

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "j-hui/fidget.nvim", opts = {} },
  },
  config = function()
    -- Note: On NixOS, language servers are installed via system packages
    -- not through Mason. See configuration.nix for LSP installations.

    -- LSP keymaps on attach
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        local telescope_ok, telescope_builtin = pcall(require, "telescope.builtin")
        if telescope_ok then
          map("gd", telescope_builtin.lsp_definitions, "Goto Definition")
          map("gr", telescope_builtin.lsp_references, "Goto References")
          map("gI", telescope_builtin.lsp_implementations, "Goto Implementation")
          map("<leader>D", telescope_builtin.lsp_type_definitions, "Type Definition")
          map("<leader>ds", telescope_builtin.lsp_document_symbols, "Document Symbols")
          map("<leader>ws", telescope_builtin.lsp_dynamic_workspace_symbols, "Workspace Symbols")
        end

        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
        map("K", vim.lsp.buf.hover, "Hover Documentation")
        map("gD", vim.lsp.buf.declaration, "Goto Declaration")
      end,
    })

    -- Capabilities for completion
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
    if cmp_ok then
      capabilities = vim.tbl_deep_extend("force", capabilities, cmp_nvim_lsp.default_capabilities())
    end

    local lspconfig_ok, lspconfig = pcall(require, "lspconfig")
    if not lspconfig_ok then
      return
    end

    -- Go LSP
    lspconfig.gopls.setup({
      capabilities = capabilities,
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          gofumpt = true,
        },
      },
    })

    -- Rust LSP
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
          },
          checkOnSave = {
            command = "clippy",
          },
        },
      },
    })

    -- Nix LSP
    lspconfig.nil_ls.setup({
      capabilities = capabilities,
      settings = {
        ["nil"] = {
          formatting = {
            command = { "nixpkgs-fmt" },
          },
        },
      },
    })
  end,
}
