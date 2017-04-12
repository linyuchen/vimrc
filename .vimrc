set nu
set paste
set encoding=utf8
set fileencodings=UTF8,GBK
set fileencoding=utf8
set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=79
syntax on
syntax enable
set nocompatible
filetype on
set autoindent

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'winmanager'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'markdown'
Plugin 'python_fold'
Plugin 'taglist.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ciaranm/inkpot'
Plugin 'mattn/emmet-vim'
Plugin 'python.vim'
Plugin 'Syntastic'
Plugin 'andviro/flake8-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'nvie/vim-flake8'
" Plugin 'Valloric/YouCompleteMe'
call vundle#end()
" winmanager

let g:winManagerWindowLayout = "TagList|FileExplorer"
"let g:winManagerWindowLayout = "TagList"
let g:AutoOpenWinManager = 1
let g:winManagerWidth = 30
nmap <silent> <F8> :WMToggle<cr>

" scheme

colorscheme inkpot
"set background=light
let python_highlight_all = 1


" emmet

let g:user_emmet_leader_key='<C-y>'

" flake8
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,frosted'


" Run

function RunCompiler()
    let fileName = expand("%:r") " 文件名
    exec "w"
    if &filetype == "python"
	exec "!python %"
    endif
endfunction

map <F5> :call RunCompiler()<cr>
map <F6> :call Flake8()<cr>

