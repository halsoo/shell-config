sudo apt-get update
sudo apt-get install -y unzip
wget http://cdn.naver.com/naver/NanumFont/fontfiles/NanumFont_TTF_ALL.zip
unzip NanumFont_TTF_ALL.zip -d NanumFont
rm -f NanumFont_TTF_ALL.zip
sudo mv NanumFont /usr/share/fonts/
fc-cache -f -v