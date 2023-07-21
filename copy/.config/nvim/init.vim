set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=a                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                   " set colour columns for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " convert tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing

syntax on
colorscheme habamax

call plug#begin()
    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'romgrk/barbar.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'nvim-lualine/lualine.nvim'
call plug#end()

lua << END
    require('lualine').setup()
END

map <C-n> :NERDTreeToggle<CR>
