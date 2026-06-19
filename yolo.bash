#!/bin/bash

set -e

echo "Aktualisiere System..."
sudo apt update
sudo apt upgrade -y

echo "Basis-Pakete..."
sudo apt install -y \
    flatpak \
    kde-config-flatpak \
    vlc \
    steam \
    keepassxc \
    thunderbird

echo "Flathub einrichten..."
flatpak remote-add --if-not-exists flathub \
https://flathub.org/repo/flathub.flatpakrepo

echo "Programme installieren..."
flatpak install -y flathub \
com.brave.Browser \
com.visualstudio.code \
org.onlyoffice.desktopeditors \
com.dropbox.Client \
md.obsidian.Obsidian \
com.discordapp.Discord \
com.obsproject.Studio

echo "Fertig."
