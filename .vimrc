set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'SuperTab'
Bundle 'tpope/vim-fugitive'
Bundle 'wincent/Command-T'
Bundle 'ctrlpvim/ctrlp.vim'

" Language plugins
Bundle 'pangloss/vim-javascript'
Bundle 'leafgarland/typescript-vim'
Bundle 'tomlion/vim-solidity'

" Indent visual guide
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

" .vim/undodir/  must exist
set undodir=~/.vim/undodir "persistent undos between editing sessions
set undofile "Doesn't work in ubuntu 10.04

set expandtab
set tabstop=2
set wildmode=list:longest
set nonu
set sts=2
set ai
set shiftwidth=2
set hlsearch
set smartindent "indent after {
set autoindent "keep the current indent for new lines
set title "set terminal title to file name

" Color
set t_Co=256
set bg=dark
syntax on

" Highlight over lengthed line
au FileType javascript,python,ruby highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au FileType javascript,python,ruby match OverLength /\%81v.\+/

" ----------------------------
" Filetype Settings
" ----------------------------
au FileType,BufNewFile Rakefile set ft=ruby
au FileType,BufNewFile Guardfile set ft=ruby
au FileType,BufNewFile Gemfile set ft=ruby
au BufRead,BufNewFile *.thrift set ft=thrift
" Don't syntax highlight markdown because it's often wrong.
au! FileType mkd setlocal syn=off
" Auto remove brittspaces
au BufWritePre *.scala :%s/\s\+$//e
au BufWritePre *.rb :%s/\s\+$//e
au BufWritePre *.py :%s/\s\+$//e
au BufWritePre *.js :%s/\s\+$//e
au BufWritePre *.coffee :%s/\s\+$//e
au BufWritePre *.java :%s/\s\+$//e
au BufWritePre *.css :%s/\s\+$//e
au BufWritePre *.scss :%s/\s\+$//e
au BufWritePre *.less :%s/\s\+$//e
" Language specific settings
au BufRead *.py set tabstop=4
au BufRead *.py set sts=4 
au BufRead *.py set shiftwidth=4

augroup filetypedetect 
  au BufNewFile,BufRead *.confluencewiki set ft=confluencewiki
augroup END

" ----------------------------
" Mappings
" ----------------------------
map <D-r> :SweetVimRspecRunFile<CR>
map <D-R> :SweetVimRspecRunForcused<CR>
" Open files in directory of current file.
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%
" I always type in uppercase character for saving and quiting.
ca WQ wq
ca Wq wq
ca W w
ca Q q
" Clear search highlights by pressing enter.
nnoremap <CR> :nohlsearch<CR>/<BS>
" Move around splits with <c-hjkl>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
