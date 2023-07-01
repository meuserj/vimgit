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

if has('unix') && !has('win32unix')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
else
"     Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
    Plug 'jremmen/vim-ripgrep'    " Use RipGrep in Vim and display results in a quickfix list
    Plug 'ctrlpvim/ctrlp.vim'     " Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder. http://ctrlpvim.github.com/ctrlp.vim
"     Plug 'ervandew/supertab'      " Perform all your vim insert mode completions with Tab
endif

if has('nvim')
    Plug 'MunifTanjim/nui.nvim'
    Plug 'dpayne/CodeGPT.nvim'
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-neo-tree/neo-tree.nvim'
    Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
    Plug 'MunifTanjim/nui.nvim'
else
    Plug 'lambdalisue/fern-git-status.vim'                                        " 🌿 Add Git status badge integration on file:// scheme on fern.vim
    Plug 'lambdalisue/fern-hijack.vim'                                            " Make fern.vim as a default file explorer instead of Netrw
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'                                 " 🌿 fern-renderer-nerdfont.vim fern.vim plugin which add file type icons through lambdalisue/nerdfont.vim
    Plug 'lambdalisue/fern-ssh'                                                   " 🌿 A scheme plugin for fern.vim which show file system tree of a remote machine via SSH.
    Plug 'lambdalisue/fern.vim', { 'branch': 'main' }                             " Fern (furn) is a general purpose asynchronous tree viewer written in pure Vim script.
endif

