" Configuration file for vim

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility

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
  Plugin 'vim-scripts/csapprox.git'               " Make gvim-only colorschemes work transparently in terminal vim http://www.vim.org/scripts/script.php?script_id=2390
endif

Plugin 'airblade/vim-gitgutter'                 " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plugin 'aklt/plantuml-syntax.git'               " vim syntax file for plantuml
Plugin 'bogado/file-line'                       " Plugin for vim to enabling opening a file in a given line http://www.vim.org/scripts/script.php?script_id=2184
Plugin 'bronson/vim-trailing-whitespace'        " Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plugin 'christoomey/vim-tmux-navigator'         " Seamless navigation between tmux panes and vim splits
Plugin 'ctrlpvim/ctrlp.vim.git'                 " Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder. http://ctrlpvim.github.com/ctrlp.vim
Plugin 'dbakker/vim-lint.git'                   " Check your .vimrc for errors
Plugin 'digitaltoad/vim-pug'                    " Vim Pug (formerly Jade) template engine syntax highlighting and indention
Plugin 'edkolev/promptline.vim'                 " Generate a fast shell prompt with powerline symbols and airline colors
Plugin 'edkolev/tmuxline.vim'                   " Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plugin 'garbas/vim-snipmate'                    " snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim. http://www.vim.org/scripts/script.php?script_id=2540
Plugin 'hallison/vim-markdown.git'              " Markdown syntax highlight for Vim editor with snippets support http://www.vim.org/scripts/script.php?script_id=2882
Plugin 'helino/vim-json.git'                    " filetype detection and syntax highlightnig for JSON in Vim
Plugin 'honza/vim-snippets'                     " vim-snipmate default snippets (Previously snipmate-snippets)
Plugin 'jelera/vim-javascript-syntax'           " Enhanced javascript syntax file for Vim http://www.vim.org/scripts/script.php?script_id=3425
Plugin 'junegunn/vim-easy-align.git'            " 🌻 A Vim alignment plugin
Plugin 'luochen1990/rainbow'                    " rainbow parentheses improved, shorter code, no level limit, smooth and fast, powerful configuration.
Plugin 'marcweber/vim-addon-mw-utils'           " vim: interpret a file by function and cache file automatically
Plugin 'moll/vim-node.git'                      " Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. http://www.vim.org/scripts/script.php?script_id=4674
Plugin 'othree/javascript-libraries-syntax.vim' " Syntax for JavaScript libraries http://www.vim.org/scripts/script.php?script_id=4428
Plugin 'pangloss/vim-javascript'                " Vastly improved Javascript indentation and syntax support in Vim. http://www.vim.org/scripts/script.php?script_id=4452
Plugin 'rizzatti/dash.vim'                      " Search Dash.app from Vim
Plugin 'rking/ag.vim.git'                       " Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'
Plugin 'scrooloose/nerdtree.git'                " A tree explorer plugin for vim.
Plugin 'scrooloose/syntastic.git'               " Syntax checking hacks for vim
Plugin 'terryma/vim-multiple-cursors'           " True Sublime Text style multiple selections for Vim
Plugin 'tmhedberg/matchit.git'                  " extended % matching for HTML, LaTeX, and many other languages http://www.vim.org/scripts/script.php?script_id=39
Plugin 'tommcdo/vim-fubitive'                   " Add Bitbucket URL support to fugitive.vim's :Gbrowse command
Plugin 'tomtom/tlib_vim'                        " Some utility functions for VIM http://www.vim.org/scripts/script.php?script_id=1863
Plugin 'tpope/vim-commentary.git'               " commentary.vim: comment stuff out http://www.vim.org/scripts/script.php?script_id=3695
Plugin 'tpope/vim-eunuch'                       " eunuch.vim: helpers for UNIX http://www.vim.org/scripts/script.php?script_id=4300
Plugin 'tpope/vim-fugitive.git'                 " fugitive.vim: a Git wrapper so awesome, it should be illegal http://www.vim.org/scripts/script.php?script_id=2975
Plugin 'tpope/vim-jdaddy'                       " jdaddy.vim: JSON manipulation and pretty printing http://www.vim.org/scripts/script.php?script_id=4863
Plugin 'tpope/vim-sensible'                     " sensible.vim: Defaults everyone can agree on http://www.vim.org/scripts/script.php?script_id=4391
Plugin 'tpope/vim-sleuth'                       " sleuth.vim: Heuristically set buffer options http://www.vim.org/scripts/script.php?script_id=4375
Plugin 'tpope/vim-speeddating'                  " speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more http://www.vim.org/scripts/script.php?script_id=2120
Plugin 'vim-airline/vim-airline'                " lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes'         " A collection of themes for vim-airline
Plugin 'vim-scripts/bufonly.vim'                " Delete all the buffers except the current/named buffer http://www.vim.org/scripts/script.php?script_id=1071
Plugin 'vim-scripts/csv.vim.git'                " A Filetype plugin for csv files. http://www.vim.org/scripts/script.php?script_id=2830
Plugin 'vim-scripts/dirdiff.vim.git'            " A plugin to diff and merge two directories recursively. http://www.vim.org/scripts/script.php?script_id=102
Plugin 'vim-scripts/gundo.git'                  " Visualize your undo tree. http://www.vim.org/scripts/script.php?script_id=3304
Plugin 'vim-scripts/l9.git'                     " Vim-script library http://www.vim.org/scripts/script.php?script_id=3252
Plugin 'vim-scripts/modeliner.git'              " Generates modeline according to the current settings. http://www.vim.org/scripts/script.php?script_id=1477
Plugin 'vim-scripts/vim-coffee-script.git'      " CoffeeScript support for vim http://www.vim.org/scripts/script.php?script_id=3590
Plugin 'vim-utils/vim-man'                      " View and grep man pages in vim
Plugin 'xolox/vim-misc'                         " Miscellaneous auto-load Vim scripts http://peterodding.com/code/vim/misc/
Plugin 'xolox/vim-session'                      " Extended session management for Vim (:mksession on steroids) http://peterodding.com/code/vim/session/
Plugin 'xolox/vim-shell'                        " Improved integration between Vim and its environment (fullscreen, open URL, background command execution) http://peterodding.com/code/vim/shell/
Plugin 'yegappan/mru.git'                       " Most Recently Used (MRU) Vim Plugin
Plugin 'yggdroot/indentline'                    " A vim plugin to display the indention levels with thin vertical lines

