
" https://vi.stackexchange.com/questions/2572/detect-os-in-vimscript
if has('mac')
    let g:python_host_prog = '/usr/local/bin/python2'
    let g:python3_host_prog = '/usr/local/bin/python3'
    " let g:python_host_prog = '~/.pyenv/shims/python2'
    " let g:python3_host_prog = '~/.pyenv/shims/python3'
    " let g:python_host_prog = '/Users/baoyan.zhang/.pyenv/shims/python2'
    " let g:python3_host_prog = '/Users/baoyan.zhang/.pyenv/shims/python3'
elseif has('unix') " for linux
    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/bin/python3.6'
endif

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim

" try
"   source ~/.vim_runtime/my_configs.vim
" catch
" endtry

" ==== Vim Plug Begin ====
set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"
" Make sure you use single quotes

Plug 'vim-scripts/tlib'
Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'shougo/neomru.vim'
Plug 'Shougo/denite.nvim'

" search
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'mhinz/vim-startify'

" file management
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'vim-scripts/mru.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

Plug 'vim-scripts/a.vim'
Plug 'amix/open_file_under_cursor.vim'

if has('nvim')
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
else
    Plug 'francoiscabrol/ranger.vim'
endif

" projet
Plug 'airblade/vim-rooter'

" buffer
Plug 'jlanzarotta/bufexplorer'
" Plug 'bling/vim-bufferline'
Plug 'vim-scripts/BufOnly.vim'

Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'jsfaint/gen_tags.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" snippets and comments
Plug 'garbas/vim-snipmate'
Plug 'scrooloose/snipmate-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

" edit
Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" motion and indent
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'


" yank
Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'vim-scripts/vim-YankRing.vim'

" undo
Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'

" color themes
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim'
Plug 'altercation/vim-colors-solarized'
Plug 'romainl/flattened'
Plug 'lifepillar/vim-solarized8'


" tmux
Plug 'edkolev/tmuxline.vim'

" nginx
Plug 'chr4/nginx.vim'


" dash for mac
Plug 'rizzatti/dash.vim'

" markdown
" Plug 'tpope/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" toml
Plug 'cespare/vim-toml'

" ---- begin lint engine ----

Plug 'w0rp/ale'

" ---- end lint engine ----

" ---- begin auto-completion ----

" ---- deoplete ----

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" for python
Plug 'zchee/deoplete-jedi'

" for go
Plug 'zchee/deoplete-go', { 'do': 'make'}

" ---- ncm2 ----

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'fgrsnau/ncm2-otherbuf', {'branch': 'ncm2'}

Plug 'ncm2/ncm2-pyclang'
"Plug 'ncm2/ncm2-gtags'

" based on ultisnips
Plug 'ncm2/ncm2-ultisnips'

" ---- end auto-completion ----

" ---- begin language server protocol ----

Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

" vim-lsp
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'

" ---- end language server protocol ----

" for golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}

" for python
Plug 'jmcantrell/vim-virtualenv'
" Plug 'vim-scripts/indentpython.vim'
" Plug 'nvie/vim-flake8'
" Plug 'python-rope/ropevim'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'python-mode/python-mode', {'branch': 'develop'}
Plug 'tmhedberg/SimpylFold'

" for scala
" Plug 'derekwyatt/vim-scala'

" for clojure
" Plug 'tpope/vim-salve'
" Plug 'tpope/vim-projectionist'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-fireplace'
Plug 'vim-scripts/paredit.vim'
Plug 'kien/rainbow_parentheses.vim'


" rust
Plug 'rust-lang/rust.vim'

" Plug 'Valloric/YouCompleteMe'

" for c/c++
" Plug 'octol/vim-cpp-enhanced-highlight'

" All of your Plugins must be added before the following line
call plug#end()            " required

" ==== Vundle End ====


" gui options

set go-=L " left scrollbar
set go-=r " right scrollbar

" line number
set nu

" highlight current line/column, set cul/cuc
set cursorline
" set cursorcolumn

" enabling mouse support in vim
" https://www.jacoballred.com/web-dev/enabling-mouse-support-in-vim/
set mouse=a

" Change cursor shape in different modes
if has('nvim')
  " https://github.com/neovim/neovim/wiki/FAQ#how-to-change-cursor-shape-in-the-terminal
