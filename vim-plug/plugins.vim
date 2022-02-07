" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " File Explorer
  Plug 'scrooloose/NERDTree'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview

  Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

  Plug 'https://github.com/vim-airline/vim-airline' " Status bar

  Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)

  Plug 'vim-airline/vim-airline-themes'

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  Plug 'tomasiser/vim-code-dark'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

" theme
colorscheme codedark

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
