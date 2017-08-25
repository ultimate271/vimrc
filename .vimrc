set encoding=utf-8
"Weird interaction with backspace, not sure what was going on but this fixes it.
set backspace=indent,eol,start

"Define where the vim bundles are for plugins
if has('win32')
    let $VIMHOME = $HOME."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

"plugins
set nocompatible
filetype off
set rtp+=$VIMHOME/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'wincent/scalpel'
Plugin 'haya14busa/incsearch.vim'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
set backupdir=$VIMHOME/backup

"Line number goodness
set relativenumber
set number

"Options to make the idotic automatic text wrapping go away
set textwidth=0 
set wrapmargin=0

"Scrolling goodness (winheight(win_getid())-x)/2 where x is the 'wiggle room'
augroup VCenterCursor
    au!
    au BufEnter,WinEnter,WinNew,VimResized *,*.* 
        \ let &scrolloff=(winheight(win_getid())-12)/2
augroup END

"Prefer spaces (for now)
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set copyindent
set autoindent

"What to toggle to see whitespace
set listchars=space:.
set listchars^=eol:$
set listchars^=tab:>-

function! ToggleCC(colno)
    if &colorcolumn != ""
        set colorcolumn=
    else
        let &colorcolumn=a:colno
    endif
endfunction

syntax enable
if filereadable(expand("$VIMHOME/colors/bdubcolor.vim"))
    colorscheme bdubcolor
else
    colorscheme slate
endif
