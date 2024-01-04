return {
   "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
        'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
        { mode = {"n"}, "m", "<cmd>MCstart<CR>", "Select word with multicursor" },
        { mode = {"v"}, "m", "<cmd>MCvisual<CR>", "Select marked text with multicursor" },
        { mode = {"n"}, "mp", "<cmd>MCvisualPattern<CR>", "Select every occurence of a pattern" },
        { "mc", "<cmd>MCclear<CR>", "Clear all the selections"}
    }
}
