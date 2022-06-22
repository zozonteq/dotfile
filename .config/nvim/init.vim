"den Scripts-----------------------------
"
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tak/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/tak/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('/home/tak/.vim/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()



" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif



"End dein Scripts-------------------------i
"plug.vim set up
call plug#begin('~/.config/nvim/plugged')

"Pluglist start
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Pluglist end
call plug#end()
"Plug.vim set up end.



" NERDTree SETTINGS
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"NERDtree end


"Airline setting start
let g:airline_powerline_fonts = 1
"Airline setting end
