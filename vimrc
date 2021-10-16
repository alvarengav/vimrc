" Configuración tomada del repo de danirod https://github.com/danirod/vimrc
" Stop acting like classic vi
set nocompatible            " disable vi compatibility mode
set noswapfile              " don't create swapfiles
set nobackup                " don't backup, use git!

" Enable filetype
filetype indent plugin on
" Persist undo history between file editing sessions.
set undofile
set undodir=~/.vim/undodir

" Modify indenting settings
set autoindent              " autoindent always ON.
set shiftwidth=4
set softtabstop=4

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode
set hidden

"Configuración color scheme
if &t_Co > 2
        syntax on
        silent! colorscheme aldmeris
        let g:aldmeris_transparent = 1
        set background=dark
        highlight LineNr ctermbg=NONE

        " Sometimes I see the syntax be out of sync
        set colorcolumn=80
        set cursorline
        highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
        highlight CursorLineNr cterm=bold ctermfg=Yellow
        highlight WildMenu cterm=bold ctermfg=black " only aldmeris colorscheme

        highlight Folded cterm=reverse ctermbg=0 ctermfg=8
        highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
        highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

        " git gutter config
        highlight SignColumn ctermbg=NONE
        highlight GitGutterAdd ctermfg=Green cterm=bold
        highlight GitGutterDelete ctermfg=Red cterm=bold
        highlight GitGutterChange ctermfg=Yellow cterm=bold

        " Sometimes I see the syntax be out of sync
        noremap <F12> <Esc>:syntax sync fromstart<CR>
        inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

set fillchars+=vert:\┊

set noshowmode
set laststatus=1
set wildmenu

set number
set invrelativenumber
set showmatch

map <C-K> :bprev<CR>
map <C-N> :bnext<CR>
imap <C-K> <Esc>:bnext<CR>i
imap <C-N> <Esc>:bprev<CR>i

let mapleader=","

nmap <F5> :set invrelativenumber<CR>
imap <F5> :set invrelativenumber<CR>

tnoremap <Esc><Esc> <C-\><C-n>

"Busqueda
set hls is
nnoremap <ESC><ESC> :noh<RETURN>
