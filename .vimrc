
"                                 ___     
"        ___        ___          /__/\    
"       /__/\      /  /\        |  |::\   
"       \  \:\    /  /:/        |  |:|:\  
"        \  \:\  /__/::\      __|__|:|\:\ 
"    ___  \__\:\ \__\/\:\__  /__/::::| \:\
"   /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/
"   \  \:\|  |:|     \__\::/  \  \:\      
"    \  \:\__|:|     /__/:/    \  \:\     
"     \__\::::/      \__\/      \  \:\    
"         ~~~~                   \__\/    

" ========== PLUG =========
call plug#begin('~/.vim/plugged')

"  ======== VIM SCROLL ========
Plug 'reedes/vim-wheel'
Plug 'psliwka/vim-smoothie' 

" ======== LIGHTLINE ==========
Plug 'itchyny/lightline.vim'

call plug#end()

" ========== PLUG CONFIG =========
" Configure Plug Vim :))

" ========= ETC =========
syntax enable
set number
set noswapfile
set noshowmode
set history=1000
set backupdir=~/.vim/backup

" ========== THEME =========
set laststatus=2 " set line bar
set background=dark " set the main theme (dark/light)

" ========= LightLine ========
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': 'Harukaa'
      \ },
      \ }

if !has('gui_running')
  set t_Co=256
endif

" ========= Smooth Scroll =========
let g:smoothie_enabled = 1

" ========= Vim Scroll =========
let g:wheel#map#mouse = 1
let g:wheel#scroll_on_wrap = 1
let g:wheel#line#threshold = 5

