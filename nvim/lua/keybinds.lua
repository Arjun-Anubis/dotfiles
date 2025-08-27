-- Setting the leader key to <Space>
vim.g.mapleader = " "

-- Define a function map to map things in any mode
function map(mode, keybind, purpose) 
	-- Use the vim api function nvim_set_keymap
	vim.keymap.set( mode, keybind, purpose,
			{ noremap = true, silent = true } )
end

-- Define nmap, normal mode map
function nmap( keybind, purpose )
	map( "n", keybind, purpose )
end

-- Window keybinds, crucial, move between splits
nmap( "<C-h>", "<C-w>h" )
nmap( "<C-j>", "<C-w>j" )
nmap( "<C-k>", "<C-w>k" )
nmap( "<C-l>", "<C-w>l" )


-- Leader Bindings
nmap( "<leader>w", "<C-w>" )
nmap( "<leader>v", ":vsplit" )
nmap( "<leader>s", ":split" )


-- Telescope Bindings
nmap("<leader> ", "<cmd>Telescope buffers<CR>" )
nmap("<leader>o", "<cmd>Telescope find_files<CR>" )

