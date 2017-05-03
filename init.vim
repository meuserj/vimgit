" Configuration file for vim

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility

filetype off
if has('unix')
  let vimhome="$HOME/.vim"
elseif has('win32')
  let vimhome="$HOME/vimfiles"
endif

call plug#begin()

if has('unix') && !has("win32unix")
  Plug 'Valloric/YouCompleteMe'
  Plug 'ternjs/tern_for_vim'
  Plug 'vim-scripts/csapprox'               " Make gvim-only colorschemes work transparently in terminal vim http://www.vim.org/scripts/script.php?script_id=2390
endif

Plug 'airblade/vim-gitgutter'                 " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'aklt/plantuml-syntax'                   " vim syntax file for plantuml
Plug 'bogado/file-line'                       " Plugin for vim to enabling opening a file in a given line http://www.vim.org/scripts/script.php?script_id=2184
Plug 'bronson/vim-trailing-whitespace'        " Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plug 'christoomey/vim-tmux-navigator'         " Seamless navigation between tmux panes and vim splits
Plug 'ctrlpvim/ctrlp.vim'                     " Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder. http://ctrlpvim.github.com/ctrlp.vim
Plug 'dbakker/vim-lint'                       " Check your .vimrc for errors
Plug 'digitaltoad/vim-pug'                    " Vim Pug (formerly Jade) template engine syntax highlighting and indention
Plug 'edkolev/promptline.vim'                 " Generate a fast shell prompt with powerline symbols and airline colors
Plug 'edkolev/tmuxline.vim'                   " Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'ervandew/screen'                        " Simulate a split shell in vim using gnu screen or tmux
Plug 'hallison/vim-markdown'                  " Markdown syntax highlight for Vim editor with snippets support http://www.vim.org/scripts/script.php?script_id=2882
Plug 'jelera/vim-javascript-syntax'           " Enhanced javascript syntax file for Vim http://www.vim.org/scripts/script.php?script_id=3425
Plug 'jlanzarotta/bufexplorer'                " BufExplorer Plugin for Vim
Plug 'junegunn/vim-easy-align'                " 🌻 A Vim alignment plugin
Plug 'leshill/vim-json'                       " Syntax highlighting for JSON in Vim
Plug 'luochen1990/rainbow'                    " rainbow parentheses improved, shorter code, no level limit, smooth and fast, powerful configuration.
Plug 'marcweber/vim-addon-mw-utils'           " vim: interpret a file by function and cache file automatically
Plug 'mhinz/vim-startify'                     " The fancy start screen for Vim.
Plug 'moll/vim-node'                          " Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. http://www.vim.org/scripts/script.php?script_id=4674
Plug 'myusuf3/numbers.vim'                    " numbers.vim is a vim plugin for better line numbers http://myusuf3.github.com/numbers.vim/
Plug 'othree/javascript-libraries-syntax.vim' " Syntax for JavaScript libraries http://www.vim.org/scripts/script.php?script_id=4428
Plug 'pangloss/vim-javascript'                " Vastly improved Javascript indentation and syntax support in Vim. http://www.vim.org/scripts/script.php?script_id=4452
Plug 'pprovost/vim-ps1'                       " A Vim plugin for Windows PowerShell support
Plug 'rizzatti/dash.vim'                      " Search Dash.app from Vim
Plug 'rking/ag.vim'                           " Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'
Plug 'ryanoasis/vim-devicons'                 " Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree, vim-airline, unite, vim-startify and many more
Plug 'scrooloose/nerdtree'                    " A tree explorer plugin for vim.
Plug 'scrooloose/syntastic'                   " Syntax checking hacks for vim
Plug 'tmhedberg/matchit'                      " extended % matching for HTML, LaTeX, and many other languages http://www.vim.org/scripts/script.php?script_id=39
Plug 'tmux-plugins/vim-tmux'                  " vim plugin for tmux.conf
Plug 'tmux-plugins/vim-tmux-focus-events'     " Make terminal vim and tmux work better together.
Plug 'tommcdo/vim-fubitive'                   " Add Bitbucket URL support to fugitive.vim's :Gbrowse command
Plug 'tomtom/tlib_vim'                        " Some utility functions for VIM http://www.vim.org/scripts/script.php?script_id=1863
Plug 'tpope/vim-commentary'                   " commentary.vim: comment stuff out http://www.vim.org/scripts/script.php?script_id=3695
Plug 'tpope/vim-eunuch'                       " eunuch.vim: helpers for UNIX http://www.vim.org/scripts/script.php?script_id=4300
Plug 'tpope/vim-fugitive'                     " fugitive.vim: a Git wrapper so awesome, it should be illegal http://www.vim.org/scripts/script.php?script_id=2975
Plug 'tpope/vim-jdaddy'                       " jdaddy.vim: JSON manipulation and pretty printing http://www.vim.org/scripts/script.php?script_id=4863
Plug 'tpope/vim-sensible'                     " sensible.vim: Defaults everyone can agree on http://www.vim.org/scripts/script.php?script_id=4391
Plug 'tpope/vim-sleuth'                       " sleuth.vim: Heuristically set buffer options http://www.vim.org/scripts/script.php?script_id=4375
Plug 'tpope/vim-speeddating'                  " speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more http://www.vim.org/scripts/script.php?script_id=2120
Plug 'tpope/vim-surround'                     " surround.vim: quoting/parenthesizing made simple
Plug 'vim-airline/vim-airline'                " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'         " A collection of themes for vim-airline
Plug 'vim-scripts/bufonly.vim'                " Delete all the buffers except the current/named buffer http://www.vim.org/scripts/script.php?script_id=1071
Plug 'vim-scripts/csv.vim'                    " A Filetype plugin for csv files. http://www.vim.org/scripts/script.php?script_id=2830
Plug 'vim-scripts/dirdiff.vim'                " A plugin to diff and merge two directories recursively. http://www.vim.org/scripts/script.php?script_id=102
Plug 'vim-scripts/gundo'                      " Visualize your undo tree. http://www.vim.org/scripts/script.php?script_id=3304
Plug 'vim-scripts/l9'                         " Vim-script library http://www.vim.org/scripts/script.php?script_id=3252
Plug 'vim-scripts/vim-coffee-script'          " CoffeeScript support for vim http://www.vim.org/scripts/script.php?script_id=3590
Plug 'vim-utils/vim-man'                      " View and grep man pages in vim
Plug 'wincent/vim-clipper'                    " Clipper integration for Vim
Plug 'xolox/vim-misc'                         " Miscellaneous auto-load Vim scripts http://peterodding.com/code/vim/misc/
Plug 'xolox/vim-session'                      " Extended session management for Vim (:mksession on steroids) http://peterodding.com/code/vim/session/
Plug 'xolox/vim-shell'                        " Improved integration between Vim and its environment (fullscreen, open URL, background command execution) http://peterodding.com/code/vim/shell/
Plug 'yegappan/mru'                           " Most Recently Used (MRU) Vim Plugin
Plug 'yggdroot/indentline'                    " A vim plugin to display the indention levels with thin vertical lines

