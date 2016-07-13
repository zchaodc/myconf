# VI & VIM Configuration

===

vi and vim settings and plugins

### Introduction:
---

Installation requires Git and triggers git clone for each configured repository to ~/.vim/bundle/ by default. Curl is required for search.

If you are using Windows, go directly to Windows setup. If you run into any issues, please consult the FAQ. See Tips for some advanced configurations.

### Vundle
---

Set up Vundle:

$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Configure Plugins:

Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.

Install Plugins:

Launch vim and run :PluginInstall

To install from command line: vim +PluginInstall +qall

Vundle reference website: https://github.com/gmarik/Vundle.vim

### Others
---

* Plugins

    1. airline/powerline
    2. tagbar/taglist
    3. EasyMotion
    4. SuperTab
    5. Syntastic
    6. nerdtree
    7. nerdcommenter
    8. CtrlP
    9. Ag/Ack -> perl script
    0. Trim tailing space

* Shortcut
    1. w
    2. q
    3. x

* Keyboard

* General Settings
