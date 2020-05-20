mkdir -p ~/.themes;
# ------- First install gnome tweaks and themes -------#
sudo apt install gnome-tweaks;
sudo apt install gnome-shell-extensions --assume-yes;
sudo add-apt-repository ppa:daniruiz/flat-remix;
sudo apt update;
sudo apt install flat-remix-gtk;
sudo apt install arc-theme;
# ------- Download and unzip... -------#
wget https://codeload.github.com/daniruiz/flat-remix-gtk/zip/master;
unzip master;
mv flat-remix-gtk-master/ ~/.themes;
rm master;
# ------- Download and unzip... -------#
wget https://codeload.github.com/daniruiz/flat-remix/zip/master;
unzip master;
mv flat-remix-master/ ~/.themes;
rm master;
# ------- Apply Themes -------#
gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark" && 
gsettings set org.gnome.desktop.interface cursor-theme 'DMZ-White' && 
gsettings set org.gnome.desktop.interface icon-theme 'Flat-Remix-Green-Dark';
gsettings set org.gnome.shell.extensions.user-theme name "Arc-Dark";