Plug 'andrewradev/exercism.vim'                                               " Exercism
Plug 'bogado/file-line'                                                       " Plugin for vim to enabling opening a file in a given line http://www.vim.org/scripts/script.php?script_id=2184
Plug 'christoomey/vim-tmux-navigator'                                         " Seamless navigation between tmux panes and vim splits
Plug 'crusoexia/vim-javascript-lib'                                           " companion of vim-javascript, provide syntax highlight of javascript libraries
Plug 'danro/rename.vim'                                                       " Rename the current file in the vim buffer + retain relative path. http://www.vim.org/scripts/script.php…
Plug 'dbakker/vim-lint'                                                       " Check your .vimrc for errors
Plug 'dsawardekar/wordpress.vim'                                              " Vim Plugin for WordPress Development
Plug 'edkolev/promptline.vim'                                                 " Generate a fast shell prompt with powerline symbols and airline colors
Plug 'edkolev/tmuxline.vim'                                                   " Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'ervandew/screen'                                                        " Simulate a split shell in vim using gnu screen or tmux
Plug 'fannheyward/coc-markdownlint', {'do': 'yarn install --frozen-lockfile'} " MarkDown Lint for CoC
Plug 'frioux/vim-lost', { 'branch': 'main' }                                  " Vim plugin to provide a command to help you orient yourself when editing a large chunk of code.
Plug 'jelera/vim-javascript-syntax'                                           " Enhanced javascript syntax file for Vim http://www.vim.org/scripts/script.php?script_id=3425
Plug 'jlanzarotta/bufexplorer'                                                " BufExplorer Plugin for Vim
Plug 'jonsmithers/vim-html-template-literals'                                 " Syntax highlighting and indentation for html inside of tagged template literals
Plug 'junegunn/gv.vim'                                                        " A git commit browser in Vim
Plug 'junegunn/vim-easy-align'                                                " 🌻 A Vim alignment plugin
Plug 'lambdalisue/glyph-palette.vim'                                          " 🎨 glyph-palette glyph-palette (Glyph palette) is a plugin to universally apply colors on Nerd Fonts.
Plug 'machakann/vim-highlightedyank'                                          " Make the yanked region apparent!
Plug 'marcweber/vim-addon-mw-utils'                                           " vim: interpret a file by function and cache file automatically
Plug 'mbbill/undotree'                                                        " visualizes undo history and makes it easier to browse and switch between different undo branches.
Plug 'mhinz/vim-startify'                                                     " The fancy start screen for Vim.
Plug 'moll/vim-node'                                                          " Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. http://www.vim.org/scripts/script.php?script_id=4674
Plug 'myusuf3/numbers.vim'                                                    " numbers.vim is a vim plugin for better line numbers http://myusuf3.github.com/numbers.vim/
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}             " Css language server extension for CoC
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}          " ECMAScript Linting for CoC
Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}             " Git integration for CoC
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}            " Json language server extension for CoC
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}            " Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
Plug 'ntpeters/vim-better-whitespace'                                         " Vim Better Whitespace Plugin
Plug 'othree/javascript-libraries-syntax.vim'                                 " Syntax for JavaScript libraries http://www.vim.org/scripts/script.php?script_id=4428
Plug 'pangloss/vim-javascript'                                                " JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
Plug 'quramy/tsuquyomi'                                                       " A Vim plugin for TypeScript http://www.vim.org/scripts/script.php…
Plug 'rust-lang/rust.vim'                                                     " Vim configuration for Rust.
Plug 'scrooloose/syntastic'                                                   " Syntax checking hacks for vim
Plug 'shawncplus/phpcomplete.vim'                                             " Improved PHP omni-completion. Based on the default phpcomplete.vim.
Plug 'sheerun/vim-polyglot'                                                   " A collection of language packs for Vim.
Plug 'shougo/vimproc.vim'                                                     " Interactive command execution in Vim.
Plug 'stanangeloff/php.vim'                                                   " An up-to-date Vim syntax for PHP.
Plug 'tmhedberg/matchit'                                                      " extended % matching for HTML, LaTeX, and many other languages http://www.vim.org/scripts/script.php?script_id=39
Plug 'tmux-plugins/vim-tmux-focus-events'                                     " Make terminal vim and tmux work better together.
Plug 'tommcdo/vim-fubitive'                                                   " Add Bitbucket URL support to fugitive.vim's :Gbrowse command
Plug 'tomtom/tlib_vim'                                                        " Some utility functions for VIM http://www.vim.org/scripts/script.php?script_id=1863
Plug 'tpope/vim-commentary'                                                   " commentary.vim: comment stuff out http://www.vim.org/scripts/script.php?script_id=3695
Plug 'tpope/vim-eunuch'                                                       " eunuch.vim: helpers for UNIX http://www.vim.org/scripts/script.php?script_id=4300
Plug 'tpope/vim-fugitive'                                                     " fugitive.vim: a Git wrapper so awesome, it should be illegal http://www.vim.org/scripts/script.php?script_id=2975
Plug 'tpope/vim-jdaddy'                                                       " jdaddy.vim: JSON manipulation and pretty printing http://www.vim.org/scripts/script.php?script_id=4863
Plug 'tpope/vim-sensible'                                                     " sensible.vim: Defaults everyone can agree on http://www.vim.org/scripts/script.php?script_id=4391
Plug 'tpope/vim-sleuth'                                                       " sleuth.vim: Heuristically set buffer options http://www.vim.org/scripts/script.php?script_id=4375
Plug 'tpope/vim-speeddating'                                                  " speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more http://www.vim.org/scripts/script.php?script_id=2120
Plug 'tpope/vim-surround'                                                     " surround.vim: quoting/parenthesizing made simple
Plug 'vim-airline/vim-airline'                                                " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'                                         " A collection of themes for vim-airline
Plug 'vim-scripts/AnsiEsc.vim'                                                " ansi escape sequences concealed, but highlighted as specified (conceal) http://www.vim.org/scripts/script.php…
Plug 'vim-scripts/DirDiff.vim'                                                " A plugin to diff and merge two directories recursively.
Plug 'vim-scripts/bufonly.vim'                                                " Delete all the buffers except the current/named buffer http://www.vim.org/scripts/script.php?script_id=1071
Plug 'vim-scripts/csapprox'                                                   " Make gvim-only colorschemes work transparently in terminal vim http://www.vim.org/scripts/script.php?script_id=2390
Plug 'vim-scripts/l9'                                                         " Vim-script library http://www.vim.org/scripts/script.php?script_id=3252
Plug 'vim-utils/vim-man'                                                      " View and grep man pages in vim
Plug 'wincent/vim-clipper', { 'branch': 'main' }                              " Clipper plug-in for Vim
Plug 'xolox/vim-misc'                                                         " Miscellaneous auto-load Vim scripts http://peterodding.com/code/vim/misc/
Plug 'xolox/vim-session'                                                      " Extended session management for Vim (:mksession on steroids) http://peterodding.com/code/vim/session/
Plug 'yegappan/mru'                                                           " Most Recently Used (MRU) Vim Plugin
Plug 'yggdroot/indentline'                                                    " A vim plugin to display the indention levels with thin vertical lines

" Load devicons last

Plug 'ryanoasis/vim-devicons'                 " Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree, vim-airline, unite, vim-startify and many more
Plug 'lambdalisue/nerdfont.vim'               " 👓 nerdfont.vim A simplified version of vim-devicons

