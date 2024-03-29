" --- Set up vundle
" Requires vundle to be installed

" Disable autoindent for vundle to work properly
set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim

" Vundle stores Plugins in ~/.vim/bundle
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --- Plugins
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/vim-easy-align'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ryanoasis/vim-devicons'
"Plugin 'nvim-telescope/telescope' " Only nvim?

" Language-specific plugins
Plugin 'fatih/vim-go'

call vundle#end()

" re-enable autoindent
filetype plugin indent on
" --- Vundle done

" Set mapleader first so it works in plugins
let mapleader = " "

set encoding=UTF-8


" --- Keybindings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Toggle NerdTree
"noremap <silent> <leader>t :NERDTreeToggle<CR>
noremap <silent> <leader>t :NERDTreeToggleVCS<CR>

" Show current file in NerdTree
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" git fugitive
nnoremap <leader>g :Git<CR>

" switch buffer
nnoremap <Leader>b :buffers<CR>:buffer<Space>

" switch relative/absolute numbers
nnoremap <Leader>r :set relativenumber!<CR>

" --- Plugin Settings

" NerdTree Settings
let g:NERDTreeGitStatusUseNerdFonts = 1  " Use NerdFonts for git status in tree
let NERDTreeQuitOnOpen = 1  " Automatically close NERDTree on file open

" NERDTree appearance
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Close window if NERDTree is the last one
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically open NERDTree when no file is provided
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeVCS | endif


" GitGutter Style
let g:gitgutter_set_sign_backgrounds = 1
highlight GitGutterAdd    guifg=#009900 ctermfg=2 term=bold cterm=bold
highlight GitGutterChange guifg=#bbbb00 ctermfg=3 term=bold cterm=bold
highlight GitGutterDelete guifg=#ff2222 ctermfg=1 term=bold cterm=bold

" Make git status appear faster than the default 4 sec
set updatetime=100

" Enable powerline fonts for airline
let g:airline_powerline_fonts = 1

" Automatically display all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1


" --- Settings
set shell=/bin/bash  " Make sure to use bash
syntax on
set noswapfile
set hlsearch 
set ignorecase
"set incsearch " Not needed -> vim-sensible
set showmatch

" Setting number and relativenumber enables hybrid number
set number
"set relativenumber

" Enable relative linenumbers automatically
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" Always display signcolumn
set signcolumn=yes

"Transparent signcolum 
highlight clear SignColumn

set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

filetype plugin indent on

