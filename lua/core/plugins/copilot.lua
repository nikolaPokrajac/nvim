return {
  "zbirenbaum/copilot.lua",
  enabled = true,
  cmd = "Copilot",
  lazy = false,
  config = function()
    require("copilot").setup({
      filetypes = {
        yaml = true,
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-a>",
          -- next = "<M-j>",
          -- prev = "<M-k>",
          -- dismiss = "<C-e>",
        },
      },
    })
  end,
}