else
  " http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
  if exists('$TMUX')
    " For tmux running in iTerm2 on OS X
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  else
    " For iTerm2 on OS X
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
endif

" ==== congif neovim ====
tnoremap <Esc> <C-\><C-n>



" ==== colorscheme ====

" base16 colorscheme preview:
" http://chriskempson.github.io/base16/

" For terminal Vim(non-gui) please ensure you are
" using a base16 terminal theme.
" https://github.com/chriskempson/base16-vim#terminal-themes
" colorscheme base16-monokai

" if !exists('$TMUX')
"   set termguicolors
" endif

if !exists('$TMUX')
    if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
      set termguicolors
    endi
endif

" 注意\后面有一个空格
" https://stackoverflow.com/questions/9001337/vim-split-bar-styling
set fillchars+=vert:\ 

syntax enable
set background=dark
colorscheme gruvbox
" colorscheme palenight
" colorscheme dracula
" colorscheme solarized8_flat
" colorscheme solarized
" colorscheme solarized8
" colorscheme flattened_dark

" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

" for solarized
" call togglebg#map("<F5>")

" not display ~ for empty lines
" https://stackoverflow.com/questions/3813059/is-it-possible-to-not-display-a-for-blank-lines-in-vim
" highlight EndOfBuffer ctermfg=black ctermbg=black
highlight EndOfBuffer ctermfg=bg guifg=bg


" workaround for vim background color erase
let &t_ut=''

" set tab and space characters to show in list mode
set listchars=tab:>-,space:-

if has("gui_macvim") || has("gui_gtk2") || has("gui") || exists("g:gui_oni")
    " https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode
    set guifont=FuraCode\ Nerd\ Font:h14

    " set guifont=Hack\ Nerd\ Font:h16
    " set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h16
    " set guifont=Fira\ Mono\ for\ Powerline:h16
    " set guifont=Fira\ Mono:h16
    " set guifont=Source\ Code\ Pro:h14
    " set guifont=PT\ Mono:h14
    " set guifont=Noto\ Mono:h14
    " set guifont=Operator\ Mono:h16
endif

if has("gui_vimr")
    set wrap
endif


nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap jk <esc>
inoremap kj <esc>

" close autocomplete windows
autocmd CompleteDone * pclose

" change the current working directory to current buffer's directory
autocmd BufEnter * silent! lcd %:p:h

" Enable folding
set foldmethod=indent
set foldlevel=99

" system clipboard
set clipboard=unnamed

" Height of the command bar
set cmdheight=1

" ==== begin plugin ====

" fzf
set rtp+=/usr/local/opt/fzf

" GV
nnoremap <silent> <leader>gv :GV<cr>
nnoremap <silent> <leader>gc :GV!<cr>

" vim-airline
let g:airline_powerline_fonts = 1

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = '' 
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" airline-theme
let g:airline_theme="night_owl"
" let g:airline_theme="jellybeans"
" let g:airline_theme="murmur"
" let g:airline_theme="peaksea"
" let g:airline_theme="lucius"
" let g:airline_theme="onedark"
" let g:airline_theme="seagull"
" let g:airline_theme="dark_minimal"
" let g:airline_theme="aurora"
" let g:airline_theme="base16_harmonic16"
" let g:airline_theme="base16_codeschool"
" let g:airline_theme="base16_3024"
" let g:airline_theme="base16_atelierforest"
" let g:airline_theme="base16_bespin"
" let g:airline_theme="base16_flat"
" let g:airline_theme="base16_pop"
" let g:airline_theme="base16_seti"
" let g:airline_theme="base16_shapeshifter"
" let g:airline_theme="base16_solarized"

" tmuxline theme
" let g:airline#extensions#tmuxline#enabled = 0
" let g:tmuxline_theme = 'powerline'
" tmuxline separators
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
            \ 'left' : '',
            \ 'left_alt': '❯',
            \ 'right' : '',
            \ 'right_alt' : '❮',
            \ 'space' : ' '}

" ---- buf ----
unmap <leader>h
unmap <leader>l

nnoremap <silent> <leader>bh :bprevious<cr>
nnoremap <silent> <leader>bl :bnext<cr>

" ---- BufOnly ----
nnoremap <silent> <leader>bo :BufOnly<cr> 

