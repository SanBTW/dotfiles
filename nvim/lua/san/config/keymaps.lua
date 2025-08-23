local map = vim.keymap.set

-- seamlessly treat visual lines as actual lines when moving around.
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- keeps the cursor in the center when doing C-d/C-u or n/N
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- keeps the cursor in position when doing J
map("n", "J", "mzJ`z")

-- move lines of code in normal mode using ALT-K/ALT-K
map("n", "<A-J>", "<cmd>m .+1<cr>==")
map("n", "<A-K>", "<cmd>m .-2<cr>==")

-- clear highlight search using esc
map("n", "<esc>", "<cmd>nohl<cr>")

-- no yank when doing x
map("n", "x", '"_x')

-- go to previous buffer / next buffer using [b/]b
map("n", "[b", "<cmd>bp<cr>")
map("n", "]b", "<cmd>bn<cr>")
