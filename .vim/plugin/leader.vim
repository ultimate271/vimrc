"Fun stuff with the leader key
let mapleader = '\'
map <space> <leader>
set timeoutlen=4000
"Some changes
"Some more changes


"Easily edit vimrc
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>wv ZZ:source $MYVIMRC<cr>
nnoremap <leader>ec :tabedit $VIMHOME/colors/bdubcolor.vim<cr>
nnoremap <leader>wc ZZ:source $MYVIMRC<cr>
nnoremap <leader>eh :tabedit $VIMHOME/plugin/leader.vim<cr>
nnoremap <leader>wh ZZ:source $VIMHOME/plugin/leader.vim<cr>
nnoremap <silent> <leader>ww :w<cr>:source %<cr>


"Blackhole Register
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap c "_c
vnoremap c "_c

"Easily select clipboard register
nnoremap <C-c> "*
vnoremap <C-c> "*
inoremap <C-c> <C-r>*

"Insert Text
inoremap --- <esc>80i-<esc>A
inoremap === <esc>80i=<esc>A
nnoremap <leader>f<space> :%s/	/    /g<cr>
nnoremap <leader>p mr$p`r
nnoremap <leader>P mrGp`r

"Very magic searching
nnoremap / /\v
vnoremap / /\v

"Tab Creation and Switching
nnoremap gh gT
nnoremap gl gt
nnoremap gt :tabedit .<cr>
nnoremap gw :tabclose<cr>
nnoremap <leader>h :bnext<cr>
nnoremap <leader>l :bprevious<cr>

"Easy Pane Navigation
set winminwidth=20
nnoremap <silent> <C-h> :set nowrap<cr><C-w>h:vertical resize 88<cr>
nnoremap <silent> <C-j> :set nowrap<cr><C-w>j:vertical resize 88<cr>
nnoremap <silent> <C-k> :set nowrap<cr><C-w>k:vertical resize 88<cr>
nnoremap <silent> <C-l> :set nowrap<cr><C-w>l:vertical resize 88<cr>

"Tabulate shortcut
vnoremap = :Tab /=<cr>

"Scalpel Remap
nmap <Leader>s <Plug>(Scalpel)
vmap <Leader>s <Plug>(ScalpelVisual)
nnoremap <silent> <leader>n :noh<cr>

"Incremntal Search
set hlsearch
set ignorecase
set smartcase
nnoremap <leader>n :noh<cr>

"Convienience mappings
nnoremap H ^
nnoremap L $
vnoremap J j
vnoremap K k

"Close one buffer at a time
command Q bdelete
command WQ call WBDelete()

function! WBDelete()
    execute "w"
    execute "bdelete"
endfunction