" Themes
Plug 'altercation/vim-colors-solarized' " precision colorscheme for the vim text editor http://ethanschoonover.com/solarized
Plug 'baskerville/bubblegum'            " A vim color scheme based on xoria256
Plug 'chriskempson/base16-vim'          " Base16 for Vim https://github.com/chriskempson/base16
Plug 'ciaranm/inkpot'                   " Inkpot 88/256 Colour Scheme for Vim
Plug 'crusoexia/vim-monokai'            " Refined Monokai color scheme for vim
Plug 'donearm/laederon'                 " A Vim color scheme with cold, tundra-like, colours
Plug 'donearm/ubaryd'                   " A Vim color scheme with warm, Mediterranean-like, colours
Plug 'ghifarit53/tokyonight-vim'
if has('nvim')
    Plug 'ellisonleao/gruvbox.nvim'     " A port of gruvbox community theme to lua with treesitter support!
else
    Plug 'morhetz/gruvbox'              " Retro groove color scheme for Vim
endif
Plug 'google/vim-colorscheme-primary'   " Primary, a Vim color scheme based on Google's colors
Plug 'jacoborus/tender.vim'             " A 24bit colorscheme for Vim, Airline and Lightline
Plug 'larsbs/vimterial'                 " A vim color scheme based on Material Theme http://equinusocio.github.io/material-theme
Plug 'larsbs/vimterial_dark'            " A dark vim color scheme inspired by material design. Improved for web development.
Plug 'lokaltog/vim-distinguished'       " A dark vim color scheme for 256-color terminals.
Plug 'nanotech/jellybeans.vim'          " A colorful, dark color scheme for Vim. http://www.vim.org/scripts/script.php?script_id=2555
Plug 'nlknguyen/papercolor-theme'       " 🎨 Light & Dark Vim color schemes inspired by Google's Material Design
Plug 'pychimp/vim-luna'                 " Touchdown on Lunar Surface ! :)
Plug 'pychimp/vim-sol'                  " On the Path of Illumination ! :)
Plug 'sainnhe/sonokai'
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
set nowritebackup
set termguicolors
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
  au BufNewFile,BufRead *.mkd   set ft=markdown
  au BufNewFile,BufRead *.md    set ft=markdown
  au BufNewFile,BufRead *.mdown set ft=markdown
  au BufNewFile,BufRead *.vala  set ft=vala
  au BufNewFile,BufRead *.xaml  set ft=xml
  au BufEnter inindca.atlassian.net_*.txt set ft=markdown
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
set equalalways
set cmdheight=2
set updatetime=300
set shortmess+=c

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

set clipboard=unnamed
if has("gui_gtk3")
  set guifont=Iosevka\ Nerd\ Font\ Mono:h12
elseif has('gui_win32')
  set guifont=MesloLGSDZ_NF:h8:cANSI:qDRAFT
elseif exists('g:neovide')
  if has('macunix')
    set guifont=Iosevka\ Nerd\ Font\ Mono:h12
  elseif has('unix')
    set guifont=Iosevka\ Nerd\ Font\ Mono:h12
  endif
endif

set hidden

let g:firenvim_config = {
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'firenvim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'takeover': 'never',
        \ },
    \ }
\ }
let fc = g:firenvim_config['localSettings']
let fc['https?://ci\.qfun\.com'] = { 'takeover': 'always', 'priority': 1 }

cnoreabbrev exercism Exercism
cnoreabbrev git Git
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 15
let g:netrw_altv = 1
let g:fff#split = "30vnew"
let g:fff#split_direction = "nosplitbelow nosplitright"
" let g:loaded_netrw       = 1
" let g:loaded_netrwPlugin = 1
" let NERDTreeIgnore = ['\.bak$', '\.orig$']
" let NERDTreeChDirMode = 2
" let NERDTreeStatusline = -1
let g:fern#renderer = "nerdfont"
let g:fern_disable_startup_warnings = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_javascript_checkers = ['eslint']
let g:tsuquyomi_disable_quickfix = 1
let g:better_whitespace_enabled = 0
let g:strip_whitespace_on_save = 1

let g:completor_node_binary = '/cygdrive/c/Program Files/nodejs/node.exe'

let g:session_autosave = 'yes'
let g:session_autosave_periodic = 30
let g:session_autosave_silent = 1
let g:session_autoload = 'no'
let g:session_default_to_last = 0
if has('gui_win32')
    let g:startify_custom_header =[]
endif

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

