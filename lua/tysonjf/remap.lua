vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
-- Map <C-\><C-n> to exit terminal mode
vim.api.nvim_set_keymap("t", "<C-\\><C-n>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Move lines of text
keymap.set("n", "<C-j>", "<cmd>:m+<CR>", { desc = "Move line down" })
keymap.set("n", "<C-k>", "<cmd>:m-2<CR>", { desc = "Move line up" })
keymap.set("v", "<C-j>", ":m'>+<CR>gv", { desc = "Move line down" })
keymap.set("v", "<C-k>", ":m-2<CR>gv", { desc = "Move line up" })

-- test copilot
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>cpd", "<cmd>Copilot disable<CR>", { desc = "Disable Copilot" })
keymap.set("n", "<leader>cpe", "<cmd>Copilot enable<CR>", { desc = "Enable Copilot" })

-- change caps lock to the control key
keymap.set("i", "<C-[>", "<ESC>", { desc = "Exit insert mode with <C-[>" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
