set path+=**



"""""""""""
"NeoBundle"
"""""""""""
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/chep/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/chep/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles 
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'easymotion/vim-easymotion'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on
""""""""""""""
""""""""""""""


"Built-in Pluggins
autocmd FileType * set number relativenumber " This is for all files
syntax enable
set smartindent
set autoindent

"Key-binds
nmap <leader>f <Plug>(easymotion-bd-w)
nnoremap ;di diwi
nnoremap diw diwx

"Snippets
noremap ,cb :-1read ~/snippets/codeBubble.md<CR>j
