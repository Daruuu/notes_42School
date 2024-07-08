set nocompatible              " be iMproved, required
filetype off                  " required
set termguicolors

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'                " Gestor de plugins para Vim
Plugin 'vim-syntastic/syntastic'             " Verificador de sintaxis
Plugin 'alexandregv/norminette-vim'          " Integración de norminette para verificar el estilo de código
Plugin 'scrooloose/nerdtree'                 " Navegador de archivos en forma de árbol
Plugin 'sheerun/vim-polyglot'                " Soporte mejorado para múltiples lenguajes de programación
" Plugin 'itchyny/lightline.vim'             " Barra de estado ligera, eliminada por redundancia con vim-airline
Plugin 'jiangmiao/auto-pairs'                " Inserta automáticamente pares de caracteres
Plugin 'alvan/vim-closetag'                  " Cierra automáticamente etiquetas HTML/XML
Plugin 'vim-airline/vim-airline'             " Barra de estado rica en funcionalidades
Plugin 'vim-airline/vim-airline-themes'      " Temas para vim-airline
Plugin 'morhetz/gruvbox'                     " Tema de colores para Vim
Plugin 'frazrepo/vim-rainbow'                " Resalta pares de corchetes y paréntesis en diferentes colores
Plugin 'wakatime/vim-wakatime'             " Seguimiento de tiempo de codificación, eliminar si no es necesario

call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" Enable mouse support
set mouse=a
set number
" Habilitar el resaltado de sintaxis:
syntax on
set tabstop=4
set softtabstop=4
set autoindent
set cursorline
set textwidth=79
set ignorecase
set smartcase
" Habilitar el resaltado de búsqueda:
set hlsearch
" Show the matching part of pairs [] {} and ()
set showmatch

" Disable conceal
set conceallevel=1

" THEME GRUVBOX 
let g:gruvbox_termcolors=256
set background=light
let g:gruvbox_italic=1
let g:gruvbox_underline=1

" set background=dark
" let g:gruvbox_contrast_dark="hard"
"
let g:gruvbox_contrast_light="soft"
let g:gruvbox_improved_strings=0
colorscheme gruvbox 

" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do not set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = '~/.norminette/norminette.rb'
" let g:syntastic_c_norminette_exec = '~/.local/lib/python3.10/site-packages/norminette'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 0

" Skip check when closing
let g:syntastic_check_on_wq = 0

" Enable smarter tab line extension
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Color scheme (terminal)
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR> 

" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
