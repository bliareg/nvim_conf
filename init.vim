set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim

if !exists('*NotJsFt')
  function g:NotJsFt()
    let ext = expand('%:e')
    return(!(ext == 'js' || ext == 'jsx'))
  endfunction
endif

set nocompatible
call dein#begin(expand('~/.vim/dein')) " plugins' root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('Shougo/unite.vim')

"Detach process==============
call dein#add('tpope/vim-dispatch')

"============================



"INTERFACES ADDONS===========
call dein#add('shougo/denite.nvim')
call dein#add('5t111111/denite-rails')
"call dein#add('bling/vim-airline')
"call dein#add('vim-airline/vim-airline-themes')
call dein#add('itchyny/lightline.vim')
call dein#add('edkolev/tmuxline.vim')

" call dein#add('yggdroot/indentline')

call dein#add('scrooloose/nerdtree',
      \{'on_cmd': ['NERDTreeToggle', 'NERDTree']})
call dein#add('Xuyuanp/nerdtree-git-plugin',
      \{'on_cmd': ['NERDTreeToggle', 'NERDTree']})
call dein#add('sjl/gundo.vim',
      \{'on_cmd': 'GundoToggle'})
"============================

"SYNTAX SUPPORT==============
" Configure
"call dein#add('scrooloose/syntastic') TODO remove if ale success
call dein#add('w0rp/ale')
call dein#add('valloric/matchtagalways')

call dein#add('sheerun/vim-polyglot')

call dein#add('irrationalistic/vim-tasks',
      \{'on_ft': 'todo'})
call dein#add('kchmck/vim-coffee-script',
      \{'on_ft': 'coffee'})
call dein#add('mxw/vim-jsx')
call dein#add('pangloss/vim-javascript',
      \{'on_ft':['javascript', 'javascript.jsx']})
call dein#add('maksimr/vim-jsbeautify')
call dein#add('vim-ruby/vim-ruby',
      \{'on_ft': 'ruby'})
"============================


"SEARCH======================
call dein#add('haya14busa/incsearch.vim')
call dein#add('othree/eregex.vim',
      \{'on_func': 'eregex#toggle'})
call dein#add('gabesoft/vim-ags')
call dein#add('eugen0329/vim-esearch')
"============================


"AUTOCOMPLETE================
call dein#add('danchoi/ri.vim',
      \{'on_ft': ['ruby']}) "Docs viewer

call dein#add('Shougo/deoplete.nvim')
            "\{'if': 'NotJsFt() == 1'})

call dein#add('Shougo/deoplete-rct',
      \{'on_ft': ['ruby']})
call dein#add('alexgenco/neovim-ruby',
      \{'on_ft': ['ruby']})
call dein#add('fishbullet/deoplete-ruby',
      \{'on_ft': ['ruby']})

call dein#add('carlitux/deoplete-ternjs',
      \{'on_ft': ['javascript', 'javascript.jsx']})
call dein#add('othree/jspc.vim',
      \{'on_ft': ['javascript', 'javascript.jsx']})

" call dein#add('valloric/youcompleteme',
"       \{'on_ft': ['javascript', 'javascript.jsx', 'jsx']})
"============================

"INTEGRATION=================
call dein#add('tpope/vim-rails')
"              \{'on_ft': ['ruby']})

"Autoread changes, matchit and more.
call dein#add('tpope/vim-sensible')

" Autolaod root configs
" call dein#add('airblade/vim-rooter')
call dein#add('tpope/vim-eunuch')
"============================


"EDIT ADDONS=================
call dein#add('matze/vim-move')
call dein#add('terryma/vim-multiple-cursors')
"call dein#add('scrooloose/nerdcommenter')

call dein#add('svermeulen/vim-easyclip')

call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-endwise',
      \{'on_ft': ['ruby', 'vim']})
call dein#add('tpope/vim-repeat')

call dein#add('tmhedberg/simpylfold')
call dein#add('raimondi/delimitmate')
"call dein#add('matchit.zip',
"\{'on_ft': ['ruby']})
call dein#add('kana/vim-textobj-user')
call dein#add('nelstrom/vim-textobj-rubyblock',
      \{'on_ft': ['ruby']})

