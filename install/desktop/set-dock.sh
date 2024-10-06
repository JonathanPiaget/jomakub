# Favorite apps for dock
apps=(
	"firefox_firefox.desktop"
	"Alacritty.desktop"
	"code.desktop"
	"md.obsidian.Obsidian.desktop"
	"spotify.desktop"
	"proton-mail.desktop"
	"proton-pass.desktop"
	"com.actualbudget.actual.desktop"
	"Activity.desktop"
	"Docker.desktop"
	"org.gnome.Nautilus.desktop"
	"org.gnome.Settings.desktop"
)

# Array to hold installed favorite appsa
installed_apps=()

# Directory where .desktop files are typically stored
desktop_dirs=(
	"/var/lib/flatpak/exports/share/applications"
	"/usr/share/applications"
	"/usr/local/share/applications"
	"$HOME/.local/share/applications"
	"/var/lib/snapd/desktop/applications"
	"$HOME/.local/share/flatpak/exports/share/applications"
)

# Check if a .desktop file exists for each app
for app in "${apps[@]}"; do
	for dir in "${desktop_dirs[@]}"; do
		if [ -f "$dir/$app" ]; then
			installed_apps+=("$app")
			break
		fi
	done
done

# Convert the array to a format suitable for gsettings
favorites_list=$(printf "'%s'," "${installed_apps[@]}")
favorites_list="[${favorites_list%,}]"

# Set the favorite apps
gsettings set org.gnome.shell favorite-apps "$favorites_list"
