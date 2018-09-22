call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/neomake/neomake'

Plug 'https://github.com/posva/vim-vue'

Plug 'sbdchd/neoformat'
" Plug 'prettier/vim-prettier', {
"  \ 'do': 'npm install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

Plug 'othree/html5.vim'

Plug 'vimwiki/vimwiki'

" Plug 'w0rp/ale'

" Plug 'ternjs/tern_for_vim', {'do':'npm install '}

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/echodoc.vim'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Show parameter doc.
Plug 'Shougo/echodoc.vim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-sensible'
" Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'metakirby5/codi.vim'
Plug 'majutsushi/tagbar'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-obsession'

" Debug
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'daniellmorris/vim-vebugger'

" Other stuff
Plug 'mbbill/undotree'
Plug 'janko-m/vim-test'
Plug 'christoomey/vim-tmux-runner'
Plug 'vim-scripts/AnsiEsc.vim'
" File search
Plug 'mileszs/ack.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin' " nerdtree shows git changes
" Gist
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

Plug 'mhinz/vim-startify' " Start screen
" Plug 'gabrielelana/vim-markdown' " Markdown support
Plug 'dbakker/vim-projectroot' " Project root tools

" GTD
Plug 'freitass/todo.txt-vim' " Todo.txt
Plug 'vim-scripts/utl.vim' " Follow links

" Markdown

" Google integrations
Plug 'itchyny/calendar.vim'

" Plug 'neilagabriel/vim-geeknote'

" Markdown
" function! BuildComposer(info)
"   if a:info.status != 'unchanged' || a:info.force
"     if has('nvim')
"       !cargo build --release
"     else
"       !cargo build --release --no-default-features --features json-rpc
"     endif
"   endif
" endfunction
" Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

call plug#end()
" Always draw the signcolumn.
set signcolumn=yes
" =============================================================
" Key Mappings
" =============================================================
" Leader is the comma'
" 
" General mappings
" ,,     mode switching (mapped to esc)
" ,b     switch to alternate buffer
" ,ev    'e'dit 'v'imrc file
" ,sv    's'ource 'v'imrc file
" ,aa    swap to the alternate (header/source) file
" ,av    swap to the alternate (header/source) file in a vertical split
" ,as    swap to the alternate (header/source) file in a split
" ,y     copy to the clipboard
" ,p     paste from the clipboard
" ,t     load current buffer's todos to the quickfix list
" ,T     load working directory's subfiles' todos to the quickfix list
" SPACE  clear search term
" --     format, because I hit -- instead of == all the time!
" ,fb    bigger font size
" ,fn    normal font size
" ,fs    smaller font size
" ,s     Toggle spell check on and off
"
" Search
" ,a     Ack Search selected
" 
" Fold management
" ,ff    'F'old the next 'F'unction
" -,+    close or open folds respectively
"
" Window management
" ,h ,j ,l ,k        go to left, down, up, and right window respectively
" ,mh ,mj ,ml ,mk    'm'ove current window left, down, up, and right respectively
" No longer used,ch ,mj ,ml ,mk    'c'lose window to the left, down, up, and right respectively
" ,o                 make the current window the 'o'nly one
"
" Building options
" ,ma    execute 'm'ake 'a'll
" ,mc    execute 'm'ake 'c'lean
" ,mi    execute 'm'ake 'i'nstall
"
" Insert mode movement
" c-h c-j c-k c-l    move left, down, up, and right but remain in insert mode
" c-i c-a            move to beginning of text or end of text while remaining in insert mode
"
" Tab management
" ,to    Open new tab
" ,tn    Next tab
" ,tp    Previous tab
" ,td    Destroy tab
"
" Tab button mappings
"  In insert mode, autocompletion of words
"  In normal or visual mode, block indenting
"
" Function key mappings
" F6 - Toggle TagList 
" =============================================================
" Markdown composer
let g:markdown_composer_browser = 'w3m'
let g:markdown_composer_open_browser = 0
" Vimwiki
" let g:vimwiki_list = [{'path': '~/vimwiki-md/',
"                    \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_list = [{'path': '~/vimwiki', 'template_path': '~/vimwiki/templates/',
          \ 'template_default': 'default', 'syntax': 'markdown', 'ext': '.md',
          \ 'path_html': '~/vimwiki/site_html/', 'custom_wiki2html': 'vimwiki_markdown',
          \ 'template_ext': '.tpl'}]
