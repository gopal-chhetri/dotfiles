sudo pacman -S ueberzug --noconfirm
sudo chmod +x lf-ueberzug
sudo chmod +x lf-ueberzug-previewer
sudo chmod +x lf-ueberzug-cleaner

cd /usr/local/bin/
sudo ln -s ~/.config/lf-ueberzug/lf-ueberzug /usr/local/bin/lf-ueberzug
sudo ln -s ~/.config/lf-ueberzug/lf-ueberzug-previewer /usr/local/bin/lf-ueberzug-previewer
sudo ln -s ~/.config/lf-ueberzug/lf-ueberzug-cleaner /usr/local/bin/lf-ueberzug-cleaner
