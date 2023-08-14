return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
  config = function()
    require("lualine").setup({
      options = { theme = "tokyonight" },
    })
  end,
}
