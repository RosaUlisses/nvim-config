return {
   "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
        'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
        { mode = {"n"}, "<leader>m", "<cmd>MCstart<CR>", desc = "Select word with multicursor" },
        { mode = {"v"}, "m", "<cmd>MCvisual<CR>", desc = "Select marked text with multicursor" },
        { mode = {"n"}, "mp", "<cmd>MCvisualPattern<CR>", desc = "Select every occurence of a pattern" },
        { "mc", "<cmd>MCclear<CR>", desc = "Clear all the selections"}
    }
}
