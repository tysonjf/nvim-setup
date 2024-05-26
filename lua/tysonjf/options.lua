local opt = vim.opt

-- tabs & indenting
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false

-- Enable line numbers
opt.number = true
opt.relativenumber = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- highlight search results
opt.cursorline = true

-- scroll settings
opt.scrolloff = 10

-- clipboard
opt.clipboard:append("unnamedplus")

-- show matching brackets
opt.showmatch = true

-- turn off swap files
opt.swapfile = false
