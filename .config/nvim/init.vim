
"Plugin system
call plug#begin('~/.local/share/nvim/plugged')

Plug 'chriskempson/vim-tomorrow-theme'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'floobits/floobits-neovim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'cohama/lexima.vim'
call plug#end()

colo Tomorrow-Night

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set hidden                        " Handle multiple buffers better.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set autowrite " Writes on make/shell commands
set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set bs=2 " Backspace over everything in insert mode
set backspace=indent,eol,start    " Intuitive backspacing.
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent
set smarttab
set expandtab
set title                         " Set the terminal's title
set visualbell                    " No beeping.

" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with
" ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
"
" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" Enable JSX for js too
let g:jsx_ext_required = 0
