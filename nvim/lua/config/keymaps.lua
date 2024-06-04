local function run_cpp_file()
  local current_file = vim.fn.expand("%")
  local compile_command = string.format('!g++ -flto "%s" -o exe -std=c++20', current_file)
  local run_command = string.format("!timeout 3s ./exe")
  vim.api.nvim_command(compile_command)
  vim.api.nvim_command(run_command)
end

-- this is a functions for spliting windows in the way that i like when I am training competitive programming
local function split_windows_for_cp()
  vim.api.nvim_command("vsplit")
  vim.api.nvim_command("split")
  vim.api.nvim_command("wincmd k")
  vim.api.nvim_command("vsplit")
  vim.api.nvim_command("e output.txt")
  vim.api.nvim_command("wincmd h")
  vim.api.nvim_command("e input.txt")
  vim.api.nvim_command("wincmd j")
  vim.api.nvim_command("e error.txt")
  vim.api.nvim_command("wincmd h")
end

local function close_splitted_windows_for_cp()
  vim.api.nvim_command("wincmd l")
  vim.api.nvim_command("q")
  vim.api.nvim_command("q")
  vim.api.nvim_command("wincmd l")
  vim.api.nvim_command("q")
end


vim.keymap.set("n", "<leader>dk", run_cpp_file, { desc = "Run c++ file" })
vim.keymap.set("n", "\\", "<cmd>normal ggVG<CR>", { desc = "Select all the text" })
vim.keymap.set("n", "<leader>ws", split_windows_for_cp, { desc = "Split windows" })
vim.keymap.set("n", "<leader>wk", close_splitted_windows_for_cp, { desc = "Close windows" })
vim.keymap.set({"n", "o", "x"}, "\"", function() require("flash").treesitter() end, { desc = "Flash treesitter" })
