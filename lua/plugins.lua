--bootstrap packer:
--automatically install and set up packer.nvim on any machine you clone your configuration to
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'sainnhe/sonokai'
  use 'sheerun/vim-polyglot'
  use 'preservim/NERDTree'
	use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  if packer_bootstrap then
    require('packer').sync()
  end
end)
