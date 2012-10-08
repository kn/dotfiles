set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'SuperTab-continued.'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'

Bundle 'derekwyatt/vim-scala'
Bundle 'digitaltoad/vim-jade'
Bundle 'duskhacker/sweet-rspec-vim'
Bundle 'groenewege/vim-less'
Bundle 'juvenn/mustache.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'sprsquish/thrift.vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/VimClojure'
Bundle 'helino/vim-json'

set expandtab
set tabstop=2
set wildmode=list:longest
set nu
set sts=2
set ai
set bg=dark
set shiftwidth=2
set hlsearch
syntax on

" ----------------------------
" Filetype Settings
" ----------------------------
au FileType,BufNewFile Rakefile set ft=ruby
au FileType,BufNewFile Guardfile set ft=ruby
au FileType,BufNewFile Gemfile set ft=ruby
au BufRead,BufNewFile *.thrift set filetype=thrift

augroup filetypedetect 
  au BufNewFile,BufRead *.confluencewiki set filetype=confluencewiki
augroup END

" ----------------------------
" Mappings
" ----------------------------
map <D-r> :SweetVimRspecRunFile<CR>
map <D-R> :SweetVimRspecRunForcused<CR>
ca WQ wq
ca Wq wq
ca W w
ca Q q

" Clear search highlights by pressing enter.
nnoremap <CR> :nohlsearch<CR>/<BS>

inoremap jk <Esc>

" ----------------------------
" Other Magics
" ----------------------------