let g:startify_session_dir = vimhome."/sessions"
let g:startify_list_order = ['sessions', 'files', 'dir', 'bookmarks', 'commands']
let g:startify_custom_header = [
    \ '      ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁    ░▓▓▒         ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁',
    \ '     ▕                        ▁  ░░▓▓▒▒▒     ▁▔                        ▔▏',
    \ '    ▕ ▗▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚  ░░░▓▓▓▓▓▒▒▒  ▕ ▗▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▖▒▒',
    \ '    ▕ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒ ▓▓▓▓▓▓▓▓▓▒▒ ▕ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒',
    \ '    ▕ ▝▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚ ▒▓▓▓▓▓▓▓▓▓▓▓▒▒▒ ▝▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▀▘▒',
    \ '     ▕     ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▏',
    \ '      ▔▔▔▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒  ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▒▒',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓   ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▒▓▓▒▒▒',
    \ '        ░▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓   ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▒▒▒',
    \ '       ░░▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒',
    \ '     ░░░▓▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒',
    \ '   ░░░▓▓▓▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒    ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒',
    \ ' ░░░▓▓▓▓▓▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒  ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒',
    \ '▒▒▒▓▓▓▓▓▓▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒',
    \ ' ▒▒▒▓▓▓▓▓▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████',
    \ '   ▒▒▒▓▓▓▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███',
    \ '     ▒▒▓▓▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▖▖▖▖▖▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███',
    \ '      ▒▒▒▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▚▚▚▚▚▘▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███',
    \ '       ▒▒▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒ ▚▚▚▚▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███',
    \ '        ▒▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▚▚▚▚▚▚▚▚▓▓▓▚▚▚▚▚▚▖▓▓▗▚▚▚▚▚▖██ ▗▚▚▚▚▚',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▓▓▓▚▚▚▚▘▓▓▓▓▓▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▓▓▓▓▚▚▚▚▚▎▓▓▓▓▓▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚▚',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▒▓▓▓▓▚▚▚▚▚▎▓▓▓▓▓▚▚▚▚▓▓▓▓▞▚▚▚▚▚      ▚▚▚▚▚',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▚▚▒▒▓▓▓▓▓▚▚▚▚▚▘▓▓▓▓▓▚▚▚▚▚▓▓██▞▚▚▚▚▚     ▚▚▚▚▚',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▚▚▒▒▒▒▓▓▓▓▓▚▚▚▚▚▘▓▓▓▓▚▚▚▚▚▓███  ▚▚▚▚      ▚▚▚▚▚',
    \ '         ▏ ▚▚▚▚▚▚▚▚▚▒▒▒▒▒▒▒▓▓▓▚▚▚▚▞▞▓▓▓▓▓▚▚▚▚▓██   ▚▚▚▚▚     ▚▚▚▚▚',
    \ '         ▏ ▚▚▚▚▚▚▒▒▒▒    ▒▒▒▒▚▚▚▚▚▚▓▓▓▓▓▚▚▚▚▚██    ▚▚▚▚     ▚▚▚▚▚▚',
    \ '         ▔▁▀▒▒▒▒▒▒         ▒▒▚▚▚▚▚▚▚▚▓▓▓▚▚▚▚▚▚    ▚▚▚▚▚▚    ▚▚▚▚▚▚▚',
    \ '           ▔                  ▒▒▓▓▓▓▓▓▓▓███',
    \ '                               ▒▒▒▓▓▓▓███',
    \ '                                 ▒▒▒▓██▓',
    \ '                                   ▒█▓',
    \ ]

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'man']
let g:indent_guides_color_change_percent = 2


let g:airline_theme = 'base16_gruvbox_dark_hard'
if !has('gui_win32')
    let g:airline_left_sep                            = "\uE0B4"
    let g:airline_left_alt_sep                        = "\uE0B5"
    let g:airline_right_sep                           = "\uE0B6"
    let g:airline_right_alt_sep                       = "\uE0B7"
endif

let g:airline_powerline_fonts                     = 1
if exists('g:started_by_firenvim')
    let g:airline#extensions#tabline#enabled          = 0
else
    let g:airline#extensions#tabline#enabled          = 1
    let g:airline#extensions#tabline#fnamemod         = ':t'
    let g:airline#extensions#tabline#buffer_min_count = 1
    let g:airline#extensions#tabline#tab_min_count    = 1
    let g:airline#extensions#tabline#buffer_idx_mode  = 1
    let g:airline#extensions#tabline#buffer_nr_show   = 0
    let g:airline#extensions#tabline#show_buffers     = 1
