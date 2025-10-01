require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map("n", "<c-k>", ":wincmd k<CR>")
-- map("n", "<c-j>", ":wincmd j<CR>")
-- map("n", "<c-h>", ":wincmd h<CR>")
-- map("n", "<c-l>", ":wincmd l<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
