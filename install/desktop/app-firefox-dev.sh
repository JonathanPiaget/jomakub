cd /tmp
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O Firefox-dev.tar.bz2
sudo tar xjf Firefox-dev.tar.bz2 -C /opt/
rm -r Firefox-dev.tar.bz2
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox-dev
cd -
xdg-settings set default-web-browser Firefox-dev.desktop
