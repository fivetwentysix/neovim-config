let mapleader = ","


lua require('plugins')

map <Leader>t :w<cr>:!yarn test<cr>
map <Leader>f <cmd>lua require('telescope.builtin').git_files()<cr>
map <Leader>vi :e $HOME/.config/nvim/init.vim<cr>
map <Leader>vl :so $HOME/.config/nvim/init.vim<cr>
map <Leader>vp :e /Users/526/.config/nvim/lua/plugins.lua<cr>
map <Leader>ps :PackerSync<cr>
map <Leader>pi :PackerInstall<cr>
let g:airline#extensions#branch#enabled=1

map <Enter> :nohlsearch<cr>:w<cr>
colorscheme onedark

set autoindent expandtab tabstop=2 shiftwidth=2

syntax on

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

map <leader><leader> <c-6>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

map <leader>dp :Prettier<cr>

set wildignore+=*/node_modules/**