let g:vimwiki_global_ext = 0
" Do steps from the following link to make vimwiki work correctly with markdown
"  https://github.com/patrickdavey/vimwiki_markdown

" Calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

"NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Other

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let mapleader=","  

""vnoremap <silent> "+y y:call ClipboardYank()<cr>
""nnoremap <silent> "+p :call ClipboardPaste()<cr>p
noremap <silent> <leader>ts :setlocal tabstop=2<cr>:setlocal shiftwidth=2<cr>

" NERDTree Mapping
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>w :TagbarToggle<CR>

" Change buffer format
nmap <leader>fj :set filetype=json<CR>

" General mappings
imap <leader><leader> <esc>
cmap <leader><leader> <c-c>
vmap <leader><leader> <esc>
nmap <leader>b :b#<CR>
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>
"nmap <leader>s :setlocal spell! spelllang=en_us<CR>
nmap <leader>aa :call SwitchSourceHeader("norm")<CR>
nmap <leader>av :call SwitchSourceHeader("vert")<CR>
nmap <leader>as :call SwitchSourceHeader("sp")<CR>
vmap <leader>y "+y
nmap <leader>p "+p
nmap <leader>t :let @/ = "\\\\ctodo"<CR>:vimgrep /\\ctodo/j %<CR>
nmap <leader>T :let @/ = "\\\\ctodo"<CR>:vimgrep /\\ctodo/j ./**/*<CR>
nmap <space> :let @/ = ""<CR>
nmap -- ==
nmap <leader>fb :set guifont=DejaVu\\ Sans\\ Mono\\ 12<cr>
nmap <leader>fn :set guifont=DejaVu\\ Sans\\ Mono\\ 9<cr>
nmap <leader>fs :set guifont=DejaVu\\ Sans\\ Mono\\ 8<cr>
nmap <leader>s :setlocal spell spelllang=en_us<CR>
nmap <leader>ss :setlocal nospell<CR>

nmap <leader>a    :Ack! "\b<cword>\b" <CR>

nmap <leader>pp :call DestroyPrettier()<CR>
nmap <leader>p :call SetupPrettier()<CR>

let b:myLang=0
function! ToggleSpell()
  if b:myLang==0
    let b:myLang=1
    setlocal nospell
  else
    setlocal spell spelllang=en_us
    let b:myLang=0
  endif
  echo "spell checking language:" g:myLangList[b:myLang]
endfunction

