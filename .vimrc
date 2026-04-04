"colorscheme defalut 
" colorscheme codedark
" Match EndOfBuffer background to Normal
"autocmd ColorScheme * highlight EndOfBuffer guibg=NONE ctermbg=NONE

set signcolumn=number
"autocmd ColorScheme * highlight! link Boolean Function
"autocmd ColorScheme * highlight! link cppBoolean Function
"java home path
let $JAVA_HOME="/opt/homebrew/opt/openjdk"
let $PATH="/opt/homebrew/opt/openjdk/bin:" . $PATH

"let mapleader = "\<Space>"
 
"set clipboard=unnamedplus
"
inoremap <F1> <ESC>

noremap <F1> <ESC>:tabprev <CR>
inoremap <F1> <ESC>:tabprev <CR>

noremap <F3> <ESC> :w <CR> :make <CR>
inoremap <F3> <ESC> :w <CR> :make <CR>
 
"noremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
"inoremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
 
noremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>
inoremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>
 
"noremap <F6> <ESC> :!./%< < inp<CR>
"inoremap <F6> <ESC> :!./%< < inp<CR>
 
"noremap <F7> <ESC> :w !python3 <CR>
 
"noremap <F7> <ESC> :w <CR> :!avr-gcc -g -std=c99 -O1 -mmcu=atmega328p -o out.elf example.c<CR>
"noremap <F6> <ESC> :w <CR> :!avrdude -v -patmega328p -P /dev/cu.usbmodem14* -c arduino -U flash:w:"out.elf"<CR>
"noremap <F5> <ESC> :w <CR> :!avrdude -v -patmega328p -P /dev/cu.usbmodemHID* -c arduino -U flash:w:"out.elf"<CR>
 
 
"noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp<CR>
"inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>
 
" -pthread
 
noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>

" Compile and Run in a Terminal Split using F11 (Fixed with bash -c)
noremap <F2> <Esc>:w<CR>:vertical term bash -c "g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%<"<CR>
inoremap <F2> <Esc>:w<CR>:vertical term bash -c "g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%<"<CR>


" Run Python script with F7
noremap <F7> <ESC> :w<CR> :!python3 %<CR>
inoremap <F7> <ESC> :w<CR> :!python3 %<CR>


noremap <F6> <ESC> :w<CR> :!npm start<CR>
inoremap <F6> <ESC> :w<CR> :!npm start<CR>


noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>

noremap <F12> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp > output.txt 2>&1 <CR>
inoremap <F12> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp > output.txt 2>&1 <CR>

noremap <F1> <ESC> :w <CR> :!javac -Xlint:all "%" && java "%<" <CR>
inoremap <F1> <ESC> :w <CR> :!javac -Xlint:all "%" && java "%<" <CR>


"show current directory files
nnoremap \d :!ls<CR>

set guioptions-=r
set guioptions-=l
 
"inoremap {<CR> {<CR>}<ESC>k$A<CR>
 
noremap <TAB> %
 
 
call plug#begin('~/.vim/plugged')
 
 
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='general'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg' 
 
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"

" Enable the list of buffers at the top
let mapleader = "\<Space>"

"cycle Next (Buffer or Tab)
nnoremap <leader>n :bnext<CR>
nnoremap <leader>tabn :tabnext<CR>

" Cycle Previous (Buffer or Tab)
nnoremap <leader>p :bprev<CR>
nnoremap <leader>tabp :tabprev<CR>

" Close Current (Buffer)
nnoremap <leader>d :bdelete<CR>


Plug 'nanotech/jellybeans.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'honza/vim-snippets'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'        " For Git branch (FugitiveHead)
Plug 'tomasiser/vim-code-dark'
"Plug 'Mofiqul/vscode.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'rockyzhang24/arctic.nvim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'doums/darcula'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Enable clangd with coc
"let g:coc_global_extensions = ['coc-clangd']
"
"Plug 'gilligan/vim-lldb'

 
call plug#end()
":PlugInstall



" Colorscheme
syntax enable
set termguicolors
set background=light
"colorscheme solarized8_light
"colorscheme Monokai
"colorscheme codedark
"colorscheme default
"colorscheme macvim
colorscheme mac_classic
"colorscheme darcula
"colorscheme dark_plus 
"colorscheme jellybeans
"colorscheme bensday

