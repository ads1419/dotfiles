" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" ==================== SET COLORSCHEME =========================
syntax enable

" =========================== PLUG =============================
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'patstockwell/vim-monokai-tasty'

" Text Manipulation
Plug 'tpope/vim-sensible'             " Some better defaults
Plug 'tpope/vim-unimpaired'           " Pairs of mappings
Plug 'tpope/vim-surround'             " Surround with parentheses & co
Plug 'joom/vim-commentary'            " To comment stuff out
Plug 'jiangmiao/auto-pairs'	      " Autocomplete parentheses and quotes as you type
" Plug 'terryma/vim-multiple-cursors'   " Multiple cursors like sublime
" Plug 'godlygeek/tabular'              " For alignment
" Plug 'junegunn/vim-easy-align'        " Easier alignment
" Plug 'foosoft/vim-argwrap'            " convert lists of arguments into blocks of arguments
" Interacts with coc Plug 'tpope/vim-endwise'              " Ends control flow indentifiers
" Plug 'tpope/vim-repeat'               " Adds repeat thorugh . to other packages
" Plug 'tpope/vim-speeddating'          " Dates in vim

" GUI enhancements
Plug 'itchyny/lightline.vim'          " Better Status Bar
Plug 'mhinz/vim-startify'             " Better start screen
Plug 'scrooloose/nerdtree'            " File explorer
" Plug 'ryanoasis/vim-devicons'         " Nice filetype icons (slow)


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" VIM Monokai
let g:vim_monokai_tasty_italic=1 	" allow italics, set this before the colorscheme
let g:vim_monokai_tasty_machine_tint = 1
colorscheme vim-monokai-tasty           " set the colorscheme


" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

set cursorline          " highlight current line
set linebreak           " Have lines wrap instead of continue off-screen
set showmatch           " highlight matching [{()}]


" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
