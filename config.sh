terminator(){
    echo 'Terminate configuration'
    kill $PPID
    exit 1
}

trap 'terminator' SIGINT

# Update and upgrade images
echo "Do you want to update and upgrade ubuntu? [y/n(default)]"
read choice

if [ "${choice}" == 'y' ]; then
    echo "sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove"
    sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove
else
    echo "Skip the update and upgrade process"
fi

# Install Vundle
echo "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vim-plug
# echo "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "cp ./.vimrc ~/"
cp ./.vimrc ~/

# Notify vim plugin installation
echo "vim -c PluginInstall -c q -c q"
vim -c PluginInstall -c q -c q

source ~/.bashrc

echo "Finished"
