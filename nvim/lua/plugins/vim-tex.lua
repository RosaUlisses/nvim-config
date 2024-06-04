local function compile_and_open_the_pdf()
  vim.api.nvim_command("VimtexCompile")
  vim.api.nvim_command("VimtexView")
end

return {
  "lervag/vimtex",
  dependencies = {
    {
      "folke/which-key.nvim",
      optional = true,
      opts = {
        defaults = {
          ["<leader>t"] = { name = "+latex" },
        },
      },
    },
  },
  keys = {
    { "<leader>to", compile_and_open_the_pdf, desc = "Compile tex file and open the pdf" },
    { "<leader>tc", "<cmd>VimtexCompile<CR>", desc = "Compile tex file" },
    { "<leader>ts", "<cmd>VimtexCompileOutput<CR>", desc = "Show output of the tex compiler" },
    { "<leader>tv", "<cmd>VimtexView<CR>", desc = "View tex pdf" },
  },
}
