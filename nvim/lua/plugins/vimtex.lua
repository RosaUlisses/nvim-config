function compile_and_open_the_pdf()
  vim.api.nvim_command("VimtexCompile")
  vim.api.nvim_command("VimtexView")
end

function delete_useless_files()
  vim.api.nvim_command("!rm *.pdf")
  vim.api.nvim_command("!rm *.out")
  vim.api.nvim_command("!rm *.fls")
  vim.api.nvim_command("!rm *.log")
  vim.api.nvim_command("!rm *.aux")
  vim.api.nvim_command("!rm *.fdb_latexmk")
  vim.api.nvim_command("!rm *.fdb_latexmk")
  vim.api.nvim_command("!rm *.synctex*")
  vim.api.nvim_command("!rm *.tdo")
  vim.api.nvim_command("!rm *.toc")
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
    }
  },
  keys = {
    {"<leader>to", compile_and_open_the_pdf, desc = "Compile tex file and open the pdf"},
    {"<leader>tc", "<cmd>VimtexCompile<CR>", desc = "Compile tex file"},
    {"<leader>ts", "<cmd>VimtexCompileOutput<CR>", desc = "Show output of the tex compiler"},
    {"<leader>tv", "<cmd>VimtexView<CR>", desc = "View tex pdf"},
    {"<leader>td", delete_useless_files, desc = "View tex pdf"},
  }
}
