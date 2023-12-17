vim.g.mapleader = " "

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
	{ from = "S",          to = ":w<CR>" },
	{ from = "Q",          to = ":q<CR>" },
	{ from = "Y",          to = "\"+y",                                                mode = mode_v },
	{ from = "`",          to = "~",                                                   mode = mode_nv },

	-- Movement
	{ from = "K",          to = "5k",                                                  mode = mode_nv },
	{ from = "J",          to = "5j",                                                  mode = mode_nv },
	{ from = "H",          to = "0",                                                   mode = mode_nv },
	{ from = "L",          to = "$",                                                   mode = mode_nv },
	{ from = "<C-k>",      to = "5<C-y>",                                              mode = mode_nv },
	{ from = "<C-j>",      to = "5<C-e>",                                              mode = mode_nv },
	{ from = "c,",         to = "c%", },


	-- Actions

	-- Useful actions
	{ from = ",",          to = "%",                                                   mode = mode_nv },
	{ from = "\\v",        to = "v0", },
	{ from = "v\\",        to = "v$h", },
	{ from = "<c-a>",      to = "<ESC>A",                                              mode = mode_i },
	{ from = "<c-b>",      to = "<ESC>A {}<ESC>i<CR><ESC>ko",                          mode = mode_i },

	-- Window & splits
	{ from = "<leader>w",  to = "<C-w>w", },
	{ from = "<leader>k",  to = "<C-w>k", },
	{ from = "<leader>j",  to = "<C-w>j", },
	{ from = "<leader>h",  to = "<C-w>h", },
	{ from = "<leader>l",  to = "<C-w>l", },
	{ from = "qw",         to = "<C-w>o", },
	{ from = "s",          to = "<nop>", },
	{ from = "sk",         to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", },
	{ from = "sj",         to = ":set splitbelow<CR>:split<CR>", },
	{ from = "sh",         to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", },
	{ from = "sl",         to = ":set splitright<CR>:vsplit<CR>", },
	{ from = "<up>",       to = ":res +5<CR>", },
	{ from = "<down>",     to = ":res -5<CR>", },
	{ from = "<left>",     to = ":vertical resize-5<CR>", },
	{ from = "<right>",    to = ":vertical resize+5<CR>", },
	-- { from = "sh",            to = "se", },
	-- { from = "sh",            to = "<C-w>t<C-w>K", },
	-- { from = "sv",            to = "<C-w>t<C-w>H", },
	-- { from = "srh",           to = "<C-W>b<C-w>K", },
	-- { from = "srv",           to = "<C-w>b<C-w>H", },

	-- Tab management
	{ from = "T",          to = ":tabe<CR>", },
	{ from = "tt",         to = ":tab split<CR>", },
	{ from = "t<left>",    to = ":-tabnext<CR>", },
	{ from = "t<right>",   to = ":+tabnext<CR>", },
	{ from = "t<up>",      to = ":-tabmove<CR>", },
	{ from = "t<down>",    to = ":+tabmove<CR>", },

	-- Other
	-- { from = "<leader>sw",    to = ":set wrap<CR>" },
	{ from = "<leader>nh", to = ":nohlsearch<CR>" },
	-- { from = "<f10>",         to = ":TSHighlightCapturesUnderCursor<CR>" },
	-- { from = "<leader>o",     to = "za" },
	-- { from = "<leader>pr",    to = ":profile start profile.log<CR>:profile func *<CR>:profile file *<CR>" },
	-- { from = "<leader>rc",    to = ":e ~/.config/nvim/init.lua<CR>" },
	-- { from = "<leader>rv",    to = ":e .vim.lua<CR>" },
	{ from = ",v",         to = "v%" },
	-- { from = "<leader><esc>", to = "<nop>" },

	-- Joshuto
	-- { from = "R",             to = ":Joshuto<CR>" },
}

for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end

local function run_vim_shortcut(shortcut)
	local escaped_shortcut = vim.api.nvim_replace_termcodes(shortcut, true, false, true)
	vim.api.nvim_feedkeys(escaped_shortcut, 'n', true)
end

-- close win below
vim.keymap.set("n", "<leader>q", function()
	vim.cmd("TroubleClose")
	local wins = vim.api.nvim_tabpage_list_wins(0)
	if #wins > 1 then
		run_vim_shortcut([[<C-w>j:q<CR>]])
	end
end, { noremap = true, silent = true })
