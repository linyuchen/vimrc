pkg=""
if [ -d /etc/apt ]; then
    pkg="apt-get"
fi
if [ -d /etc/yum ]; then
    pkg="yum"
fi

if [ $pkg ]; then
    sudo $pkg install git ctags vim -y
fi

mkdir -p ~/.vim/bundle

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
fi

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.bk
fi

vimrcPath=`dirname $0`/.vimrc

cp $vimrcPath ~/.vimrc

