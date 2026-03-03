-- Mason disabled: LSP servers and tools installed via Nix system packages
---@type LazySpec
return {
  { "williamboman/mason.nvim", enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  { "WhoIsSethDaniel/mason-tool-installer.nvim", enabled = false },
  { "jay-babu/mason-null-ls.nvim", enabled = false },
}