" Themes

Plug 'altercation/vim-colors-solarized' " precision colorscheme for the vim text editor http://ethanschoonover.com/solarized
Plug 'atweiden/vim-colors-behelit'      " @oblique's colorscheme for Vim
Plug 'baskerville/bubblegum'            " A vim color scheme based on xoria256
Plug 'chriskempson/base16-vim'          " Base16 for Vim https://github.com/chriskempson/base16
Plug 'ciaranm/inkpot'                   " Inkpot 88/256 Colour Scheme for Vim
Plug 'donearm/laederon'                 " A Vim color scheme with cold, tundra-like, colours
Plug 'donearm/ubaryd'                   " A Vim color scheme with warm, Mediterranean-like, colours
Plug 'google/vim-colorscheme-primary'   " Primary, a Vim color scheme based on Google's colors
Plug 'jacoborus/tender.vim'             " A 24bit colorscheme for Vim, Airline and Lightline
Plug 'lokaltog/vim-distinguished'       " A dark vim color scheme for 256-color terminals.
Plug 'nanotech/jellybeans.vim'          " A colorful, dark color scheme for Vim. http://www.vim.org/scripts/script.php?script_id=2555
Plug 'pychimp/vim-luna'                 " Touchdown on Lunar Surface ! :)
Plug 'pychimp/vim-sol'                  " On the Path of Illumination ! :)
Plug 'sjl/badwolf'                      " A Vim color scheme. http://stevelosh.com/projects/badwolf/
Plug 'tomasr/molokai'                   " Molokai color scheme for Vim
Plug 'tpope/vim-vividchalk'             " vividchalk.vim: a colorscheme strangely reminiscent of Vibrant Ink for a certain OS X editor http://www.vim.org/scripts/script.php?script_id=1891
Plug 'vim-scripts/wombat'               " Dark gray color scheme sharing some similarities with Desert http://www.vim.org/scripts/script.php?script_id=1778
Plug 'w0ng/vim-hybrid'                  " A dark color scheme for Vim & gVim
Plug 'zeis/vim-kolor'                   " Vim color scheme.

call plug#end()
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
let g:ctrlp_clear_cache_on_exit = 1
set clipboard=unnamed
if has("gui_gtk3")
  set guifont=Anonymous\ Pro\ for\ Powerline\ 10
elseif has('gui_win32')
  set guifont=MesloLGSDZ_Nerd_Font:h8:cANSI
else
  set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h11
endif

set hidden

let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let NERDTreeIgnore = ['\.bak$', '\.orig$']
let NERDTreeChDirMode = 2
let NERDTreeStatusline = -1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:session_autosave = 'yes'
let g:session_autosave_periodic = 30
let g:session_autosave_silent = 1
let g:session_autoload = 'no'
let g:session_default_to_last = 0
let g:startify_session_dir = vimhome."/sessions"
let g:startify_list_order = ['sessions', 'files', 'dir', 'bookmarks', 'commands']

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'man']
let g:indent_guides_color_change_percent = 2

let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:promptline_theme = 'airline'

let g:indentLine_char = '│'
let g:indentLine_color_gui = '#333333'
let g:indentLine_color_tty_dark = 1

let g:SrcExpl_isUpdateTags = 0

let macvim_skip_colorscheme=1

set directory=~/.vim/swapdir
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>a
nmap <F4> :NERDTreeToggle<CR>
imap <F4> <ESC>:NERDTreeToggle<CR>
nmap <F3> :NERDTreeFind<CR>
imap <F3> <ESC>:NERDTreeFind<CR>
map <F5> <C-P><C-\>f<CR>
map <F9> <C-j>-D
map <F10> <C-j>jD

nmap <F7> :bprevious<cr>
nmap <F8> :bnext<cr>
nmap <C-z> :bp <BAR> bd #<cr>
map <F7> :bprevious<cr>
map <F8> :bnext<cr>
map <C-z> :bp <BAR> bd #<cr>
imap <F7> <ESC>:bprevious<cr>i
imap <F8> <ESC>:bnext<cr>i
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

nmap <silent> <leader>d <Plug>DashSearch

set background=dark
syntax on
colorscheme molokai

" vim: set et fenc=utf-8 ff=unix sts=4 sw=4 ts=4 :
