" Configuration file for vim

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility

filetype off
if has('unix')
  set runtimepath+=$HOME/.vim/bundle/vundle
elseif has('win32')
  set runtimepath+=$HOME/vimfiles/bundle/vundle
endif

call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'PProvost/vim-ps1'
Plugin 'Raimondi/delimitMate.git'
if has('unix')
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'ternjs/tern_for_vim'
endif

Plugin 'airblade/vim-gitgutter'
Plugin 'aklt/plantuml-syntax.git'
Plugin 'rizzatti/dash.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/confluencewiki.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dbakker/vim-lint.git'
Plugin 'digitaltoad/vim-jade.git'
Plugin 'edkolev/promptline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tommcdo/vim-fubitive'
Plugin 'hallison/vim-markdown.git'
Plugin 'helino/vim-json.git'
Plugin 'jamessan/vim-gnupg.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jlanzarotta/bufexplorer.git'
Plugin 'junegunn/vim-easy-align.git'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'luochen1990/rainbow'
Plugin 'moll/vim-node.git'
Plugin 'mtth/scratch.vim.git'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'tmhedberg/matchit.git'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-afterimage'
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-speeddating'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'vim-scripts/CSApprox.git'
Plugin 'vim-scripts/DirDiff.vim.git'
Plugin 'vim-scripts/Gundo.git'
Plugin 'vim-scripts/L9.git'
Plugin 'vim-scripts/Modeliner.git'
Plugin 'vim-scripts/csv.vim.git'
Plugin 'vim-scripts/vim-coffee-script.git'
Plugin 'vim-utils/vim-man'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-shell'
Plugin 'yegappan/mru.git'
Plugin 'Yggdroot/indentLine'
Plugin 'majutsushi/tagbar'

" Themes

Plugin 'badwolf'
Plugin 'chriskempson/base16-vim'
Plugin 'atweiden/vim-colors-behelit'
Plugin 'baskerville/bubblegum'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'vim-scripts/mimicpak'
Plugin 'tomasr/molokai'
Plugin 'w0ng/vim-hybrid'
Plugin 'Donearm/Laederon'
Plugin 'Pychimp/vim-luna'
Plugin 'Pychimp/vim-sol'
Plugin 'Donearm/Ubaryd'
Plugin 'tpope/vim-vividchalk'


call vundle#end()
filetype plugin indent on

set backspace=indent,eol,start	" more powerful backspacing

" Now we set some defaults for the editor 
set textwidth=0		" Don't wrap words by default
set nobackup		" Don't keep a backup file
"Make p in Visual mode replace the selected text with the "" register.
xnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
" syntax on

" Debian uses compressed helpfiles. We must inform vim that the main
" helpfiles is compressed. Other helpfiles are stated in the tags-file.
set helpfile=$VIMRUNTIME/doc/help.txt


if has("autocmd")
 " Enabled file type detection
 " Use the default filetype settings. If you also want to load indent files
 " to automatically do language-dependent indenting add 'indent' as well.
filetype plugin on
set omnifunc=syntaxcomplete#Complete

endif " has ("autocmd")

augroup filetype
  au BufRead reportbug.*		set ft=mail
  au BufRead reportbug-*		set ft=mail
  au BufNewFile,BufRead *.sj set ft=javascript
  au BufNewFile,BufRead *.scs set ft=javascript
  au BufNewFile,BufRead *.json set ft=json
  au BufNewFile,BufRead *.mkd set ft=mkd
  au BufNewFile,BufRead *.mdown set ft=mkd
  au BufNewFile,BufRead *.vala set ft=vala
  au BufNewFile,BufRead *.xaml        setf xml
augroup END

"set shell=bash\ -i

" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set ruler
syntax on
set ai
set et
set shiftwidth=4
set softtabstop=4
set tabstop=4
set hls
set rnu
set nu
set mouse=a
set list
set listchars=tab:>.,trail:.

set popt=paper:letter,syntax:y
set foldmethod=indent
set nofen
set wildmenu
set wildignore=*.o,*.obj,*.bak,*.exe
set nocp
set ssop-=blank
"set ssop-=buffers
set ssop-=help
set ssop-=options
set ssop+=resize
set ssop+=winpos
set ssop+=curdir
set diffopt+=iwhite
filetype indent on
set smartindent
let g:xml_syntax_folding = 1

let g:DirDiffExcludes = "*.un~,*.bak,*.sw?,.SyncIgnore,node_modules,.SyncArchive,.SyncID,.sync,results,Thumbs.db,uploads,*.orig,media,.DS_Store,staticConfig.json,edgesToRestart.json,201[4-9]-[0-9][0-9]-[0-9][0-9]-CL*-*[0-9],buildMap.json"
let g:DirDiffAddArgs = "-w"
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = {
  \ 'dir':  'results'
  \ }
let g:ctrlp_clear_cache_on_exit = 0
set clipboard=unnamed
set guifont=Anonymice\ Powerline:h12
set hidden
let NERDTreeIgnore = ['\.bak$', '\.orig$']
let NERDTreeChDirMode = 2
let NERDTreeStatusline = -1 
colo molokai

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:session_extension = '.vis'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 30
let g:session_autosave_silent = 1
let g:session_autoload = 'no'
let g:session_default_to_last = 0

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'man']
let g:indent_guides_color_change_percent = 2

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:indentLine_char = '|'
let g:indentLine_color_gui = '#333333'

set directory=~/.vim/swapdir
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>a
nmap <F3> :NERDTreeFocus<CR>
imap <F3> <ESC>:NERDTreeFocus<CR>
nmap <F4> :NERDTreeToggle<CR>
imap <F4> <ESC>:NERDTreeToggle<CR>
map <F7> <C-P><C-\>f<CR>
map <F9> <C-w><C-w><C-w><C-w>-D
map <F10> <C-w><C-w><C-w><C-w>jD

nmap <C-S-tab> :bprevious<cr>
nmap <C-tab> :bnext<cr>
nmap <C-z> :bp <BAR> bd #<cr>
map <C-S-tab> :bprevious<cr>
map <C-tab> :bnext<cr>
map <C-z> :bp <BAR> bd #<cr>
imap <C-S-tab> <ESC>:bprevious<cr>i
imap <C-tab> <ESC>:bnext<cr>i
imap <C-t> <ESC>:enew<cr>
imap <C-z> <ESC>:bp <BAR> bd #<cr>
nmap <C-t> :enew<cr>

cmap CD cd %:p:h<cr>

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType c,cpp set noet
"autocmd FileType javascript syntax clear javaScriptFuncDef
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType xml setl sw=2 sts=2 et
autocmd FileType jade setl sw=2 sts=2 et

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:rainbow_active = 1

" au GUIEnter * simalt ~x
set nrformats=hex

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
""  setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

nmap <silent> <leader>d <Plug>DashSearch


" function! WriteSession()
"     if(v:this_session != "")
"         exe "mksession! " . v:this_session
"     endif
" endfunction
" au VimLeave * :call WriteSession()
" au VimEnter ~/.vim/sessions/*.vis CloseDupTabs
" au SessionLoadPost  ~/.vim/sessions/*.vis CloseDupTabs
