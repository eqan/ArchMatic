#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo -e "\nINSTALLING AUR SOFTWARE\n"

cd "${HOME}"

echo "CLOING: YAY"
git clone "https://aur.archlinux.org/yay.git"


PKGS=(

    # UTILITIES -----------------------------------------------------------

    'freeoffice'                # Office Alternative
    'zoom'
    'teams'
    'texlive-most'
    # MEDIA ---------------------------------------------------------------

    'screenkey'                 # Screencast your keypresses

    # COMMUNICATIONS ------------------------------------------------------

    'brave-nightly-bin'         # Brave
    
    # Widgets
    
    'meteo-qt'#Weather Widget
    
    #Neo Mutt [Mail Client]
    
    'mutt-wizard-git'
    'isync'
    'msmtp'
    'pass'
    'neomutt'
    
    #Rofi Menus
    'rofi'
    'rofi-calc'
    'rofi-wifi-menu-git'
		# Not included Rofi battery, rofi power
     'rofimoji'
    # THEMES --------------------------------------------------------------

    'lightdm-webkit-theme-aether'   # Lightdm Login Theme - https://github.com/NoiSek/Aether#installation
    'materia-gtk-theme'             # Desktop Theme
    'papirus-icon-theme'            # Desktop Icons
    'xcursor-entis'             # Cursor Themes)


cd ${HOME}/yay
makepkg -si

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo -e "\nDone!\n"
