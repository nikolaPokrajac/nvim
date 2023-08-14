return { -- Useful plugin to show you pending keybinds.
  "folke/which-key.nvim",
  event = "VimEnter", -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require("which-key").setup()

    -- Document existing key chains
    require("which-key").register({
      ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
      ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
      ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
      ["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
      ["<leader>s"] = { name = "[S]plit", _ = "which_key_ignore" },
      ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
      ["<leader>t"] = { name = "[T]ab", _ = "which_key_ignore" },
      ["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
      ["<leader>g"] = { name = "[G]it", _ = "which_key_ignore" },
      ["<leader>e"] = { name = "[E]xplorer", _ = "which_key_ignore" },
      ["<leader>m"] = { name = "[M]ake Prettier - Format", _ = "which_key_ignore" },
      ["<leader>n"] = { name = "[N]o highlight - clear search highlight", _ = "which_key_ignore" },
      ["<leader>x"] = { name = "quickfix / diagnostics", _ = "which_key_ignore" },
      ["<leader>l"] = { name = "[L]azygit", _ = "which_key_ignore" },
    })
    -- visual mode
    require("which-key").register({
      ["<leader>h"] = { "Git [H]unk" },
    }, { mode = "v" })
  end,
}
