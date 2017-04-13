if has("win32")
    set guifont=SimSun-ExtB:h22:cGB2312
    set rtp+=$HOME/.vim/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif
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
Plugin 'jsbeautify'
" Plugin 'Valloric/YouCompleteMe'
call vundle#end()
" winmanager

let g:winManagerWindowLayout = "TagList|FileExplorer"
"let g:winManagerWindowLayout = "TagList"
let g:AutoOpenWinManager = 1
let g:winManagerWidth = 30

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

if has("win32")
    map <F2> :call libcallnr("vimtweak.dll", "SetAlpha",200)<cr>
    map <F3> :call libcallnr("vimtweak.dll", "SetAlpha",255)<cr>
endif
nnoremap <F4> :call g:Jsbeautify()<CR>
map <F5> :call RunCompiler()<cr>
map <F6> :call Flake8()<cr>
nmap <silent> <F8> :WMToggle<cr>
map <F9> :PluginInstall<cr>
