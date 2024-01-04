return {
  "ThePrimeagen/harpoon",
   keys = {
     {"<leader>hu", function() require("harpoon.ui").toggle_quick_menu() end, "Open harpoon ui"},
     {"<leader>ha", function() require("harpoon.mark").add_file() end, "Mark file (harpoon)"},
     {"<leader>hl", function() require("harpoon.ui").nav_next() end, "Next file (harpoon)"},
     {"<leader>hh", function() require("harpoon.ui").nav_prev() end, "Previous file (harpoon)"},
   }
}
