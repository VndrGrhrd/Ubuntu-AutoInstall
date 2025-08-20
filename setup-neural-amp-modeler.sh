#!/bin/bash
# cria pasta LV2
mkdir -p /home/vandoir/.lv2
sudo chown -R vandoir:vandoir /home/vandoir/.lv2

# baixa Ratatouille
wget -O /tmp/ratatouille.lv2.tar.xz https://github.com/brummer10/Ratatouille.lv2/releases/latest/download/Ratatouille.lv2-v0.9.11-linux-x86_64.tar.xz
wget -O /tmp/ratatouille.app.tar.xz https://github.com/brummer10/Ratatouille.lv2/releases/latest/download/Ratatouille.lv2-app-v0.9.11-linux-x86_64.tar.xz

# extrai
tar -xJf /tmp/ratatouille.lv2.tar.xz -C /home/vandoir/.lv2
sudo tar -xJf /tmp/ratatouille.app.tar.xz -C /opt

# cria desktop
cat >/home/vandoir/.local/share/applications/ratatouille.desktop <<'EOF'
[Desktop Entry]
Version=1.0
Name=Ratatouille
Comment=NAM (Neural AMP Modeler) LV2 Audio Plugin Host
Exec=/opt/Ratatouille.lv2-app-v0.9.11/Ratatouille
Icon=audio-card
Terminal=false
Type=Application
Categories=AudioVideo;Audio;X-Jack;X-LV2;
EOF
