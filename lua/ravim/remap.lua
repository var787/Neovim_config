vim.g.mapleader = " "                         -- Leader Key
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Explore mode

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Move line up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Move line down

vim.keymap.set("n", "J", "mzJ`z")             -- Append to current line
vim.keymap.set("n", "<C-d>", "<C-d>zz")       -- center cursor during page nav down
vim.keymap.set("n", "<C-u>", "<C-u>zz")       -- center cursor during page nav up
vim.keymap.set("n", "n", "nzzzv")             -- search terms stay centered
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<leader>p", [["_dP]])       --  store copy in vim clipboard

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")                    -- Useless
-- switch project directory
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- format file

-- Quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Quick Substitue word below cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
