call plug#begin()
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog='/usr/bin/python'

set number relativenumber
set hlsearch
set laststatus=2
set vb
set ruler
set spelllang=en_us
set autoindent
set mouse=a
set clipboard=unnamed
set noscrollbind
set wildmenu
set autochdir

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim'
Plug 'dense-analysis/ale'
Plug 'puremourning/vimspector'
inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"
nnoremap <C-b> :

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'mkitt/tabline.vim'

" - Code completion
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" - File Explorer
Plug 'preservim/nerdtree'
nnoremap <C-b> :NERDTreeToggle<CR>

" - Status bar config
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" - Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" - Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" - C#
Plug 'OmniSharp/omnisharp-vim'
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" - Theme
" Plug 'NLKNguyen/papercolor-theme'
" set termguicolors
" set background=dark


Plug 'morhetz/gruvbox'



Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger = '<f6>'

" - coc
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

call plug#end()

" set termguicolors
set background=dark
colorscheme Gruvbox
