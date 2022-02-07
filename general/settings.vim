set number
set nowrap
set pumheight=10
set ruler
set iskeyword+=-
set mouse=a
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set clipboard=unnamedplus
set cursorline
set t_Co=256

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

imap kj <Esc>
imap jk <Esc>

" Remove all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set backspace=indent,eol,start
