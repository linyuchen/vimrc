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
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set textwidth=79
syntax on
syntax enable
set nocompatible
filetype on
filetype plugin on
set autoindent
set backspace=indent,eol,start

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
"Plugin 'pylint.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
"Plugin 'nvie/vim-flake8'
Plugin 'linyuchen/jsbeautify'
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
"let g:PyFlakeOnWrite = 1
"let g:PyFlakeCheckers = 'pep8,mccabe,frosted'


" pylint
"let g:syntastic_python_checkers=['pylint']
"let g:pylint_onwrite = 0
"autocmd FileType python compiler pylint


" format
function Format()
    if &filetype == "javascript"
    	call g:Jsbeautify()
    endif
    if &filetype == "json"
    	call g:Jsbeautify()
    endif
    if &filetype == "go"
		exec "!go fmt ."
    endif
endfunction

" Run
function RunCompiler()
    let fileName = expand("%:r") " 文件名
    let outName = fileName . ".out"
    exec "w"
    if &filetype == "python"
        exec "!python %"
    endif
    if &filetype == "c"
        exec ("!gcc % -o " . outName . "&&./" . outName)
    endif
    if &filetype == "cpp"
        exec ("!g++ % -o " . outName . "&&./" . outName)
    endif
	if &filetype == "go"
        exec ("!go run . ")
    endif
endfunction

" Build
function Build()
    let fileName = expand("%:r") " 文件名
    if &filetype == "go"
        exec ("!go build . ")
    endif
    if &filetype == "c"
        exec ("!gcc % -o " . outName)
    endif
    if &filetype == "cpp"
        exec ("!g++ % -o " . outName)
    endif
endfunction


" keymap
if has("win32")
    au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 200)
    map <F2> :call libcallnr("vimtweak.dll", "SetAlpha",200)<cr>
    map <F3> :call libcallnr("vimtweak.dll", "SetAlpha",255)<cr>
endif

map <F4> :call Format()<CR>
map <F5> :call RunCompiler()<cr>
map <F6> :call Build()<cr>
map <silent> <F8> :WMToggle<cr>
map <F9> :PluginInstall<cr>
map <c-v> "+gp
map <c-c> "+y
