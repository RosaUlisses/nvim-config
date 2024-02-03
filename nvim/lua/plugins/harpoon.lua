return {
  "ThePrimeagen/harpoon",
   keys = {
     {"<leader>hu", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Open harpoon ui"},
     {"<leader>ha", function() require("harpoon.mark").add_file() end, desc = "Mark file (harpoon)"},
     {"<leader>hl", function() require("harpoon.ui").nav_next() end, desc = "Next file (harpoon)"},
     {"<leader>hh", function() require("harpoon.ui").nav_prev() end, desc = "Previous file (harpoon)"},
   }
}
