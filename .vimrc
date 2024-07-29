   "Vim Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'

call plug#end()

"Gruvbox theme settings
set background=dark
let g:gruvbox_italic=0
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:airline_theme='gruvbox'

"Show number line
set number

"Use Lex as file tree
inoremap <c-b> <Esc>:Lex<cr>:vertical resize   30<cr> 
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize   30<cr>
let g:netrw_banner=0

"Set up proper tab width
set tabstop=4
set shiftwidth=4
set expandtab
