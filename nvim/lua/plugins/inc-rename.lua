return {
  "smjonas/inc-rename.nvim",
  config = function()
    require("noice").setup {
      presets = { inc_rename = true }
    }
  end,
}
