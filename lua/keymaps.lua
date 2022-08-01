local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', '<up>', ':echoe "use k"<CR>', default_opts)
--Functional keys mappings
map('n', '<F8>', ':NERDTreeToggle<CR>', default_opts)
map('i', '<F8>', '<C-o>:NERDTreeToggle<CR>', default_opts)
map('i', '<C-l>', '<C-^>', default_opts)

-- Coc mappings
-- Use `[c` and `]c` to navigate diagnostics
map('n', '[c', '<Plug>(coc-diagnostic-prev)', default_opts)
map('n', ']c', '<Plug>(coc-diagnostic-next)', default_opts)

map('n', '<silent> <leader>h', ':call CocActionAsync("doHover")<cr>', default_opts)

-- Remap keys for gotos
map('n', '<leader>d', '<Plug>(coc-definition)', default_opts)
map('n', '<leader>y', '<Plug>(coc-type-definition)', default_opts)
map('n', '<leader>i', '<Plug>(coc-implementation)', default_opts)
map('n', '<leader>r', '<Plug>(coc-references)', default_opts)

-- Remap for rename current word
map('n', '<F2>', '<Plug>(coc-rename)', default_opts)

-- Switch spell
vim.cmd ':command Swspell :lua swspell()<CR>'
map('n', '<leader>ss', ':Swspell<CR>', default_opts)
