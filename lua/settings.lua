local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

cmd'colorscheme sonokai'

opt.number = true
opt.keymap = 'russian-jcukenwin'
opt.iminsert=0
opt.imsearch=0
opt.cursorcolumn = true
opt.cursorline = true
opt.hidden = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smarttab = true
opt.expandtab = true
opt.textwidth=100
