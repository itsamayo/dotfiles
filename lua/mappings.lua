require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Hop
map("n", "<leader>jw", "<cmd>HopWord<CR>", { desc = "Hop to word" })
map("n", "<leader>jp", "<cmd>HopPattern<CR>", { desc = "Hop pattern" })
map("n", "<leader>jc", "<cmd>HopChar1<CR>", { desc = "Hop to char1" })
map("n", "<leader>jl", "<cmd>HopLine<CR>", { desc = "Hop to line" })

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
map("n", "<leader>fe", "<cmd>Telescope diagnostics<CR>", { desc = "See issues" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "See old files" })
map("n", "<leader>rd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Open lsp definiions" })
map("n", "<leader>rr", "<cmd>Telescope lsp_references<CR>", { desc = "Open lsp references" })
map("n", "<leader>rt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Open lsp type definitions" })
map("n", "<leader>ri", "<cmd>Telescope lsp_implementations<CR>", { desc = "Open lsp implementations" })
map(
  "n",
  "<leader>rs",
  "<cmd> split | lua vim.lsp.buf.definition()<CR>",
  { desc = "Open definition in horizontal split" }
)
map(
  "n",
  "<leader>rv",
  "<cmd> vsplit | lua vim.lsp.buf.definition()<CR>",
  { desc = "Open definition in vertical split" }
)
map("n", "<leader>ga", "<cmd>Telescope git_branches<CR>", { desc = "See all branches" })
map("n", "<leader>gca", "<cmd>Telescope git_commits<CR>", { desc = "See all git commits" })
map("n", "<leader>gcb", "<cmd>Telescope git_bcommits<CR>", { desc = "See buffer commits" })
map("n", "<leader>gs", "<cmd>Telescope git_stash<CR>", { desc = "See git stash" })

map({ "n", "v" }, "<C-t>", function()
  require("menu").open "default"
end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>dv", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd "DiffviewOpen"
  else
    vim.cmd "DiffviewClose"
  end
end, {
  desc = "Toggle Diffview window",
})

-- Gitsigns
map("n", "<leader>gba", "<cmd>Gitsigns blame<cr>", { desc = "Gitsigns blame all" })
map("n", "<leader>gbl", "<cmd>Gitsigns blame_line<cr>", { desc = "Gitsigns blame line" })
map("n", "<leader>gn", "<cmd>Gitsigns next_hunk<cr>", { desc = "Gitsigns next hunk" })
map("n", "<leader>gp", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Gitsigns prev hunk" })
map("n", "<leader>gP", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Gitsigns preview hunk" })
map("n", "<leader>gH", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Gitsigns rest hunk" })
map("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<cr>", { desc = "Gitsigns reset buffer" })
map("n", "<leader>gS", "<cmd>Gitsigns stage_buffer<cr>", { desc = "Gitsigns stage buffer" })
map("n", "<leader>gU", "<cmd>Gitsigns reset_buffer_index<cr>", { desc = "Gitsigns unstage buffer" })
map("n", "<leader>gD", "<cmd>Gitsigns diffthis<cr>", { desc = "Gitsigns diff buffer" })
