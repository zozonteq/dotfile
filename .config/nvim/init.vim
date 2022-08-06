set number
set expandtab 
set smartindent
set shiftwidth=4
set softtabstop=4
set autochdir
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932
set wildmode=longest,full
set noswapfile
set ttimeoutlen=50
let &fcs='eob: '

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'andweeb/presence.nvim'
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'ashisha/image.vim'
Plug 'sheerun/vim-polyglot'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
call plug#end()


" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif



" airline setting
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_theme='luna'
let g:airline_symbols.branch = '⭠'
let g:airline_powerline_fonts=1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

"Color Scheme
"colorscheme material
colorscheme iceberg

" NERDTree setting
nnoremap <F5> :NERDTreeToggle <CR>

"Colorizer setting
