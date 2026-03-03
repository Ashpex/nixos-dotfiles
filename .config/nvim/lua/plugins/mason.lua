-- Mason disabled: LSP servers and tools installed via Nix system packages
---@type LazySpec
return {
  { "williamboman/mason.nvim", opts = { PATH = "skip" } },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = { ensure_installed = {} },
  },
}
