cd /tmp
# Download the repository configuration and keys required to install the Proton VPN app
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.4_all.deb
# Install the Proton VPN repository containing the new app
sudo dpkg -i ./protonvpn-stable-release_1.0.4_all.deb && sudo apt update
rm protonvpn-stable-release_1.0.4_all.deb

# Install the Proton VPN app
sudo apt install proton-vpn-gnome-desktop
# Make sure the latest version of the app is installed
sudo apt update && sudo apt upgrade -y
# Add linux system tray support
sudo apt install -y libayatana-appindicator3-1 gir1.2-ayatanaappindicator3-0.1 gnome-shell-extension-appindicator
cd -
