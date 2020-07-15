" https://vi.stackexchange.com/questions/2572/detect-os-in-vimscript
if has('mac')
    " let g:python_host_prog = '/usr/local/bin/python2'
    let g:python_host_prog = '/Users/datousir/.pyenv/shims/python'
    " let g:python3_host_prog = '/usr/local/bin/python3'
    let g:python_host_prog = '/Users/datousir/.pyenv/shims/python3'
elseif has('unix') " for linux
    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/bin/python3'
endif

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim

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

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" search
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'mhinz/vim-startify'

" file management
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Adds dev icons to vim plugins
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
" auto-pairs can cause odd delete actions
" Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" motion and indent
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'wellle/targets.vim'
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
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim',{'as':'dracula'}
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

" ---- begin linter ----

Plug 'w0rp/ale'

" ---- end linter ----

" ---- begin auto-completion ----

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
"
" " deoplete source for vim-lsp
" Plug 'lighttiger2505/deoplete-vim-lsp'
"
" " for python
" Plug 'zchee/deoplete-jedi'

" " for go
" Plug 'zchee/deoplete-go', { 'do': 'make'}

" ---- end auto-completion ----

" ---- begin language server protocol ----

" Plug 'autozimu/LanguageClient-neovim', {
"             \ 'branch': 'next',
"             \ 'do': 'bash install.sh',
"             \ }

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --- vim-lsp ---
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Snippets
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'

" Folding
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()
" let g:lsp_fold_enabled = 0

" --- vim-lsp ---

" ---- end language server protocol ----

" for golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'fatih/molokai'

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

" shell
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }

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
" map exit terminal to Esc
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

syntax enable
set background=dark
colorscheme gruvbox
" colorscheme dracula

" let g:rehash256 = 1
" let g:molokai_original = 1
" colorscheme molokai

" 注意 \后面有一个空格,因为行尾空格会被删掉,所以增加一个"
" https://stackoverflow.com/questions/9001337/vim-split-bar-styling
set fillchars+=vert:\ "

" not display ~ for empty lines
" https://stackoverflow.com/questions/3813059/is-it-possible-to-not-display-a-for-blank-lines-in-vim
" highlight EndOfBuffer ctermfg=black ctermbg=black
highlight EndOfBuffer ctermfg=bg guifg=bg

" enable signcolumn
set signcolumn=yes

" https://stackoverflow.com/a/41587510
highlight clear FoldColumn
highlight clear SignColumn
" highlight clear LineNr

" workaround for vim background color erase
let &t_ut=''

" set tab and space characters to show in list mode
set listchars=tab:>-,space:-
let &showbreak='↳ '
" set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
" let &showbreak='↳ '
" set cpoptions-=n
" aug my_visuallistchars
"     au!
"     au CursorMoved * if mode() =~# "[vV\<C-v>]" | set list | else | set nolist | endif
" aug END

" set font

if has("gui_macvim") || has("gui_gtk2") || has("gui") || exists("g:gui_oni")
    " https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode
    set guifont=FiraCode\ Nerd\ Font:h14
    " set guifont=Source\ Code\ Pro:h14
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

" use buffers and only use one tab
set switchbuf=useopen,usetab

" ==== begin plugin ====

" ---- fzf ----
set rtp+=/usr/local/opt/fzf

nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>t :Files<CR>
nnoremap <silent> <leader>r :History<CR>

" this need fugitive plugin
let g:fzf_commits_log_options = '--graph --color=always
  \ --format="%C(yellow)%h%C(red)%d%C(reset)
  \ - %C(bold green)(%ar)%C(reset) %s %C(blue)<%an>%C(reset)"'
nnoremap <silent> <leader>c  :Commits<CR>
nnoremap <silent> <leader>bc :BCommits<CR>

" this need ag or ripgrep
nnoremap <leader>ag :Ag<Space>
nnoremap <leader>rg :Rg<Space>

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
" let g:airline_theme="base16_harmonic16"
" let g:airline_theme="base16_seti"
" let g:airline_theme="jellybeans"
" let g:airline_theme="aurora"

" tmuxline theme
" let g:airline#extensions#tmuxline#enabled = 0
" let g:tmuxline_theme = 'powerline'

" tmuxline separators
let g:tmuxline_powerline_separators = 1
let g:tmuxline_separators = {
            \ 'left' : '',
            \ 'left_alt': '❯',
            \ 'right' : '',
            \ 'right_alt' : '❮',
            \ 'space' : ' '}

" ---- buf ----
unmap <leader>h
unmap <leader>l

