syntax on "syntax highlighting
set number "show line numbers
set autoindent "enable auto indentation
set tabstop=4 "number of columns occupied by tab
set shiftwidth=4 "width for autoindent
set expandtab "converts tab to whitespace
filetype plugin indent on
highlight Normal ctermfg=grey ctermbg=black

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

"Neo - Vim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

" Nerd tree theme for directories
Plug 'preservim/nerdtree' 
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'

" Plugins
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'bfrg/vim-cpp-modern'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'mfussenegger/nvim-jdtls'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

colorscheme gruvbox

" Holding ctrl in insert mode allows you to traverse the graph
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l


augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType vue AutoFormatBuffer prettier
augroup END