endif

let g:fzf_prefer_tmux = 1

let g:tmuxline_separators = {
  \ 'left' : "\uE0B4",
  \ 'left_alt': "\uE0B5",
  \ 'right' : "\uE0B6",
  \ 'right_alt' : "\uE0B7",
  \ 'space' : ' '}

let g:promptline_symbols = {
  \ 'left'           : "\uE0B4",
  \ 'right'          : "\uE0B6",
  \ 'left_alt'       : "\uE0B5",
  \ 'right_alt'      : "\uE0B7",
  \ 'dir_sep'        : " \uE0B5 ",
  \ 'truncation'     : "\u22EF",
  \ 'battery'        : "\uF242",
  \ 'space'          : ' '}

let g:promptline_theme = 'airline'

let g:indentLine_char = "\u250A"
let g:indentLine_color_gui = '#333333'
let g:indentLine_color_tty_dark = 1

let g:SrcExpl_isUpdateTags = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set directory=~/.vim/swapdir
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

vnoremap <silent> <s-J> :m '>+1<CR>gv
vnoremap <silent> <s-K> :m '<-2<CR>gv
xnoremap * "zy/\V<C-r>=escape(@z, '\/')<CR><CR>

map y <Plug>(highlightedyank)
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>a
if has('nvim')
    nmap <F3> :Neotree filesystem reveal<CR>
    imap <F3> <ESC>:Neotree filesystem reveal<CR>
    nmap <F4> :Neotree filesystem<CR>
    imap <F4> <ESC>:Neotree filesystem<CR>
    nmap <F5> :Neotree buffers float<CR>
    imap <F5> <ESC>:Neotree buffers float<CR>
    nmap <F6> :Neotree git_status float<CR>
    imap <F6> <ESC>:Neotree git_status float<CR>
else
    nmap <F4> :Fern . -drawer -width=40 -toggle<CR>
    imap <F4> <ESC>:Fern . -drawer -width=40 -toggle<CR>
    nmap <F3> :Fern . -reveal=% -drawer -width=40 -toggle<CR>
    imap <F3> <ESC>:Fern . -reveal=% -drawer -width=40 -toggle<CR>
endif
" nmap <F4> :F<CR>
" imap <F4> <ESC>:F<CR>
" nmap <F3> :F %:p:h<CR>
" imap <F3> <ESC>:F %:p:h<CR>
" nmap <F4> :Lexplore<CR>
" imap <F4> <ESC>:Lexplore<CR>
" nmap <F3> :NERDTreeFind<CR>
" imap <F3> <ESC>:NERDTreeFind<CR>
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
" if has('unix') && !has('win32unix')
  nnoremap <silent> <C-p> :FZF -m<cr>
" endif
nnoremap n nzz
nnoremap N Nzz

"----- Begin CoC Settings -----"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"------ End CoC Settings ------"


autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType c,cpp set noet
"autocmd FileType javascript syntax clear javaScriptFuncDef
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType xml setl sw=2 sts=2 et
autocmd FileType jade setl sw=2 sts=2 et
autocmd FileType typescript setl sw=4 sts=4 et
au FileType ps1 let &makeprg="cd /cygdrive/c && powershell.exe 'Invoke-ScriptAnalyzer " . substitute(expand("%:p"), "/cygdrive/c/", "C:\\", "") . ' -EA SilentlyContinue \| ForEach-Object { (\"/cygdrive/c$((Split-Path -NoQualifier $_.ScriptPath) -replace \"\\\\\", \"/\")\", $_.Line, $_.Column, $_.Severity.ToString()[0], \"[$($_.RuleName)] $($_.Message)$(If ($_.SuggestedCorrections.Description) { \" FIX: $($_.SuggestedCorrections.Description)\" })\") -join \":\"}' . "'"
au FileType ps1 set errorformat=%f:%l:%c:%t:%m

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

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

set t_Co=256   " This is may or may not needed.
set background=dark
syntax on
colorscheme gruvbox
highlight StartifyHeader ctermfg=2

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <S-h> :call ToggleHiddenAll()<CR>

if has('nvim')
    function! OnUIEnter(event) abort
      if 'Firenvim' ==# get(get(nvim_get_chan_info(a:event.chan), 'client', {}), 'name', '')
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
      endif
    endfunction
    autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
endif

" vim: set et fenc=utf-8 ff=unix sts=4 sw=4 ts=4 :
