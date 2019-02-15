set encoding=utf-8
set termencoding=utf-8
"设置leader
let mapleader=','
"Vundle需要，设置不兼容vi，默认是兼容的
set nocompatible             
"不检查文件类型
filetype off                
set runtimepath+=~/.vim/bundle/Vundle.vim
"vundle开始运行
call vundle#begin()
"运行它 Vundle将管理其它的插件
Plugin 'VundleVim/Vundle.vim'
"＊＊＊＊＊＊被管理插件开始＊＊＊＊＊＊＊
"安装nerdtree
Plugin 'scrooloose/nerdtree'
"安装UltiSnips
Plugin 'SirVer/ultisnips'
"UltoSnips 代码集成块
Plugin 'honza/vim-snippets'
"Add gordon vim for config
Plugin 'windfog/gordon.vim'
"Add translate plugin
Plugin 'windfog/en-ch-translate.vim'
"安装 vim-go
Plugin 'fatih/vim-go'
"＊＊＊＊＊＊被管理插件结束＊＊＊＊＊＊＊

"vundle 运行结束
call vundle#end()           

filetype plugin indent on

"＊＊＊＊＊＊插件个性化开始＊＊＊＊＊＊＊＊＊
call gordon#SettingNerdTree()
call gordon#SettingUltisnips()
call gordon#SettingOneKeyRun()
call gordon#SettingQuickConfig()
call gordon#SettingCopy()
call gordon#SettingVimGo()
""＊＊＊＊＊＊插件个性化结束＊＊＊＊＊＊＊＊＊

"＊＊＊＊＊＊配置vundle结束＊＊＊＊＊＊＊

"＊＊＊＊＊＊VISULE模式开始＊＊＊＊＊＊＊＊＊
"＊＊＊＊＊＊VISULE模式结束＊＊＊＊＊＊＊＊＊

"＊＊＊＊＊＊INSERT模式开始＊＊＊＊＊＊＊＊＊
inoremap jk <ESC>
"＊＊＊＊＊＊INSERT模式结束＊＊＊＊＊＊＊＊＊

"＊＊＊＊＊＊NORMAL模式开始＊＊＊＊＊＊＊＊＊

"＊＊＊＊＊＊NORMAL模式结束＊＊＊＊＊＊＊＊＊