" Themes

Plugin 'altercation/vim-colors-solarized' " precision colorscheme for the vim text editor http://ethanschoonover.com/solarized
Plugin 'atweiden/vim-colors-behelit'      " @oblique's colorscheme for Vim
Plugin 'baskerville/bubblegum'            " A vim color scheme based on xoria256
Plugin 'chriskempson/base16-vim'          " Base16 for Vim https://github.com/chriskempson/base16
Plugin 'ciaranm/inkpot'                   " Inkpot 88/256 Colour Scheme for Vim
Plugin 'donearm/laederon'                 " A Vim color scheme with cold, tundra-like, colours
Plugin 'donearm/ubaryd'                   " A Vim color scheme with warm, Mediterranean-like, colours
Plugin 'google/vim-colorscheme-primary'   " Primary, a Vim color scheme based on Google's colors
Plugin 'jacoborus/tender.vim'             " A 24bit colorscheme for Vim, Airline and Lightline
Plugin 'lokaltog/vim-distinguished'       " A dark vim color scheme for 256-color terminals.
Plugin 'nanotech/jellybeans.vim'          " A colorful, dark color scheme for Vim. http://www.vim.org/scripts/script.php?script_id=2555
Plugin 'pychimp/vim-luna'                 " Touchdown on Lunar Surface ! :)
Plugin 'pychimp/vim-sol'                  " On the Path of Illumination ! :)
Plugin 'sjl/badwolf'                      " A Vim color scheme. http://stevelosh.com/projects/badwolf/
Plugin 'tomasr/molokai'                   " Molokai color scheme for Vim
Plugin 'tpope/vim-vividchalk'             " vividchalk.vim: a colorscheme strangely reminiscent of Vibrant Ink for a certain OS X editor http://www.vim.org/scripts/script.php?script_id=1891
Plugin 'vim-scripts/wombat'               " Dark gray color scheme sharing some similarities with Desert http://www.vim.org/scripts/script.php?script_id=1778
Plugin 'w0ng/vim-hybrid'                  " A dark color scheme for Vim & gVim
Plugin 'zeis/vim-kolor'                   " Vim color scheme.

call vundle#end()
filetype plugin indent on

set backspace=indent,eol,start  " more powerful backspacing

" Now we set some defaults for the editor
set textwidth=0     " Don't wrap words by default
set nobackup        " Don't keep a backup file
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
  au BufRead reportbug.*        set ft=mail
  au BufRead reportbug-*        set ft=mail
  au BufNewFile,BufRead *.sj    set ft=javascript
  au BufNewFile,BufRead *.scs   set ft=javascript
  au BufNewFile,BufRead *.json  set ft=json
  au BufNewFile,BufRead *.mkd   set ft=mkd
  au BufNewFile,BufRead *.mdown set ft=mkd
  au BufNewFile,BufRead *.vala  set ft=vala
  au BufNewFile,BufRead *.xaml  set ft=xml
augroup END

"set shell=bash\ -i

" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
set showcmd     " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set incsearch       " Incremental search
set autowrite       " Automatically save before commands like :next and :make
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
  \ 'dir':  '^(results|node_modules)$'
  \ }
let g:ctrlp_clear_cache_on_exit = 0
set clipboard=unnamed
if has("gui_gtk3")
  set guifont=Anonymous\ Pro\ for\ Powerline\ 10
elseif has('gui_win32')
  set guifont=Anonymice_Powerline:h10:cANSI
else
  set guifont=Anonymice\ Powerline:h12
endif

set hidden
let NERDTreeIgnore = ['\.bak$', '\.orig$']
let NERDTreeChDirMode = 2
let NERDTreeStatusline = -1

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
let g:airline_theme = 'base16_google'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:promptline_theme = 'airline'

let g:indentLine_char = '|'
let g:indentLine_color_gui = '#333333'

let g:SrcExpl_isUpdateTags = 0

let macvim_skip_colorscheme=1

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
nmap <F12> :TagbarToggle<CR>
imap <F12> <ESC>:TagbarToggle<CR>

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
imap <C-CR> <Plug>snipMateNextOrTrigger
smap <C-CR> <Plug>snipMateNextOrTrigger
imap <C-S-CR> <Plug>snipMateBack
smap <C-S-CR> <Plug>snipMateBack
imap <C-R><C-CR> <Plug>snipMateShow
vmap <C-CR> <Plug>snipMateVisual

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

set background=dark
syntax on
colorscheme base16-google-dark

" vim: set et fenc=utf-8 ff=unix sts=4 sw=4 ts=4 :
