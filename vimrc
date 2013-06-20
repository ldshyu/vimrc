set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
"required! 
Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplete.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'mbbill/echofunc'

" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
     \ 'default' : '',
     \ 'vimshell' : $HOME.'/.vimshell_hist',
     \ 'scheme' : $HOME.'/.gosh_completions'
\ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

set number
set showcmd
set showmatch
set hlsearch
set incsearch
set sw=4
set ts=4
syntax on
filetype indent on
filetype plugin on "~/.vim/syntax "omni-complete ~/.vim/autoload ^x^n
set smarttab
set sidescroll=1
set guifont=Inconsolata\ Medium\ 14
set guifontwide=YaHei\ Mono\ 14
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ [ASCII=\%03.3b]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %=[%{GitBranch()}]
set backspace=2
set clipboard=unnamedplus
set autoindent
set smartindent
set cindent
"set spell
set encoding=utf-8
set makeprg=
set smartcase
set ruler
set cursorline
colors koehler
if has("gui_running")
else
	set t_Co=16
	"hi CursorLine cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=NONE guifg=NONE
	hi CursorLine cterm=bold ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
endif
set fileencodings=ucs-bom,utf-8,euc-jp,cp936,big5,gb18030,euc-kr,latin1
set guioptions=aegimrLt
autocmd BufNewFile,BufRead *.mip :set syntax=mips
autocmd BufNewFile,BufRead *.S :set syntax=mips
if has("gui_running")
set langmenu=zh_TW.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_TW.utf-8
endif

let Tlist_File_Fold_Auto_Close=1            
let Tlist_Sort_Type = "name"
let Tlist_Show_One_File = 1

let g:LargeFile=10
"let g:EclimTaglistEnabled=0
set csprg=gtags-cscope " use fake cscope
set cst "use cscope to get tags
cs a GTAGS . -C
"au BufWinLeave ?* mkview
"au BufWinEnter ?* silent loadview
