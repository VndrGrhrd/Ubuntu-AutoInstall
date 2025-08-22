#!/bin/bash
# install-flatpaks.sh
# Instala Flatpaks globais no sistema

exec > /var/log/install-flatpaks.log 2>&1
set -x

# Adiciona o Flathub se não existir
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Instala os pacotes desejados (modo --system)
flatpak install -y --noninteractive --system flathub com.google.Chrome
flatpak install -y --noninteractive --system flathub com.brave.Browser
flatpak install -y --noninteractive --system flathub org.onlyoffice.desktopeditors
flatpak install -y --noninteractive --system flathub it.mijorus.gearlever
flatpak install -y --noninteractive --system flathub com.github.tchx84.Flatseal
flatpak install -y --noninteractive --system flathub rest.insomnia.Insomnia
flatpak install -y --noninteractive --system flathub com.visualstudio.code
flatpak install -y --noninteractive --system flathub com.sublimetext.three
