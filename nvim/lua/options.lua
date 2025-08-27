local set = vim.opt

set.tabstop = 4
set.shiftwidth = 4
set.autoindent = false
set.encoding = "utf8"
set.wrap = true

-- True Line number and relative numbering
set.number = true
set.relativenumber = true
set.cp = false

--Allow tabbing through options
set.wildmenu = true

-- Set the cursor, when possible, to block cursor, in normal, visual, and insert modes
set.guicursor = "n-v-c:block-Cursor"

-- Hightlight searches, and find all of them
set.hlsearch = true
set.incsearch = true

-- Set the window sperator to a managable unicode charachter
set.fillchars = vim.o.fillchars .. "vert:│"

-- Allow using clipboard through "+" register
set.clipboard = "unnamedplus"
