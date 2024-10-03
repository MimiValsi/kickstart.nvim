local map = vim.keymap.set
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

map('n', '<leader>e', ':Ex<cr>', { desc = 'Open explorer' })

--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('n', ';', ':', { desc = 'Swap cmd shortcut' })

map('n', '<tab>', ':tabn<cr>', { desc = 'Go to next tab' })
map('n', '<S-tab>', ':tabp<cr>', { desc = 'Go to prev tab' })

map('n', 'Q', ':noh<cr>', { desc = 'Disable Q and cleans mini buffer from messages' })

map('i', '<C-h>', '<left>', { desc = 'Move focus to the left window' })
map('i', '<C-l>', '<right>', { desc = 'Move focus to the right window' })
map('i', '<C-j>', '<down>', { desc = 'Move focus to the lower window' })
map('i', '<C-k>', '<up>', { desc = 'Move focus to the upper window' })

map('i', 'jk', '<esc>', { desc = 'Swap exit Insert mode' })

map('i', '<C-b>', '<ESC>^i', { desc = 'Go to begining of line' })
map('i', '<C-e>', '<End>', { desc = 'Go to end of line' })

map('v', 'J', ":m '>+1<CR>gv=gv", {
  desc = [[make the selected hightlighted line and go up one line, indent if possible and highlight it again]],
})

map('v', 'K', ":m '<-2<CR>gv=gv", {
  desc = [[make the selected hightlighted line and go up one line, indent if possible and highlight it again]],
})

map('v', 'sd', '<esc>', { desc = 'Swap exit Visual mode' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

map('t', '<CkSpace><C-Space>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
