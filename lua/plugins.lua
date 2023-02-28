return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'ful1e5/onedark.nvim'
	use 'vim-airline/vim-airline'
	use 'itchyny/vim-gitbranch'
	use 'prisma/vim-prisma'
  use 'dense-analysis/ale'
  use {'neoclide/coc.nvim', branch = 'release'}
end)
