return {
  'fedepujol/move.nvim',
   keys = {
    {"<A-j>", "<cmd>MoveLine(1)<CR>", "Move line up"}, 
    {"<A-k>", "<cmd>MoveLine(-1)<CR>", "Move line down"}, 
    {"<A-l>", "<cmd>MoveHChar(1)<CR>", "Move char to left"}, 
    {"<A-h>", "<cmd>MoveHChar(-1)<CR>", "Move char to right"}, 

    {"<A-j>", "<cmd>MoveBlock(1)<CR>", "Move block up"}, 
    {"<A-k>", mode = {"v"}, "<cmd>MoveBlock(-1)<CR>", "Move block down"}, 
    {"<A-l>", mode = {"v"}, "<cmd>MoveHBlock(1)<CR>", "Move block to left"}, 
    {"<A-h>", mode = {"v"}, "<cmd>MoveHBlock(-1)<CR>", "Move block to right"}, 

    {"<leader>wf", "<cmd>MoveWord(1)<CR>", "Move word front"},
    {"<leader>wb", "<cmd>MoveWord(1)<CR>", "Move word back"}
   }
   
}
