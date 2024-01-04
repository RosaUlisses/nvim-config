function set_input_file() 
  local current_file = vim.fn.expand("%")
  local test_case_file =  current_file:match("(.-%..-)%..+") .. "_input0.txt"
  local copy_command = string.format("!cp \"%s\" input.txt", test_case_file)
  vim.api.nvim_command(copy_command)
end

return {
	'xeluxee/competitest.nvim',
	dependencies = 'MunifTanjim/nui.nvim',
	config = function() require('competitest').setup({
    compile_command = {
      cpp = { exec = "g++", args = { "-Wall", "-DONLINE_JUDGE=1", "$(FNAME)", "-o", "$(FNOEXT)" } },
    },
    template_file = {
      cpp = "~/Programming/Competitive-Programming/cp/template.cpp"
    }
  }) end,

  template_file = true,
  evaluate_template_modifiers = true,

  keys = {
    { "<leader>cp", "<cmd>CompetiTest receive problem<CR>", desc = "CompetitTest receive problem"},
    { "<leader>cc", "<cmd>CompetiTest receive contest<CR>", desc = "CompetitTest receive contest"},
    { "<leader>ck", "<cmd>CompetiTest run<CR>", desc = "CompetitTest run test cases"},
    { "<leader>cs", "<cmd>CompetiTest show_ui<CR>", desc = "CompetitTest show ui"},
    { "<leader>ci", set_input_file, desc = "Set input.txt file" }
  }
}
