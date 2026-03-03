---@type LazySpec
return {
  "catppuccin/nvim",
  name = "catppuccin",
  ---@type CatppuccinOptions
  opts = {
    flavour = "mocha",
    transparent_background = false,
    integrations = {
      blink_cmp = true,
      gitsigns = true,
      indent_blankline = { enabled = true },
      mason = true,
      native_lsp = { enabled = true },
      neotree = true,
      notify = true,
      snacks = true,
      treesitter = true,
      which_key = true,
    },
    color_overrides = {
      mocha = {
        -- Use green as the accent color
        mauve = "#a6e3a1", -- Replace default accent with Catppuccin green
      },
    },
  },
}