" Fold management
map - :set fen<CR>
map + :set nofen<CR>
nmap <leader>ff V/{<CR>%zf<>

" Window management
noremap <silent> <leader>h :wincmd h<cr>
noremap <silent> <leader>j :wincmd j<cr>
noremap <silent> <leader>k :wincmd k<cr>
noremap <silent> <leader>l :wincmd l<cr>
" Using ,c for codi instead
"noremap <silent> <leader>cj :wincmd j<cr>:close<cr>
"noremap <silent> <leader>ck :wincmd k<cr>:close<cr>
"noremap <silent> <leader>ch :wincmd h<cr>:close<cr>
"noremap <silent> <leader>cl :wincmd l<cr>:close<cr>
"noremap <silent> <leader>cc :close<cr>
noremap <silent> <leader>ml <C-W>L
noremap <silent> <leader>mk <C-W>K
noremap <silent> <leader>mh <C-W>H
noremap <silent> <leader>mj <C-W>J
noremap <silent> <leader>o <c-w>o
" Codi
nmap <leader>co :Codi<CR>
nmap <leader>cj :Codi javascript<CR>
nmap <leader>cc :Codi!<CR>

" Building options
" nmap <leader>ma :make all<CR>
" nmap <leader>mc :make clean<CR>
" nmap <leader>mi :make install<CR>

nmap <leader>z, :tabnew %<CR>

" Insert mode movement
imap <c-h> <c-o>h
imap <c-j> <c-o>j
imap <c-k> <c-o>k
imap <c-l> <c-o>l
"imap <c-i> <c-o>^ "Messes up the tab mappings ?!
imap <c-a> <c-o>g_<c-o>l

" Mappings for VI
" - Backspace
nmap <BS> x
" - Keypad
map! Op 0
map! Oq 1
map! Or 2
map! Os 3
map! Ot 4
map! Ou 5
map! Ov 6
map! Ow 7
map! Ox 8
map! Oy 9
map! Ol +
map! OS -
map! OQ /
map! On .

" Tab management
nmap <leader>to :tabnew<CR>
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>
nmap <leader>td :tabc<CR>

" Tab mappings
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
if !exists("blocktab")
   let blocktab = 1
   vmap <unique> <TAB> >gv
   vmap <unique> <S-TAB> <gv
   nmap <unique> <TAB> V>gv<esc>
   nmap <unique> <S-TAB> V<gv<esc>
endif

"Function keys
" nmap <F6> :TlistToggle<CR>

" =============================================================
" Options
" =============================================================
autocmd!
filetype on
filetype plugin on
filetype indent on
set nocompatible           "Don't make compatible with vi
set lazyredraw             "Don't update the display while executing macros 
set showmode               "At least let yourself know what mode you're in
set wildmenu               "Enable enhanced command-line completion 
set wildmode=longest,list,full
au FileType * setl fo-=cro "Turn off autocompletion of comments
"au TabEnter * lcd %:p:h
set splitbelow
set splitright

" =============================================================
" Tab settings 
" =============================================================
set et
set smarttab
set smartindent
set autoindent
au BufEnter * set sw=4
au BufEnter * set ts=4
au BufEnter [Rr]akefile set sw=2
au BufEnter [Rr]akefile set ts=2
au BufEnter *.\(rb\|erb\|js\|jsx\|html\|rjs\|feature\) set sw=2
au BufEnter *.\(rb\|erb\|js\|jsx\|html\|rjs\|feature\) set ts=2
au FileType make setlocal noexpandtab "Allow tabs in make files

" =============================================================
" GUI Options
" =============================================================
set incsearch                       "Show first match while typing searches
set mousehide
set mouse=a
set hlsearch                        "Highlight searches
set background=dark
colorscheme twilight2
set ruler
set scrolloff=3                     "Scrolloff
set vb                              "Set visual bell (no beeping)
set guifont=DejaVu\ Sans\ Mono\ 12  "Set to a readable font
set guioptions=ac                   "Turn off the toolbar
set synmaxcol=2048                  "Syntax coloring lines that are too long is slow
set ch=2                            "Make command line two lines high
set laststatus=2                    "Display status line even if there is only one window
set nu                              "Add number lines
set diffopt=filler,vertical         "Difference files in vertical splits

"Save Marks - cursor positioning and restores in center of window
set viminfo='10,\"500,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"z.")|else|exe "norm $"|endif|endif

"Cursor modification (| on insert, block on non-insert)
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

set t_RV=
"if &term =~ "xterm"
"   let &t_SI = "\<Esc>]12;black\x7"
"   let &t_EI = "\<Esc>]12;grey\x7"
"endif

" Set the status line the way I like it
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
"set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set stl=%f\ %m\ %r\ \[%{&filetype}\]\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\ 
syntax on                           "Turn on Syntax Highlighting

" Turn numbers on when entering a window and off when exiting
"augroup BgHighlight
"    autocmd!
"    autocmd WinEnter * set number
"    autocmd WinLeave * set nonumber
"    autocmd WinEnter * hi LineNr guibg='#aaaaaa' guifg='#000000'
"augroup END

" Octave Syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct setfiletype octave 
augroup END 

" =============================================================
" Gist setup
" =============================================================
let g:gist_use_password_in_gitconfig = 1

" =============================================================
" Git gutter
" =============================================================
let g:gitgutter_max_signs = 1000
" =============================================================
" Line wrapping settings"
" =============================================================
set showbreak=>>
set linebreak
set textwidth=0
set backspace=indent,eol,start
set nowrapscan
set nowrapscan

" =============================================================
" Miscellaneous
" =============================================================
set spellfile=~/.vim/dict.add          "Set spellfile
set cinkeys=0{,0},0),:,!,o,O,e       "Prevent #if's from going to the beginning of the line
set autowrite                          "Allows for make command in : mode
set hidden                             "Allow hidden unwritten modified buffers
set cpoptions=ces$
"set ve=all                             "Allow the cursor to go into 'invalid' places

