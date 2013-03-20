sudo yes | yum install mercurial.i686
hg clone https://vim.googlecode.com/hg/ vim
cd vim/src
make
sudo make install
mv /usr/bin/vim /usr/bin/vim_bak
ln -s /usr/local/bin/vim /usr/bin/vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/yenchiugu/my_vim.git ~/.vim

cp ~/.vimrc ~/vimrcbak
cp ~/.gvimrc ~/gvimrcbak

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc
