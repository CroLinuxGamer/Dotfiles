" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " color scheme
    Plug 'fneu/breezy'
    " line
    Plug 'vim-airline/vim-airline'
    " fzf support
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " color support
    Plug 'norcalli/nvim-colorizer.lua'
    " rainbow is mine
    Plug 'junegunn/rainbow_parentheses.vim'
    " easy commenting
    Plug 'tpope/vim-commentary'
    " nice start screen
    Plug 'mhinz/vim-startify'
    " git support
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " quick scope
    Plug 'unblevable/quick-scope'

call plug#end()
