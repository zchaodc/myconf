Introduction:

Installation requires Git and triggers git clone for each configured repository to ~/.vim/bundle/ by default. Curl is required for search.

If you are using Windows, go directly to Windows setup. If you run into any issues, please consult the FAQ. See Tips for some advanced configurations.

Set up Vundle:

$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Configure Plugins:

Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.


Install Plugins:

Launch vim and run :PluginInstall

To install from command line: vim +PluginInstall +qall



Vundle refer website: https://github.com/gmarik/Vundle.vim
