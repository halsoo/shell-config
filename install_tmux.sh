wget https://github.com/tmux/tmux/releases/download/3.3a/tmux-3.3a.tar.gz
tar -zxf tmux-3.3a.tar.gz
cd ./tmux-3.3a
./configure
make && sudo make install
cd ..
rm tmux-3.3a.tar.gz
rm -rf tmux-3.3a