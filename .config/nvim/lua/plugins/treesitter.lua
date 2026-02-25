-- Treesitter for syntax highlighting

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return
    end

    configs.setup({
      ensure_installed = { "go", "rust", "nix", "lua", "vim", "vimdoc", "markdown" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
