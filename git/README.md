# GIT


=====



### Git color settings

git config --global color.ui auto

git config --global color.branch auto

git config --global color.diff auto

git config --global color.interactive auto

git config --global color.status auto

### auto-complete

自动补全 如果你用的是 Bash shell，可以试试看 Git 提供的自动补全脚本。下载 Git 的源代码，进入 contrib/completion 目录，会看到一个 git-completion.bash 文件。 将此文件复制到你自己的用户主目录中（译注：按照下面的示例，还应改名加上点：cp git-completion.bash ~/.git-completion.bash），并把下面一行内容添加到你的 .bashrc 文件中：

source ~/.git-completion.bash
