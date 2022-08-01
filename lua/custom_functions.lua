function swspell()
  if vim.g.swspell == 1 then
    vim.opt.spell = false
    vim.opt.spelllang = ''
    vim.g.swspell = 0
    print('spellcheck off')
  else
    vim.opt.spell = true
    vim.opt.spelllang = 'ru_yo,en_us'
    vim.g.swspell = 1
    print('spellcheck on')
  end
end
