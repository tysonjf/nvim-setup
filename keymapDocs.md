# keymaps

Leader = " " (space)

[window]
Move between windows <C-w> h, j, k, l

[lsp and completion]
keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations
keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show diagnostics for file
keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
["<C-b>"] = cmp.mapping.scroll_docs(-4),
["<C-f>"] = cmp.mapping.scroll_docs(4),
["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
["<C-e>"] = cmp.mapping.abort(), -- close completion window
["<CR>"] = cmp.mapping.confirm({ select = false }),

[trouble diagnostics]
"<leader>xx", "<cmd>TroubleToggle<CR>", desc = "Open/close trouble list"
"<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Open trouble workspace diagnostics"
"<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics"
"<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open trouble quickfix list"
"<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Open trouble location list"
"<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble"

[format and linting]
vim.keymap.set("n", "<leader>l" -- Trigger linting for current file
vim.keymap.set({ "n", "v" }, "<leader>mp" -- format file or selection

[nvim-tree]
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

[toggleTerm and terminal]
"<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" -- toggle floating terminal
"<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle horizontal terminal" -- toggle horizontal terminal
"<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Toggle vertical terminal" -- toggle vertical terminal
vim.api.nvim_set_keymap("t", "<C-\\><C-n>", "<C-\\><C-n>", { noremap = true, silent = true }) -- exit terminal mode with <C-\><C-n> then enter in with i

[git fugitive]
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

[comments]
keymap.set("n", "]t" -- Jump to next todo comment
keymap.set("n", "[t" -- Jump to previous todo comment

[auto-session]
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

[cursor]
Copy highlighted text to system clipboard <"+y>
Copy highlighted to buffer <y>
Copy entire line to buffer <yy>

Jump to next previousline "{"
Jump to next empty line "}"

Enter insert before blinker <i>
Enter insert before blinker <a>
Enter insert at end of line <E>
select all matching words in file <#>

[tmux]
set -g prefix C-a
bind-key C-a send-prefix

# bind | split-window -h

bind n split-window -h -c "#{pane_current_path}"
bind - split-window -v

bind r source-file ~/.tmux.conf

bind j resize-pane -D 5
bind k resize-pane -U 5
bind l resize-pane -R 5
bind h resize-pane -L 5
