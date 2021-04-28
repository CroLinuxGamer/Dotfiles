" Config by
  " ____                            _    _         _             _    _
 " / ___|_ __ ___  _ __  _   _     / \  | | ____ _| |_ ___ _   _| | _(_)
" | |   | '__/ _ \| '_ \| | | |   / _ \ | |/ / _` | __/ __| | | | |/ / |
" | |___| | | (_) | | | | |_| |  / ___ \|   < (_| | |_\__ \ |_| |   <| |
 " \____|_|  \___/|_| |_|\__, | /_/   \_\_|\_\__,_|\__|___/\__,_|_|\_\_|
  "                      " |___/

" plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
" general settings
source $HOME/.config/nvim/general/settings.vim
" mapping settings
source $HOME/.config/nvim/keys/mappings.vim
" airline settings
source $HOME/.config/nvim/themes/airline.vim
" fzf
source $HOME/.config/nvim/plug-config/fzf.vim
" colorizer
lua require'plug-colorizer'
" rainbow is mine
source $HOME/.config/nvim/plug-config/rainbow_parentheses.vim
" comment easily
source $HOME/.config/nvim/plug-config/commentary.vim
" startify
source $HOME/.config/nvim/plug-config/start-screen.vim
" signify
source $HOME/.config/nvim/plug-config/signify.vim

" spell and completion settings
nmap <silent> <F4> :call Spell_check() <CR>

function! Spell_check()
    set spell spelllang=en_us
    set complete+=kspell
    set completeopt=menuone,longest
    set shortmess+=c
    nnoremap <leader>s ea<C-X><C-S>
    nnoremap <leader>p [s
    nnoremap <leader>n ]s
    nnoremap <leader>a zg
    nnoremap <leader>r zug
    inoremap <buffer> <expr> <CR> pumvisible() ? "\<C-y><Esc>" : "\<CR>"
endfunction

