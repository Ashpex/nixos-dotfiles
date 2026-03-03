-- Disable none-ls: formatters/linters installed via Nix system packages
---@type LazySpec
return {
  { "nvimtools/none-ls.nvim", enabled = false },
}
