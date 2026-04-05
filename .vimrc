" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Core Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'maxmellon/vim-jsx-pretty'
Plug 'projekt0n/github-nvim-theme', { 'tag': 'v0.0.7' }
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

" --- Colorscheme & Visual Styling ---
set bg=dark
colorscheme gruvbox

" This makes the background transparent (different from normal gruvbox)
highlight Normal ctermbg=None

" Airline (Status Bar) Styling
"let g:airline_theme='dark'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'default'

" NERDTree Visual Flags
"let g:NERDTreeGitStatusWithFlags = 1
"let g:NERDTreeIgnore = ['^node_modules$']

" --- General UI Settings (Non-mapping) ---
set number
set hlsearch
set mouse=a
set laststatus=2
set statusline+=%F
set signcolumn=yes

" Tab/Indentation
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" CoC Global Extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-html',
  \ 'coc-clangd',
  \ 'coc-java',
  \'coc-git',
  \ ]

" Internal CoC UI Settings
set hidden
set cmdheight=1
set updatetime=300
set shortmess+=c

set signcolumn=auto

let $JAVA_HOME="/opt/homebrew/opt/openjdk"
let $PATH="/opt/homebrew/opt/openjdk/bin:" . $PATH
let g:coc_start_at_startup = 1



noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>

noremap <F7> <ESC> :w<CR> :!python3 %<CR>
inoremap <F7> <ESC> :w<CR> :!python3 %<CR>

noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>


noremap <F1> <ESC> :w <CR> :!javac -Xlint:all "%" && java "%<" <CR>
inoremap <F1> <ESC> :w <CR> :!javac -Xlint:all "%" && java "%<" <CR>

set guioptions-=r
set guioptions-=l


let mapleader = "\<Space>"
noremap <Leader>s :source ~/.vimrc <CR>

nnoremap <leader>n :bnext<CR>
nnoremap <leader>tabn :tabnext<CR>

" Cycle Previous (Buffer or Tab)
 nnoremap <leader>p :bprev<CR>
 nnoremap <leader>tabp :tabprev<CR>


function! NewCppTab()
  let filename = input('Enter file name: ')
  if filename != ''
    execute 'tabnew ' . filename . '.cpp'
  else
    echo "No file name entered."
  endif
endfunction
 

" Function to prompt for a file name and delete it
function! DeleteFile()
    let l:filename = input('Delete file: ')
    if l:filename != ''
        execute '!rm' fnameescape(l:filename)
        echo 'Deleted: ' . l:filename
    endif
endfunction
 
" Function to prompt for a file name and create it
function! CreateNewFile()
    let l:filename = input('New file name (with path): ')
    if l:filename != ''
        execute 'e' l:filename
    endif
endfunction


let c_syntax_for_h=""
 
let g:netrw_keepdir = 0
 
let g:netrw_localrmdir='rm -r'
 
let mapleader = "\<Space>"
nnoremap <leader>nt :call NewCppTab()<CR>
noremap <Leader>b ^
noremap <Leader>e <ESC>:e .<CR>
"nnoremap <leader>el :Lexplore<CR>
noremap <Leader>r <C-R>
noremap <Leader>j <C-W><C-J>
noremap <Leader>u i_<ESC>r
noremap <Leader>vs :vs 
noremap <Leader>q :q<CR>
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
noremap <Leader>a ggVG
noremap <Leader>/ 0i//<ESC>
noremap <Leader>s :source ~/.vimrc <CR>
nnoremap <leader>mk :!mkdir 
nnoremap <leader>df :call DeleteFile()<CR>
nnoremap <leader>nf :call CreateNewFile()<CR>

set history=1000
set hlsearch
set ignorecase
set incsearch
set mousehide
set noerrorbells
set noswapfile
set number
set pastetoggle=
set shiftwidth=2
set smarttab
set tabstop=2
set vb t_vb=
set autoindent
set autoread
set expandtab     " Use spaces instead of tabs
set tabstop=2     " Number of spaces a <Tab> counts for
set shiftwidth=2  " Number of spaces to use for autoindent
set softtabstop=2 " Number of spaces a <Tab> inserts in insert mode

set relativenumber

"autocmd GUIEnter * set guifont=Menlo\ Regular:h16
"autocmd GUIEnter * set guifont=Fixedsys_Excelsior_3.01:h19
"autocmd GUIEnter * set guifont=Courier_Prime:h19
"autocmd GUIEnter * set guifont=Consolas:h14
"autocmd GUIEnter * set guifont=JetBrains_Mono:h15
"set guifont=SF_Mono:h14
autocmd FileType * setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ?
      \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ "\<TAB>"

inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-p>" : "\<C-h>"

" Confirm completion
inoremap <silent><expr> <CR>
      \ pumvisible() ? coc#_select_confirm() : "\<CR>"
" Go to definition
nmap <silent> gd <Plug>(coc-definition)

" Show documentation
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" Find references
nmap <silent> gr <Plug>(coc-references)

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Format Python file
command! -nargs=0 Format :call CocAction('format')



autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall
autocmd FileType haskell setlocal makeprg=ghci\ %
autocmd FileType python setlocal makeprg=python3\ %
autocmd FileType sh setlocal makeprg=%
autocmd FileType java setlocal omnifunc=v:lua.vim.lsp.omnifunc
