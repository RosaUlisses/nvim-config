-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

function debug_cpp_file()
  local current_file = vim.fn.expand("%")
  local compile_command = string.format("!g++ -g -o e \"%s\"", current_file)
  require("dapui").open()
  vim.api.nvim_command(compile_command)
  vim.api.nvim_command("DapContinue")
end

function run_cpp_file()
  local current_file = vim.fn.expand("%")
  local compile_command = string.format("!g++ -g -o e \"%s\"", current_file)
  vim.api.nvim_command(compile_command)
  vim.api.nvim_command("!./e")
end


vim.keymap.set("n", "<leader>dy", debug_cpp_file, { desc = "Debug current c++ file" })
vim.keymap.set("n", "<leader>d[", run_cpp_file, { desc = "Run current c++ file" })
