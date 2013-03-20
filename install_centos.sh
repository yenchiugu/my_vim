hg clone https://vim.googlecode.com/hg/ vim
cd vim/src
make

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/yenchiugu/my_vim.git ~/.vim

cp ~/.vimrc ~/vimrcbak
cp ~/.gvimrc ~/gvimrcbak


ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