highlight! link Terminal Normal
vnoremap <leader>y :w !pbcopy<CR>

"new tab function
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

" Keybinding to change directory
nnoremap <leader>cd :cd 
" Keybinding to create a new folder
nnoremap <leader>nf :!mkdir 
 
command! Prog :e ~/Documents/programming/
command! SP :e ~/Documents/SPBU_SP_6_term/
command! Kek source ~/.vimrc
"autocmd FocusLost * redraw!
"command! LLDB :!clang++ -fsanitize=address -std=c++17 -O0 -g -o "%<" "%" && lldb %<
command! Gdb !g++ -std=c++17 -O0 -g -o %< 
  
 
set autoindent
set autoread
set cin
set expandtab
"set guifont=Courier_Prime:h19

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

 
" Apply guifont in GUI mode

if has("gui_macvim")
  set fullscreen
  set guifont=SFMono_Nerd_Font:h14
endif

if has("gui_running")
    set guifont=SFMono_Nerd_Font:h14
    "set guifont=Menlo:h14
    "set guifont=Menlo\ Regular:h16
    "set guifont=Fixedsys_Excelsior_3.01:h19
    "set guifont=Courier_Prime:h19
    "set guifont=Consolas:h14
    "set guifont=Menlo\ Regular:h16
    "set background=light
      "set guioptions-=T
      "set guioptions-=m
endif


" === coc.nvim Python setup ===
let g:coc_global_extensions = [
  \ 'coc-pyright'
  \ ]

" Use Tab for completion
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

 
syntax on

 
set shellslash
silent! filetype plugin indent on
let g:tex_flavor='latex'
set sw=4
set iskeyword+=:
"g:Tex_CompileRule_pdf
"g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
 
" Navigate splits with Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make floaterm background white and text black
hi Floaterm guibg=white guifg=black
hi FloatermBorder guibg=white guifg=black


" Function to set Floaterm settings and compile C++ code inside Floaterm
function! CompileCppInFloaterm()
  " Floaterm Settings for <F9>
  let g:floaterm_position = 'bottom'
  let g:floaterm_height = 0.3
  let g:floaterm_width = 0.99
  let g:floaterm_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']
  let &titlestring = ''

  " Save, compile, and run C++ code inside Floaterm, keeping terminal open
  execute 'FloatermNew bash -c "g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%<; echo ''\Press any key to exit......''; read -n1 -s"'
endfunction

" Map <F9> to call the function when pressed
noremap <F9> <ESC>:call CompileCppInFloaterm()<CR>
inoremap <F9> <ESC>:call CompileCppInFloaterm()<CR>

" Function to run Python files in Floaterm
function! RunPythonInFloaterm()
  " Floaterm Settings for <F7>
  let g:floaterm_position = 'bottom'
  let g:floaterm_height = 0.3
  let g:floaterm_width = 0.99
  let g:floaterm_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']
  let &titlestring = ''

  " Save current file and run it using Python in Floaterm, wait for a key before exit
  execute 'FloatermNew bash -c "python3 %; echo ''\Press any key to exit......''; read -n1 -s"'
endfunction

" Map <F7> to call the function
"noremap <F7> <ESC>:call RunPythonInFloaterm()<CR>
"inoremap <F7> <ESC>:call RunPythonInFloaterm()<CR>


" Function to set Floaterm settings and toggle it
function! ToggleDefaultFloaterm()
  let g:floaterm_position = 'center'
  let g:floaterm_height = 0.8
  let g:floaterm_width = 0.8
  let g:floaterm_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']
  let &titlestring = ''

  " Toggle Floaterm
  execute 'FloatermToggle'
endfunction

" Normal mode mapping for Ctrl+t
nnoremap <C-t> :call ToggleDefaultFloaterm()<CR>

" Insert mode mapping for Ctrl+t
inoremap <C-t> <Esc>:call ToggleDefaultFloaterm()<CR>

"tnoremap <Esc> <C-\><C-n>:FloatermHide<CR>

