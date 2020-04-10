# Vim配置文件

## 一键安装

运行install.sh，只支持apt或yum系列

然后打开vim，按F9自动下载安装插件

## 手动安装

配置文件路径：

Windows, `c:/Users/YourName/_vimrc`

Linux, `/home/YourName/.vimrc`

Mac: `/Users/YourName/.vimrc`

### vundle配置

home目录(和配置文件同级目录)新建 `.vim/bundle` 文件夹

下载 [Vundle.vim](https://github.com/VundleVim/Vundle.vim) 放到`.vim/bundle`，如`/Users/YourName/.vim/bundle/Vundle.vim`

打开vim，按F9会自动安装插件 (需要配置Git环境)


## 快捷键

F2 窗口透明(仅Win下可用, 需要[vimtweak.dll](http://www.vim.org/scripts/script.php?script_id=687))

F3 关闭窗口透明(仅Win下可用)

F4 格式化文件，支持js、go

F5 运行文件，支持C/C++，go，Python

F6 编译文件，支持C/C++，go

F8 打开/关闭侧边栏（目录树/代码结构）

F9 安装插件