call dein#add('chrisbra/nrrwrgn')

"Get known how its works
"call dein#add('junegunn/vim-easy-align')

"Moving args
call dein#add('andrewradev/sideways.vim')
"============================

"TAGS========================
call dein#add('ludovicchabant/vim-gutentags')
"============================


"NAVIGATION==================
call dein#add('kshenoy/vim-signature')
call dein#add('easymotion/vim-easymotion')
call dein#add('haya14busa/incsearch-easymotion.vim')
"============================

"GIT EXTENSIONS==================
call dein#add('tpope/vim-fugitive') "Get known more
call dein#add('airblade/vim-gitgutter')
"============================


"SNIPPETS====================
call dein#add('mattn/emmet-vim') "Get known more
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
"============================


"THEMES======================
call dein#add('nanotech/jellybeans.vim')
call dein#add('joshdick/onedark.vim')
call dein#add('keitanakamura/neodark.vim')

" call dein#add('w0ng/vim-hybrid')
" call dein#add('jpo/vim-railscasts-theme')
" call dein#add('chriskempson/vim-tomorrow-theme')
" call dein#add('alessandroyorba/alduin')
" call dein#add('cocopon/iceberg.vim')
" call dein#add('andreasvc/vim-256noir')
" call dein#add('morhetz/gruvbox')
" call dein#add('reedes/vim-colors-pencil')
" call dein#add('ajh17/spacegray.vim')
" call dein#add('jacoborus/tender')
" call dein#add('rakr/vim-one')
"============================

" and a lot more plugins.....
call dein#end()

colorscheme onedark
let g:lightline = {
      \ 'colorscheme': 'jellybeans'
      \}
" let g:tmuxline_preset = 'lightline'

highlight default link deniteMatchedChar None
highlight default link deniteMatchedRange None


set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set mouse=a

set directory=~/.vim/swapfiles/

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=5       "deepest fold is 3 levels
" set nofoldenable        "dont fold by default
set foldenable
set foldlevelstart=3

" set bufhidden=delete


" POSIBLY DELETE---
"filetype plugin on
"filetype indent on

"turn on syntax highlighting

filetype plugin indent on
syntax enable
"syntax on

" POSIBLY DELETE-------



call denite#custom#map(
      \ 'insert',
      \ '<C-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

call denite#custom#source(
      \ 'file_rec', 'sorters', ['sorter_rank'])


call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/',
      \   'node_modules/', 'log/'])

call denite#custom#var("file_rec", "command",
      \ [ "find", "-L", ":directory",
      \ "-path", "*/node_modules/*", "-prune", "-o",
      \ "-path", "*/.svn/*", "-prune", "-o",
      \ "-path", "*/log/*", "-prune", "-o",
      \ "-path", "*/.git/*", "-prune", "-o",
      \ "-path", "*/tmp/*", "-prune", "-o",
      \ '-type', 'l', '-print', '-o',
      \ '-type', 'f', '-print'])

" TRY REPLACE WITH RIPGREP!!!!
call denite#custom#var('grep', 'command', ['ack'])
call denite#custom#var('grep', 'default_opts',
      \ ['--context=3'])
call denite#custom#var('grep', 'final_opts', ['--context=3'])

"call denite#custom#var('grep', 'command', ['rg'])
"call denite#custom#var('grep', 'default_opts',
      "\ ['--vimgrep', '--no-heading'])
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])

"=========================================================================
"CONFFIGS
"set t_Co=256
set list
set number
"set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
"set listchars=tab:>·,trail:*,extends:>,precedes:<,space:␣
set listchars=tab:>·,trail:*,nbsp:⋅

let g:move_key_modifier = 'C'
let g:eregex_default_enable = 0
nmap <Leader>md :mksession! $vdefsession<esc>

set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

set hidden
set confirm

"undo settings
set undodir=~/.vim/undofiles
set undofile
set colorcolumn=+1 "mark the ideal max text width

"Live substitute
set inccommand=split

"visual search
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

set modifiable
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby setl omnifunc=syntaxcompelete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS


" Enable jsx syntax for js
let g:jsx_ext_required = 0

