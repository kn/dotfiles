set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'SuperTab-continued.'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'nathanaelkane/vim-indent-guides'
au VimEnter * IndentGuidesEnable

Bundle 'derekwyatt/vim-scala'
Bundle 'digitaltoad/vim-jade'
Bundle 'duskhacker/sweet-rspec-vim'
Bundle 'groenewege/vim-less'
Bundle 'juvenn/mustache'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'sprsquish/thrift.vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/VimClojure'

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

augroup filetypedetect 
  au BufNewFile,BufRead *.confluencewiki set filetype=confluencewiki
augroup END

" ----------------------------
" Mappings
" ----------------------------
map <D-r> :SweetVimRspecRunFile<CR>
map <D-R> :SweetVimRspecRunForcused<CR>

cmap W w
cmap Q q

" ----------------------------
" Other Magics
" ----------------------------
