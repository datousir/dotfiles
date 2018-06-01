let g:python_host_prog = '/Users/baoyan.zhang/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/baoyan.zhang/.pyenv/versions/neovim3/bin/python'

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim

" try
" source ~/.vim_runtime/my_configs.vim
" catch
" endtry

" ==================== Vim Plug Begin ========================================
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
" Plug 'Shougo/denite.nvim'

" search
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf.vim'

Plug 'mhinz/vim-startify'

" file management
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/mru.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

Plug 'vim-scripts/a.vim'
Plug 'amix/open_file_under_cursor.vim'

" buffer
Plug 'jlanzarotta/bufexplorer'
" Plug 'bling/vim-bufferline'

Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'scrooloose/snipmate-snippets'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
" Plug 'airblade/vim-gitgutter'


Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

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
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim'
Plug 'altercation/vim-colors-solarized'


" tmux
Plug 'edkolev/tmuxline.vim'

" nginx
Plug 'chr4/nginx.vim'


" dash for mac
Plug 'rizzatti/dash.vim'

" markdown
Plug 'tpope/vim-markdown'

" ---- lint engine ----
Plug 'w0rp/ale'

" language server protocol for vim
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

" for golang
Plug 'fatih/vim-go'

" for python
" Plug 'jmcantrell/vim-virtualenv'
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
" Plug 'vim-scripts/paredit.vim'
" Plug 'kien/rainbow_parentheses.vim'

" auto-completiion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" for python
Plug 'zchee/deoplete-jedi'

" rust
Plug 'rust-lang/rust.vim'

" ======================================

" All of your Plugins must be added before the following line
call plug#end()            " required

" =================== Vundle End =======================================================================

" gui options

set go-=L " left scrollbar
set go-=r " right scrollbar

" line number
set nu

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


" ==== colorscheme ====

" base16 colorscheme preview:
" http://chriskempson.github.io/base16/

" For terminal Vim(non-gui) please ensure you are
" using a base16 terminal theme.
" https://github.com/chriskempson/base16-vim#terminal-themes
" colorscheme base16-monokai

if has('gui_running')
  set background=dark
  " colorscheme solarized
  colorscheme dracula
else
  colorscheme dracula
endif
call togglebg#map("<F5>")


" workaround for vim background color erase
let &t_ut=''

" set tab and space characters to show in list mode
set listchars=tab:>-,space:-

if has("gui_macvim")
    set guifont=Hack\ Nerd\ Font:h14
    " set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14
    " set guifont=Fira\ Mono\ for\ Powerline:h16
    " set guifont=Fira\ Code:h16
    " set guifont=Source\ Code\ Pro:h14
    " set guifont=PT\ Mono:h14
    " set guifont=Noto\ Mono:h14
    " set guifont=Operator\ Mono:h16
elseif has("gui_vimr")
    set wrap
    " set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14
elseif has("gui_gtk2")
    set guifont=Hack\ Nerd\ Font:h14
    " set guifont=Droid\ Sans\ Mono\ 12
elseif has("gui")
    set guifont=Hack\ Nerd\ Font:h14
    " set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14
endif

" configure tagbar
nnoremap <F8> :TagbarToggle<CR>

" open taglist window
nnoremap <silent> <leader>tl :TlistToggle<CR>


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

"""""""""""" Plugin Begin """""""""""""""""""""""""""""""""""

"fzf
set rtp+=/usr/local/opt/fzf

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = '' 
" let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" autocmd vimenter * NERDTree
nnoremap <F9> :NERDTreeToggle<CR>

if executable("ag")
    " let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
    let g:ackprg = 'ag --vimgrep'
endif

"""""""""""" Plugin End """""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Programming languages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ======== autocompletion ========"
" deoplete.
let g:deoplete#enable_at_startup = 1

" ======== Lint ========"
" ALE
" Enable completion where available.
" let g:ale_completion_enabled = 1
" let g:ale_emit_conflict_warnings = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'EE'
let g:ale_sign_warning = 'WW'
let g:ale_linters = {
\   'python': ['flake8'],
\}

" ======== lsp: Language server  ========"
" lsp autozimu/LanguageClient-neovim
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" ======== Python Begin ========"
" vim-flake8
" let g:flake8_show_in_gutter=1
" let g:flake8_show_in_file=1
" let g:flake8_show_quickfix=0
" autocmd BufWritePost *.py call Flake8()

" python-mode
" let g:pymode_quickfix_minheight=0
" let g:pymode_quickfix_maxheight=0
" let g:pymode_doc=1
" let g:pymode_doc_bind='K'
" let g:pymode_virtualenv=1
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_signs = 0
" let g:pymode_lint_cwindow=0

" let g:pymode_rope = 0

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
