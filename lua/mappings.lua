require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Hop
map("n", "<space>jw", "<cmd>HopWord<CR>", { desc = "Hop to word" })
map("n", "<space>jp", "<cmd>HopPattern<CR>", { desc = "Hop pattern" })
map("n", "<space>jc", "<cmd>HopChar1<CR>", { desc = "Hop to char1" })
map("n", "<space>jl", "<cmd>HopLine<CR>", { desc = "Hop to line" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
