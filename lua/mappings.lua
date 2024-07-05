require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "t" }, "<A-t>", function()
  require("nvchad.term").toggle { pos = "sp", id = "xyz" }
end, { desc = "Terminal Toggle Floating term" })
map({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
map({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')
map({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')
-- map({ "n", "i", "v" }, "<C-s>","<cmd> w <cr>")
