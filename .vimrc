set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'SuperTab-continued.'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'

Bundle 'kchmck/vim-coffee-script'
Bundle 'juvenn/mustache'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'
Bundle 'vim-ruby/vim-ruby'
Bundle 'duskhacker/sweet-rspec-vim'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'derekwyatt/vim-scala'
Bundle 'groenewege/vim-less'
Bundle 'vim-scripts/VimClojure'
Bundle 'sprsquish/thrift.vim'

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

