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

-- Trouble
map("n", "<leader>qq", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>qb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
map("n", "<leader>qs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
map(
  "n",
  "<leader>qd",
  "<cmd>Trouble lsp toggle focus=false win.position=bottom<cr>",
  { desc = "LSP Definitions / references / ... (Trouble)" }
)
map("n", "<leader>ql", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
map("n", "<leader>qf", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

-- Telescope
map("n", "<space>fe", "<cmd>Telescope diagnostics<CR>", { desc = "See issues" })
map("n", "<space>fr", "<cmd>Telescope oldfiles<CR>", { desc = "See old files" })
map("n", "<space>jd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Open lsp definiions" })
map("n", "<space>jr", "<cmd>Telescope lsp_references<CR>", { desc = "Open lsp references" })
map("n", "<space>jt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Open lsp type definitions" })
map("n", "<space>ji", "<cmd>Telescope lsp_implementations<CR>", { desc = "Open lsp implementations" })
map("n", "<space>ga", "<cmd>Telescope git_branches<CR>", { desc = "See all branches" })
map("n", "<space>gca", "<cmd>Telescope git_commits<CR>", { desc = "See all git commits" })
map("n", "<space>gcb", "<cmd>Telescope git_bcommits<CR>", { desc = "See buffer commits" })
map("n", "<space>gs", "<cmd>Telescope git_stash<CR>", { desc = "See git stash" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
