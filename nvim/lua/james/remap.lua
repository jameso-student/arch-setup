-- Opens navigator
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Copies selected text to clipboard
vim.keymap.set("v", "<leader>y", '\"+y')

-- Pastes from clipboard
vim.keymap.set("n", "<leader>pp", '\"+p')

-- Overwrites selected text
vim.keymap.set("v", "<leader>op", '\"+p')

