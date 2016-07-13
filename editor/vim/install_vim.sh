# !/bin/bash
CUR_PATH="${PWD}"
VIM_PATH="vim"
BUNDLE_PATH="${VIM_PATH}/bundle"
VUNDLE_GIT="https://github.com/gmarik/Vundle.vim.git"

# vim tools installation
INSTALL_VIM_PATH="${CUR_PATH}/${VIM_PATH}"
echo "Vim path: " ${INSTALL_VIM_PATH}
if [[ ! -d ${INSTALL_VIM_PATH} ]]; then
    \mkdir -pv ${INSTALL_VIM_PATH}
fi

cd ${INSTALL_VIM_PATH}

# TODO: copy vimrc file to vim path

# bundle installation
INSTALL_BUNDLE_PATH="${CUR_PATH}/${BUNDLE_PATH}"
echo "Bundle path: " ${INSTALL_BUNDLE_PATH}
if [[ ! -d ${INSTALL_BUNDLE_PATH} ]]; then
    \mkdir -pv ${INSTALL_BUNDLE_PATH}
fi

cd ${INSTALL_BUNDLE_PATH}

# Set up Vundle
git clone ${VUNDLE_GIT} ~/.vim/bundle/Vundle.vim

# Install vundle plugins
\vim +PluginInstall +qall

# Set home env
if [[ "${HOME}" -ne ${CUR_PATH} ]]; then
    # home dir
    cd ${HOME}
    # check the .vim dir
    if [[ ! -d .vim ]]; then
      \ln -sf ${INSTALL_VIM_PATH} .vim
    fi

fi

# TODO: link ${HOME} vimrc file
# \ln -sf
