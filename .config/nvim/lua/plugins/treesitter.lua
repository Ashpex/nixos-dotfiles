---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "go",
      "gomod",
      "gosum",
      "rust",
      "nix",
      "lua",
      "vim",
      "vimdoc",
      "markdown",
      "markdown_inline",
      "toml",
      "yaml",
      "json",
      "bash",
    },
  },
}
