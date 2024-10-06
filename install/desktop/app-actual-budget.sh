cd /tmp
wget https://github.com/actualbudget/actual/releases/latest/download/Actual-linux.flatpak
flatpak install -y flathub org.freedesktop.Platform//23.08
flatpak install --user -y Actual-linux.flatpak
rm Actual-linux.flatpak
cd -