nnoremap <silent> <leader>bp :bprevious<cr>
nnoremap <silent> <leader>bn :bnext<cr>
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

let g:indentLine_enabled = 1
let g:vim_json_syntax_conceal = 0
autocmd Filetype json :IndentLinesDisable

if executable("ag")
    " let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
    let g:ackprg = 'ag --nogroup --nocolor --column'
    " let g:ackprg = 'ag --vimgrep'
endif

" Dash
nmap <silent> <leader>d <Plug>DashSearch
"""""""""""" Plugin End """""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Programming languages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" ======== begin autocompletion ========"


" ==== end autocompletion ====

" ---- Formatter ----
" map <C-K> :py3f /usr/local/Cellar/llvm/8.0.0/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:py3f /usr/local/opt/llvm/share/clang/clang-format.py<cr>

" ======== Linter ========"
" ALE
" Enable completion where available.
" let g:ale_completion_enabled = 1
" let g:ale_emit_conflict_warnings = 0
let g:ale_sign_column_always = 1
let g:ale_linters = {
            \   'c': ['clangd'],
            \   'cpp': ['ccls', 'clangd', 'clang-tidy', 'cquery', 'cpplint'],
            \   'java': ['checkstyle'],
            \   'javascript': ['eslint'],
            \   'markdown': ['vale', 'alex'],
            \   'python': ['pyls', 'flake8'],
            \   'rust': ['rls', 'cargo'],
            \   'shell': ['shellcheck'],
            \   'yaml': ['yamllint'],
            \}
" rustup component add rls rust-analysis rust-src
" rustup component add clippy
let g:ale_rust_rls_config = {
            \   'rust': {
            \     'clippy_preference': 'on'
            \   }
            \ }
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')

" \   'python': ['pyls', 'flake8'],
" pip install cpplint

" ========  LSP ========"

" lsp autozimu/LanguageClient-neovim
" if has('mac')
"   let g:LanguageClient_serverCommands = {
"         \ 'cpp': ['cquery','--log-file=/tmp/cq.log', '--init={"cacheDirectory":"/tmp/cquery/"}',
"         \ 'ccls','--log-file=/tmp/ccls.log',
"         \ 'clangd'],
"         \ 'go': ['go-langserver'],
"         \ 'python': ['pyls'],
"         \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls']
"         \ }
" elseif has('unix')
"   let g:LanguageClient_serverCommands = {
"         \ 'cpp': ['~/bin/cquery',
"         \ '--log-file=/tmp/cq.log',
"         \ '--init={"cacheDirectory":"/tmp/cquery/"}',
"         \ 'clangd'],
"         \ 'go': ['go-langserver'],
"         \ 'python': ['pyls'],
"         \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls']
"         \ }
" endif
"
" let g:LanguageClient_serverStderr = '/tmp/lc.stderr'
"
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" nnoremap <silent> <leader>lc :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> <leader>ld :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" nn <silent> <M-.> :call LanguageClient_textDocument_definition()<cr>
" nn <silent> <M-,> :call LanguageClient_textDocument_references()<cr>
"
" let g:LanguageClient_diagnosticsDisplay = {
"             \ 1: {
"             \     "name": "Error",
"             \     "texthl": "ALEError",
"             \     "signText": "ER",
"             \     "signTexthl": "ALEErrorSign",
"             \ },
"             \ 2: {
"             \     "name": "Warning",
"             \     "texthl": "ALEWarning",
"             \     "signText": "WA",
"             \     "signTexthl": "ALEWarningSign",
"             \ },
"             \ 3: {
"             \     "name": "Information",
"             \     "texthl": "ALEInfo",
"             \     "signText": "IN",
"             \     "signTexthl": "ALEInfoSign",
"             \ },
"             \ 4: {
"             \     "name": "Hint",
"             \     "texthl": "ALEInfo",
"             \     "signText": "HI",
"             \     "signTexthl": "ALEInfoSign",
"             \ },
"             \ }


" -- begin coc.nvim --

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" -- end coc.nvim --

" ---- begin programming language pluggin ----

" ======== Python ========"
"
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


" ==== golang ====

" auto FileType go autocmd BufWritePre <buffer> GoFmt
" autocmd FileType go compiler go

" vim-go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_deadline = "5s"

" let g:go_auto_sameids = 1

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" ==== rust lang ====

" rust.vim
" enable automatic running of :RustFmt when you save a buffer
let g:rustfmt_autosave = 1

" ======== clojure ========
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" === markdown ===
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

" === shell ===
let g:shfmt_extra_args = '-i 2 -ci'
let g:shfmt_fmt_on_save = 1

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
