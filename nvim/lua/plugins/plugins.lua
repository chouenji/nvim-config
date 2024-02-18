return {
  -- Configure LazyVim to load any theme added to colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- transparent background
  { "xiyaowong/transparent.nvim" },

  -- catppuccin theme
  { "catppuccin/nvim", name = "catppuccin", lazy = false },

  -- searchbar ui
  { "VonHeikemen/searchbox.nvim" },

  -- file explorer
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- nvim-surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },

  -- git-blame
  { "f-person/git-blame.nvim" },
}
