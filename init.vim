let mapleader = ","


lua require('plugins')

map <Leader>t :!yarn test<cr>
map <Leader>f <cmd>lua require('telescope.builtin').git_files()<cr>
map <Leader>vi :e $HOME/.config/nvim/init.vim<cr>
map <Leader>vl :so $HOME/.config/nvim/init.vim<cr>
map <Leader>vp :e /Users/526/.config/nvim/lua/plugins.lua<cr>
map <Leader>ps :PackerSync<cr>:PackerInstall<cr>

map <Enter> :w<cr>
colorscheme onedark
