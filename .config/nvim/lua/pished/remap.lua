vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

vim.keymap.set("n", "J", "mzJ`z") -- keep cursor at beginning of line
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- half page jump down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- half page jump up
vim.keymap.set("n", "n", "nzzzv") -- search terms stay in middle
vim.keymap.set("n", "N", "Nzzzv") -- search terms stay in middle

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]]) -- preserve copied term on paste

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- copy to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>") -- prevents Q
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- swap projects
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- quickfix navigation stuff
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- global replace of current word
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- quickly make script executeable

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
