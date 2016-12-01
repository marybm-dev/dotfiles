set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bkad/CamelCaseMotion'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

function! NERDTreeFindOrToggle()
        if &filetype=="nerdtree"
                :NERDTreeToggle
        else
                :NERDTreeFind
        endif
endfunction


let mapleader = "\<Space>"
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>N :call NERDTreeFindOrToggle()<CR>
nmap <leader>gb V:<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
vmap <leader>gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

nmap <leader>e :edit $MYVIMRC<CR>
nmap <leader>m :CtrlPMRU<CR>
nmap <leader>t :sp<CR>
nmap <leader>h <C-[>W^<CR>

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed
set incsearch
set rtp+=~/.fzf
set number
set list listchars=tab:»·,trail:·
set guifont=ProggyCleanTTSZBP:h14:cDEFAULT
set noswapfile

ca W w
ca ag Ag

map <Leader>Rf :call RunCurrentSpecFile()<CR>
map <Leader>Rs :call RunNearestSpec()<CR>
map <Leader>Rl :call RunLastSpec()<CR>
map <Leader>Ra :call RunAllSpecs()<CR>
Bundle 'wakatime/vim-wakatime'
