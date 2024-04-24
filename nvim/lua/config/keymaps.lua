local function debug_cpp_file()
  local current_file = vim.fn.expand("%")
  local compile_command = string.format('!g++ -g -o e -std=c++20 "%s"', current_file)
  require("dapui").open()
  vim.api.nvim_command(compile_command)
  vim.api.nvim_command("DapContinue")
end

local function run_cpp_file()
  local current_file = vim.fn.expand("%")
  local compile_command = string.format('!g++ -flto "%s" -o exe -std=c++20', current_file)
  local run_command = string.format("!./exe")
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
  for i = 0, 2, 1 do
    vim.api.nvim_command("q")
  end
end


vim.keymap.set("n", "<leader>dy", debug_cpp_file, { desc = "Debug c++ file" })
vim.keymap.set("n", "<leader>dk", run_cpp_file, { desc = "Run c++ file" })

vim.keymap.set("n", "<A-j>", "<cmd>MoveLine(1)<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-k>", "<cmd>MoveLine(-1)<CR>", { desc = "Move line down" })
vim.keymap.set("n", "<A-h>", "<cmd>MoveHChar(-1)<CR>", { desc = "Move char to right" })
vim.keymap.set("n", "<A-l>", "<cmd>MoveHChar(1)<CR>", { desc = "Move char to left" })
vim.keymap.set("n", "<leader>wf", "<cmd>MoveWord(1)<CR>", { desc = "Move word to left" })
vim.keymap.set("n", "<leader>wb", "<cmd>MoveWord(-1)<CR>", { desc = "Move word to right" })

vim.keymap.set("n", "\\", "<cmd>normal ggVG<CR>", { desc = "Select all the text" })

vim.keymap.set("n", "<leader>rn", ":IncRename ", { desc = "rename" })

vim.keymap.set("n", "<leader>ws", split_windows_for_cp, { desc = "Split windows" })
vim.keymap.set("n", "<leader>wk", close_splitted_windows_for_cp, { desc = "Close windows" })

vim.keymap.set({"n", "o", "x"}, "'", function() require("flash").treesitter() end, { desc = "Flash treesitter" })


