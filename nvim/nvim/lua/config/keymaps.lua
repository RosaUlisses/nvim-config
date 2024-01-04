
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



vim.keymap.set("n", "<A-j>", "<cmd>MoveLine(1)<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-k>", "<cmd>MoveLine(-1)<CR>", { desc = "Move line down" })
vim.keymap.set("n", "<A-h>", "<cmd>MoveHChar(-1)<CR>", { desc = "Move char to right" })
vim.keymap.set("n", "<A-l>", "<cmd>MoveHChar(1)<CR>", { desc = "Move char to left" })
vim.keymap.set("n", "<leader>wf", "<cmd>MoveWord(1)<CR>", { desc = "Move word to left" })
vim.keymap.set("n", "<leader>wb", "<cmd>MoveWord(-1)<CR>", { desc = "Move word to right" })


vim.keymap.set("n", "\\", "<cmd>normal ggVG<CR>", { desc = "Select all the text" })