" =============================================================
" Functions
" =============================================================
function DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction

"Tab completion function
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
     return "\<tab>"
  else
     return "\<c-p>"
  endif
endfunction
function! ScopeMenu()
  let col = col('.') -1
endfunction
"header/source swapper
function! SwitchSourceHeader(how)
    if (expand ("%:e") == "c")
        if (a:how == "vert")
            vert sf **/%:t:r.h
        else
            if (a:how == "sp")
                sf **/%:t:r.h
            else
                find **/%:t:r.h
            endif
        endif
    else
        if (a:how == "vert")
            vert sf **/%:t:r.c
        else 
            if (a:how == "sp")
                sf **/%:t:r.c
            else
                find **/%:t:r.c
            endif
        endif
    endif
endfunction

function! ClipboardYank()
    call system('clip.exe', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('cd /mnt/c; paste.exe')
  let @@ = substitute(@@, "\r\n", "\n", "g")
  let @@ = @@[:-2]
endfunction
" =============================================================
" Folding
" =============================================================
set foldmethod=marker 
set foldopen=search,undo,hor,block,insert,jump,mark,percent,quickfix,tag 
set foldclose=all
set nofen

" =============================================================
" Macros
" =============================================================
runtime macros/matchit.vim


" Setup jshint
" let g:neomake_javascript_jshint_maker = {
"     \ 'args': ['--verbose'],
"     \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
"     \ }
" if eslintrc file present use eslint, else use standard
""""""if findfile('.eslintrc', '.;') !=# ''
""""""    let g:neomake_javascript_enabled_makers = ['eslint']
""""""" load local eslint in the project root to avoid global plugin installations
""""""    let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
""""""    let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
""""""else
""""""    let g:neomake_javascript_enabled_makers = ['standard']
""""""endif


""""""""""""""""""""""""""
" Prettier
"""""""""""""""""""""""""
"let g:prettier#config#trail = 'typescript'
"let g:prettier#config#trailing_comma = 'es5'
"let g:prettier#config#single_quote = 'true'
" let g:neoformat_try_formatprg = 1
" let g:neoformat_verbose = 1
" function! DestroyPrettier()
"     augroup NeoformatAutoFormat
"         autocmd!
"     augroup END
" endfunction
" function! SetupPrettier()
"     augroup NeoformatAutoFormat
"         autocmd!
"         autocmd FileType javascript setlocal formatprg=prettier\ --write\ --stdin\ --single-quote\ --trailing-comma\ es5\ --stdin-filepath\ %:p
"         autocmd BufWritePre *.js Neoformat
"     augroup END
" endfunction
" call SetupPrettier()
function! DestroyPrettier()
    augroup NeoformatAutoFormat
        autocmd!
    augroup END
endfunction
function! SetupPrettier()
    augroup NeoformatAutoFormat
        autocmd!
        autocmd BufWritePre *.js MyPrettyFile
    augroup END
endfunction
command! MyPrettyFile :w | :silent exec "!prettier --write --single-quote --trailing-comma es5 % >/dev/null 2>&1" | :e
call SetupPrettier()

""""""""""""""""""""""""""
" Git settings
"""""""""""""""""""""""""
set updatetime=100

""""""""""""""""""""""""""
" Ack.vim settings
"""""""""""""""""""""""""
" Use ag - (sudo apt-get install silversearcher-ag )
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
""""""""""""""""""""""""""
" Language server - Javascript
"""""""""""""""""""""""""
" Automatically start language servers.
let g:LanguageClient_autoStart = 1
let g:LanguageClient_loggingLevel = 'ERROR'
" Minimal LSP configuration for JavaScript
" let g:LanguageClient_serverCommands = {}
" if executable('javascript-typescript-stdio')
"   let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
"   " Use LanguageServer for omnifunc completion
"   " autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
" else
"   echo "javascript-typescript-stdio not installed!\n"
"   :cq
" endif
" 
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
" " <leader>ld to go to definition
" autocmd FileType javascript nnoremap <buffer>
"   \ <leader>ld :call LanguageClient#textDocument_definition()<cr>
" " <leader>lh for type info under cursor
" autocmd FileType javascript nnoremap <buffer>
"   \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
" " <leader>lr to rename variable under cursor
" autocmd FileType javascript nnoremap <buffer>
"   \ <leader>lr :call LanguageClient_textDocument_rename()<cr>

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ }

