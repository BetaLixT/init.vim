call plug#begin()
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog='/usr/bin/python'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

nnoremap <C-b> :

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

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

" - Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'morhetz/gruvbox'


Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
