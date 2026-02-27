sudo apt-get update

echo "==================================="
echo "===== Installing dependencies ====="
echo "==================================="

echo "=====  ATP  ====="
sudo apt-get install -y \
  zsh \
  tmux \
  file curl unzip \
  build-essential zlib1g-dev libffi-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev liblzma-dev \
  chafa \

echo "===== pyenv ====="
curl https://pyenv.run | bash
$HOME/.pyenv/bin/pyenv install 3.8.10
$HOME/.pyenv/bin/pyenv install 3.10.12
$HOME/.pyenv/bin/pyenv global 3.10.12

echo "===== PIP ====="
sudo -H pip install -U pipenv
sudo -H pip install -U uv
sudo -H pip install -U marimo

echo "===== kfont ====="
wget http://cdn.naver.com/naver/NanumFont/fontfiles/NanumFont_TTF_ALL.zip
unzip NanumFont_TTF_ALL.zip -d NanumFont
rm -f NanumFont_TTF_ALL.zip
sudo mv NanumFont /usr/share/fonts/
fc-cache -f -v

echo "===== conda ====="
wget --output-document=$HOME/install_miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash $HOME/install_miniconda.sh -b
rm $HOME/install_miniconda.sh

echo "===== yazi ====="
python -m pip install rich-cli
./install_yazi.sh

echo "===== oh-my-zsh ====="
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh