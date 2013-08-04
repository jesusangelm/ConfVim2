"Usamos Vim, no VI
set nocompatible

"Vundle!!!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Vundle administra Vundle!!! WTF!
Bundle 'gmarik/vundle'

"Plugins
Bundle 'mileszs/ack.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'sjl/badwolf'
Bundle 'tpope/vim-bundler'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ap/vim-css-color'
Bundle 'vim-scripts/VIM-Color-Picker'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-cucumber'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tpope/vim-markdown'
Bundle 'tomasr/molokai'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'dan-bolsun/vim-nginx'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'jpo/vim-railscasts-theme'
Bundle 'garbas/vim-snipmate'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'tomtom/tlib_vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'KohPoll/vim-less'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'slim-template/vim-slim'
Bundle 'honza/vim-snippets'
Bundle 'vim-scripts/CSApprox'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"soporte de 256 colores en la terminal
set t_Co=256

"Color del fondo
set background=dark

"Esquema de colores
colorscheme molokai

"permitir backspacing en modo insertar
set backspace=indent,eol,start

set noswapfile "desactiva los archivos Swap
set nobackup   "no se crean respaldos permanentes cuando se guarda un archivo
set nowritebackup "no se crean respaldos temporales al guardar archivos

"load ftplugins and indent files
filetype off "requerido por Vundle
filetype plugin on
filetype indent on
filetype plugin indent on "requerido por Vundle

"activacion resaltado de sintaxys
syntax on

"soporte de raton
set mouse=a
set ttymouse=xterm2

"hide buffers when not displayed
set hidden

"historial de linea de comandos
set history=1000

"muchos historial de deshacer
set undolevels=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set number      "enumerar las lineas

set ignorecase "busquedas no distinguen mayusculas y minusculas
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set wrap        "corta lineas largas para evitar scroll horizontal
set showbreak=↪ "marca para indicar un quiebre de lineas largas
set list "muestra tabulaciones, fin de linea, espacios, etc.
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:⋅,nbsp:.
set colorcolumn=80 "marca el ancho maximo que deberia tener una linea
set textwidth=80

"configs de identacion
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"configs de identacion
set autoindent
set smartindent

"shell
set shell=/bin/zsh

"Resalta la linea donde esta el cursorline"
set cursorline

"Codificacion"
set encoding=utf8
set fileencoding=utf8
scriptencoding utf-8

" Fuente preferida"
"set guifont=Bitstream\ Vera\ Sans\ Mono\ h:10"
set guifont=Inconsolata\ Medium\ 12
"   ^^^ Fuente parchada para compatibilidad con Powerline 

"StatusLine configs
set laststatus=2

"cursor mas alla del ultimo caracter en modo normal
set virtualedit=onemore

set wildmode=list:longest,full "mostrar opciones de completado de comandos
set wildmenu "lista seleccionable de autocompletado de comandos.

"Configs especiales para para Gvim
if has('gui_running')
  set lines=40  "Abre Gvim con 40 lineas de alto
  set guioptions-=T "Elimina la barra de herramientas en Gvim
endif

"Permite usar w!!  para aquellos archivos que requieren sudo y lo olvidas
cmap w!! w !sudo tee % >/dev/null

"Cambia el directorio a la ventana actual
set autochdir

"""""""""configs de plugins""""""""""""""""""

"nerdtree configs
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let NERDTreeChDirMode = 2

"syntastic configs
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

"config para vim-ruby
let g:rubycomplete_classes_in_global = 1

"config para Neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_auto_completion_start_length = 1
"let g:neocomplcache_snippets_dir='~/.vim/bundle/snipmate-snippets/snippets'

if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

"Config para Powerline
let g:Powerline_symbols = 'fancy'
set noshowmode
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

"Config para CtrlP
let g:ctrlp_working_path_mode = 'c'

""""""""""""""""""""""""""""""""""""""""""""

""""""""""Mapeos de teclas"""""""""""""""""

"Presiona F3 para entrar/salir al modo pegar mientras editas un archivo
set pastetoggle=<F3>

"F2 activa NERDTree
nnoremap <f2> :NERDTreeToggle .<cr>

"Leader+v abre en un tab el vimrc para editar
nmap <leader>v :tabnew $MYVIMRC<CR>

"arregla identacion presionando la tecla F7
map <F7> mzgg=G`z<CR>

"presiona espacio para borrar la busqueda resaltada
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Mapeos para Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

"Mapeos para Tabularize y otras mejoras
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
  nmap <Leader>a:: :Tabularize /:\zs<CR>
  vmap <Leader>a:: :Tabularize /:\zs<CR>
  nmap <Leader>a, :Tabularize /,<CR>
  vmap <Leader>a, :Tabularize /,<CR>
  nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

  " The following function automatically aligns when typing a
  " supported character
  inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

  function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
      let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
      let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
      Tabularize/|/l1
      normal! 0
      call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
  endfunction

endif

""""""""""""""""""""""""""""""""""""""""""""