" ---- tagbar ----
nnoremap <F9> :TagbarToggle<CR>
nnoremap <silent> <leader>tt :TagbarToggle<cr>

" ---- taglist ----
nnoremap <silent> <leader>tl :TlistToggle<CR>

" ---- nerdtree ----
"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
" How can I open a NERDTree automatically when vim starts up?
nnoremap <F8> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nn :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
" autocmd vimenter * NERDTree
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

if executable("ag")
    " let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
    let g:ackprg = 'ag --nogroup --nocolor --column'
    " let g:ackprg = 'ag --vimgrep'
endif

"""""""""""" Plugin End """""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Programming languages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set signcolumn=yes

" ======== begin autocompletion ========"

" deoplete.
let g:deoplete#enable_at_startup = 1

" ==== begin ncm2 config ====

autocmd BufEnter * call ncm2#enable_for_buffer()  

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

if has('mac')
    let g:ncm2_pyclang#library_path = '/usr/local/opt/llvm/lib/'
elseif has('unix')
    let g:ncm2_pyclang#library_path = '/usr/local/lib/libclang.so'
endif
" a list of relative paths for compile_commands.json
let g:ncm2_pyclang#database_path = [
            \ 'compile_commands.json',
            \ 'build/compile_commands.json'
            \ ]

" ---- ultisnips config ---

" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
" let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" ==== end ncm2 config ====

" ==== end autocompletion ====

" ======== Lint ========"
" ALE
" Enable completion where available.
" let g:ale_completion_enabled = 1
" let g:ale_emit_conflict_warnings = 0
let g:ale_sign_column_always = 1
let g:ale_linters = {
\   'java': ['checkstyle'],
\   'markdown': ['vale', 'alex'],
\   'yaml': ['yamllint'],
\   'c': ['clangd'],
\   'cpp': ['cpplint', 'clangd'],
\}
" \   'python': ['pyls', 'flake8'],
" pip install cpplint

" ========  Language server  ========"
" lsp autozimu/LanguageClient-neovim
let g:LanguageClient_serverCommands = {
            \ 'python': ['pyls'],
            \ 'go': ['go-langserver'], 
            \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
            \ 'cpp': ['~/bin/cquery',
            \ '--log-file=/tmp/cq.log',
            \ '--init={"cacheDirectory":"/tmp/cquery/"}',
            \ 'clangd']
            \ }
            "\ 'cpp': ['~/src/1404/cquery/build/cquery',
            "\ 'cpp': ['~/src/clang+llvm-7.0.0-x86_64-linux-gnu-ubuntu-14.04/bin/clangd'],
            "\ 'cpp': ['~/bin/ccls', '--log-file=/tmp/cxx.log'],
            "\ 'cpp': ['~/src/1404/ccls/Release/ccls', '--log-file=/tmp/cxx.log'],
            "\ 'c': ['~/src/1404/ccls/Release/ccls', '--log-file=/tmp/cc.log'],

let g:LanguageClient_serverStderr = '/tmp/lc.stderr'

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

nn <silent> <M-.> :call LanguageClient_textDocument_definition()<cr>
nn <silent> <M-,> :call LanguageClient_textDocument_references()<cr>
" nn <f2> :call LanguageClient_textDocument_rename()<cr>
" nn <leader>ji :Denite documentSymbol<cr>
" nn <leader>jI :Denite workspaceSymbol<cr>
" nn ,la :call LanguageClient_workspace_symbol({'query':input('workspace/symbol ')})<cr>
" 
" augroup LanguageClient_config
"   au!
"   au BufEnter * let b:Plugin_LanguageClient_started = 0
"   au User LanguageClientStarted setl signcolumn=yes
"   au User LanguageClientStarted let b:Plugin_LanguageClient_started = 1
"   au User LanguageClientStopped setl signcolumn=auto
"   au User LanguageClientStopped let b:Plugin_LanguageClient_stopped = 0
"   au CursorMoved * if b:Plugin_LanguageClient_started | call LanguageClient_textDocument_hover() | endif
" augroup END

let g:LanguageClient_diagnosticsDisplay = {
            \ 1: {
            \     "name": "Error",
            \     "texthl": "ALEError",
            \     "signText": "ER",
            \     "signTexthl": "ALEErrorSign",
            \ },
            \ 2: {
            \     "name": "Warning",
            \     "texthl": "ALEWarning",
            \     "signText": "WA",
            \     "signTexthl": "ALEWarningSign",
            \ },
            \ 3: {
            \     "name": "Information",
            \     "texthl": "ALEInfo",
            \     "signText": "IN",
            \     "signTexthl": "ALEInfoSign",
            \ },
            \ 4: {
            \     "name": "Hint",
            \     "texthl": "ALEInfo",
            \     "signText": "HI",
            \     "signTexthl": "ALEInfoSign",
            \ },
            \ }

" vim-lsp
" python
" if executable('pyls')
"     au User lsp_setup call lsp#register_server({
"                 \ 'name': 'pyls',
"                 \ 'cmd': {server_info->['pyls']},
"                 \ 'whitelist': ['python'],
"                 \ 'workspace_config': {'pyls': {'plugins': {'pydocstyle': {'enabled': v:true}}}}
"                 \ })
" endif


" ---- begin programming language pluggin ----

" ---- begin C/C++ ----

" for octol/vim-cpp-enhanced-highlight
"let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_template_highlight = 1

" ---- end C/C++ ----

" ======== Python Begin ========"
" vim-flake8
" let g:flake8_show_in_gutter=1
" let g:flake8_show_in_file=1
" let g:flake8_show_quickfix=0
" autocmd BufWritePost *.py call Flake8()

" vim-virtualenv
let g:virtualenv_auto_activate=1

" python-mode
" let g:pymode_quickfix_minheight=0
" let g:pymode_quickfix_maxheight=0
" let g:pymode_doc=1
" let g:pymode_doc_bind='K'
" let g:pymode_virtualenv=1

let g:pymode_lint = 0
" let g:pymode_lint_signs = 0
" let g:pymode_lint_on_write = 0

" let g:pymode_lint_cwindow=0

let g:pymode_rope = 0

" SimpylFold
let g:SimpylFold_docstring_preview = 1

" YAPF
map <C-y> :call yapf#YAPF()<cr>
imap <C-y> <c-o>:call yapf#YAPF()<cr>

" ======== Python End ========"

" ==== golang ====

auto FileType go autocmd BufWritePre <buffer> GoFmt
" filetype indent on
" autocmd FileType go compiler go


" ==== rust lang ====

" rust.vim
" enable automatic running of :RustFmt when you save a buffer
let g:rustfmt_autosave = 1

" vim-racer
" vim-racer enables C-x-C-o to search for completions and provides several <Plug> mappings for source code navigation.
"  show the complete function definition (e.g. its arguments and return type)
let g:racer_experimental_completer = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" ======== clojure ========
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

" tagbar

" tagbar config for rust
let g:tagbar_type_rust = {
            \ 'ctagstype' : 'rust',
            \ 'kinds' : [
            \'T:types,type definitions',
            \'f:functions,function definitions',
            \'g:enum,enumeration names',
            \'s:structure names',
            \'m:modules,module names',
            \'c:consts,static constants',
            \'t:traits,traits',
            \'i:impls,trait implementations',
            \]
            \}

" tagbar config for obj-c
" add a definition for Objective-C to tagbar
let g:tagbar_type_objc = {
            \ 'ctagstype' : 'ObjectiveC',
            \ 'kinds'     : [
            \ 'i:interface',
            \ 'I:implementation',
            \ 'p:Protocol',
            \ 'm:Object_method',
            \ 'c:Class_method',
            \ 'v:Global_variable',
            \ 'F:Object field',
            \ 'f:function',
            \ 'p:property',
            \ 't:type_alias',
            \ 's:type_structure',
            \ 'e:enumeration',
            \ 'M:preprocessor_macro',
            \ ],
            \ 'sro'        : ' ',
            \ 'kind2scope' : {
            \ 'i' : 'interface',
            \ 'I' : 'implementation',
            \ 'p' : 'Protocol',
            \ 's' : 'type_structure',
            \ 'e' : 'enumeration'
            \ },
            \ 'scope2kind' : {
            \ 'interface'      : 'i',
            \ 'implementation' : 'I',
            \ 'Protocol'       : 'p',
            \ 'type_structure' : 's',
            \ 'enumeration'    : 'e'
            \ }
            \ }
" ---- end programming language pluggin ----