let g:ycm_seed_identifiers_with_syntax = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 70

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

" Ale configuration
let g:ale_linters = {
\   'javascript': [],
\   'ruby': ['rubocop'],
\}

" Disable ale by default
let g:ale_enabled = 1

" search configs

let g:esearch = {
      \'adapter': 'ack'
      \}

let g:esearch#adapter#ack#options = '--context=3 --ackrc=/home/bliareg/.ackrc'

"line movement options---
let g:move_auto_indent = 0

"Ultisnips expanding
let g:UltiSnipsExpandTrigger="<A-j>"

"Multple cursor options
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-N>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"Cusrom surround
let g:surround_{char2nr("R")} = "{/*\r*/}"


"=========================================================================



"SHORTCUTS
let mapleader = "\\"
nmap ,m :Denite rails:model<esc>
nmap ,c :Denite rails:controller<esc>
nmap ,h :Denite rails:helper<esc>
nmap ,v :Denite rails:view<esc>

nmap <C-f> :Denite file_rec<esc>
nmap th :Denite register<esc>
nmap ts :Denite grep<esc>
nmap tb :Denite buffer<esc>
nmap tc :Denite command<esc>
nmap tf :Denite filetype<esc>
nmap tl :Denite line<esc>

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

nnoremap <leader>/ :call eregex#toggle()<CR>

"map <Leader> <Plug>(easymotion-prefix)
nmap F <Plug>(easymotion-lineanywhere)
nmap f <Plug>(easymotion-overwin-f2)

"Change args order
nmap , :SidewaysRight<esc>
nmap ,[ :SidewaysLeft<esc>

nmap ,2 :SidewaysRight<esc>
nmap ,1 :SidewaysLeft<esc>
nmap ,1 :SidewaysLeft<esc>

"Nerd tree
nmap tr :NERDTreeToggle<esc>
nmap tn :NERDTree<esc>

"Git commads
nmap gs :Gstatus<esc>
nmap gmm :Gcommit -m ""
nmap gm :Gcommit<esc>
nmap gpl :Gpull
nmap gpp :Gpush
nmap gv :Gitv<esc>
nmap gh :Git checkout
nmap gb :Git branch
nmap gfe :Git fetch
nmap gme :Git merge
nmap gd :Gdiff

"Undo tree
nmap tug :GundoToggle<esc>

"Edit specific rails files
nmap r :e config/routes.rb<esc>
nmap s :Eschema <esc>
nmap d :e config/database.yml<esc>
nmap g :e Gemfile<esc>

"Output some info
nmap ]n :echo@% <esc>
nmap ]p :!ls %:p <esc>

nmap <Leader>m :mksession $vsessions/
nmap <Leader>md :mksession! $vdefsession<esc>

"Add lines
nmap 'o o<esc>
nmap "O O<esc>

"Buffers"
nmap gr :bn<esc>
nmap gR :bp<esc>
"nmap gc :bd<esc>

"Insert from normal mode
nmap ,<Enter> i<Enter><esc>
nmap ,<Tab> i<Tab><esc>
nmap ,<Space> i <esc>

"Stop highlighting
nmap <C-l> :noh <esc>

"Syntastic checkers
nmap <Leader>rs :SyntasticCheck rubocop<esc>

"visual search mappings
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l<esc>



nmap <C-t> :tabnew<esc>
nmap <C-s> :w<esc>
nmap Q :clo<esc>
nmap <C-Q> :bd!<esc>
nmap <C-A-Q> :quitall!<esc>

"GitGutter shortcuts
nmap ,gd :GitGutterLineHighlightsToggle<esc>
nmap \] :GitGutterNextHunk<esc>
nmap \[ :GitGutterPrevHunk<esc>
nmap ,gp :GitGutterPreviewHunk<esc>
nmap ,gu :GitGutterUndoHunk<esc>

nmap ta :ALEToggle<esc>

nmap X <Plug>MoveMotionEndOfLinePlug

" autocmd FileType javascript vnoremap <buffer>  \l :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> \l :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> \l :call RangeJsxBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  \l :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> \l :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> \l :call RangeCSSBeautify()<cr>

runtime! plugin/sensible.vim