" Make so warning do not show up
let g:LanguageClient_windowLogMessageLevel = "Error"

autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
" set omnifunc=syntaxcomplete#Complete

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

nnoremap <silent> <leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>lr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <leader>lf :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> <leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F12> :call LanguageClient#textDocument_definition()<CR>

let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

" Doesn't quite work
"let b:Plugin_LanguageClient_started = 0
"augroup LanguageClient_signature
"	autocmd!
"    autocmd FileType javascript let b:Plugin_LanguageClient_started = 1
"	autocmd User LanguageClientStarted let b:Plugin_LanguageClient_started = 1
"	autocmd User LanguageClientStopped let b:Plugin_LanguageClient_started = 0
"	autocmd CursorMoved * if b:Plugin_LanguageClient_started | call LanguageClient#textDocument_signatureHelp() | endif
"augroup END
""""""""""""""""""""""""""
" FZF (fzf)
"""""""""""""""""""""""""
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

""""""""""""""""""""""""""
" TMUX command sidebar
"""""""""""""""""""""""""
function! TmuxSidebarCmd(cmd)
  echom 'Tmux side bar cmd: ' . a:cmd
  :silent exec "!tmux capture-pane -t {right-of} || { tmux split-window -h; tmux resize-pane -t {right-of} -x 150 ; }"
  :silent exec "!tmux send-keys -t {right-of} C-c"
  :silent exec '!tmux send-keys -t {right-of} "'.a:cmd.'" C-m'
endfunction

function! TmuxBottomBarCmd(cmd)
  echom 'Tmux bottom bar cmd: ' . a:cmd
  :silent exec "!tmux capture-pane -t {down-of} || { tmux split-window -v; tmux resize-pane -t {down-of} -y 45 ; }"
  :silent exec "!tmux send-keys -t {down-of} C-c"
  :silent exec '!tmux send-keys -t {down-of} "'.a:cmd.'" C-m'
endfunction

""""""""""""""""""""""""""
" Vebugger - Debugger
"""""""""""""""""""""""""
let g:vebugger_leader='<Leader>d'
let g:vebugger_ninspect_eval_out_to_console=1
autocmd BufRead,BufNewFile,TextChanged,TextChangedI,TextChangedP Vebugger:Shell set filetype=json
" Keys ',d' + key below
" i      |:VBGstepIn|
" o      |:VBGstepOver|
" O      |:VBGstepOut|
" c      |:VBGcontinue|
" 
" b      |:VBGtoggleBreakpointThisLine|
" B      |:VBGclearBreakpints|
" 
" e      |:VBGevalWordUnderCursor| in normal mode
"        |:VBGevalSelectedText| in select mode
" E      Prompt for an argument for |:VBGeval|
" 
" x      |:VBGexecute| current line in normal mode.
"        |:VBGexecuteSelectedText| in select mode
" X      Prompt for an argument for |:VBGexecute|
" 
" t      |:VBGtoggleTerminalBuffer|
" r      Select mode only - |:VBGrawWriteSelectedText|
" R      Prompt for an argument for |:VBGrawWrite|

""""""""""""""""""""""""""
" vim-test Testing framework
"""""""""""""""""""""""""
let g:test#runner_commands = ['Mocha']

let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1

func AttachDebugger(timer)
  call vebugger#ninspect#attach('127.0.0.1:9229', {'args':[]})
endfunc

function! DebugStrategy(cmd)
  echom 'It works! Command for running tests: ' . a:cmd
  " :VtrKillRunner
  "call test#strategy#vtr('nvm use stable')
  "call test#strategy#vtr(a:cmd.' --inspect-brk')
  :silent exec "!tmux list-panes | wc -l | awk '{if ($0=="1") {system(\"tmux split-window -v\")}}'"
  :silent exec "!tmux send-keys -t bottom C-c"
  :silent exec '!tmux send-keys -t bottom "'.a:cmd.' --inspect-brk'.'" C-m'
  let timer = timer_start(1000, 'AttachDebugger')
endfunction

