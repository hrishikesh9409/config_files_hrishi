

set rtp+=~/.vim/bundle/Vundle.vim
set number
set mouse=a


" this is for ctrl-s saving both in insert and normal mode----------
:nmap <c-s> :w<CR>
:inoremap <c-s> <c-o>:update<CR>
"-------------------------------------------------------------------
" :imap <c-z> <Esc>:u<CR>\|i
" scrolling up and down multiple lines atonce-----------------------
:nmap <c-up> -3
:nmap <c-down> +3
:vmap <c-up> -3
:vmap <c-down> +3

" This is for mapping ctrl-c, ctrl-v, ctrl-a------------------------
:vmap <C-c> "+y
:vmap <C-v> p
:nmap <C-a> ggVG
:vnoremap <C-X> "+x

" this is for ctrl-s saving both in insert and normal mode----------
:nmap <c-s> :w<CR>
:inoremap <c-s> <c-o>:update<CR>

call vundle#begin()



Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'evgenyzinoviev/vim-vendetta'
Plugin 'gkjgh/cobalt'
Plugin 'bling/vim-airline'
Plugin 'powerline/fonts'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

call vundle#end()           
filetype plugin indent on   

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
set laststatus=2
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_solarized_bg='dark'
let g:airline_theme='powerlineish'

syntax enable
colorscheme vendetta

let g:ycm_autoclose_preview_window_after_insertion = 1

let g:UltiSnipsExpandTrigger = "<nop>"                                                                                                                               
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"                                                                            
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
