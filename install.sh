mkdir -p ~/.vim/bundle

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/
fi

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.bk
fi

vimrcPath=`dirname $0`/.vimrc

cp -f $vimrcPath ~/.vimrc