function! NonDebugStrategy(cmd)
  echom 'It works! Command for running tests: ' . a:cmd
  " :VtrKillRunner
  " call test#strategy#vtr('nvm use stable')
  " call test#strategy#vtr(a:cmd)
  :silent exec "!tmux list-panes | wc -l | awk '{if ($0=="1") {system(\"tmux split-window -v\")}}'"
  :silent exec "!tmux send-keys -t bottom C-c"
  :silent exec '!tmux send-keys -t bottom "'.a:cmd.'" C-m'
endfunction

let g:test#custom_strategies = {'debug': function('DebugStrategy'), 'nondebug': function('NonDebugStrategy')}
let g:test#strategy = 'debug'
let g:vebugger_path_node='/home/daniellmorris/.nvm/versions/node/v8.11.3/bin/node'

nmap <silent> mn :TestNearest<CR> 
nmap <silent> mf :TestFile<CR>    
nmap <silent> ms :TestSuite<CR>   
nmap <silent> mg :TestLast<CR>    
nmap <silent> mv :TestVisit<CR>   
nmap <silent> md :let g:test#strategy = 'debug'<CR>   
nmap <silent> mdd :let g:test#strategy = 'nondebug'<CR>   

""""""""""""""""""""""""""
" Run current file
"""""""""""""""""""""""""
function! RunFile(cmd)
  echom 'It works! Command for running tests: ' . a:cmd
  :VtrKillRunner
  call test#strategy#vtr('nvm use stable')
  call test#strategy#vtr(a:cmd)
endfunction
nnoremap <leader>mr :call RunFile('node '.expand('%:p'))<CR>

function! RunDebugFile(cmd)
  echom 'It works! Command for running tests: ' . a:cmd
  :VtrKillRunner
  call test#strategy#vtr('nvm use stable')
  call test#strategy#vtr(a:cmd.' --inspect-brk')
  let timer = timer_start(1000, 'AttachDebugger')
endfunction
nnoremap <leader>md :call RunDebugFile('node --inspect-brk '.expand('%:p'))<CR>

""""""""""""""""""""""""""
" Run selected package.json selected stuff
"""""""""""""""""""""""""
command! -range -nargs=0 PackageRunSelected call NonDebugStrategy('npm run '.vebugger#util#get_visual_selection())

nmap <silent> mc :PackageRunSelected<CR>   
vmap <silent> mc :PackageRunSelected<CR>   
""""""""""""""""""""""""""
"
"""""""""""""""""""""""""

"let g:neomake_javascript_enabled_makers = ['eslint'] "['jshint']
" Autorun neomake
"autocmd! BufWritePost * Neomake

" Neomake config
"let g:neomake_open_list = 2
"let g:neomake_verbose=3 " To debug neomake
"let g:neomake_warning_sign = {
"  \ 'text': 'W',
"  \ 'texthl': 'WarningMsg',
"  \ }
"let g:neomake_error_sign = {
"  \ 'text': 'E',
"  \ 'texthl': 'ErrorMsg',
"  \ }

""""""""""""""""""""""""""""
" Make so files autoreload
""""""""""""""""""""""""""
"autocmd BufEnter,FocusGained * checktime
"augroup AutoSwap
"        autocmd!
"        autocmd SwapExists *  call AS_HandleSwapfile(expand('<afile>:p'), v:swapname)
"augroup END
"
"function! AS_HandleSwapfile (filename, swapname)
"        " if swapfile is older than file itself, just get rid of it
"        if getftime(v:swapname) < getftime(a:filename)
"                call delete(v:swapname)
"                let v:swapchoice = 'e'
"        endif
"endfunction
"autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
"  \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif
"
"augroup checktime
"    au!
"    if !has("gui_running")
"        "silent! necessary otherwise throws errors when using command
"        "line window.
"        autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI,FocusGained,BufEnter,FocusLost,WinLeave * checktime
"    endif
"augroup END

""""""""""""""""""""""""""""""'
"
"""""""""""""""""""""""""""""
"if has(“termguicolors”)
    set termguicolors
"endif

" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.javascript.html.css
" autocmd BufRead,BufNewFile *.vue setlocal tabstop=2
" autocmd BufRead,BufNewFile *.vue setlocal shiftwidth=2
