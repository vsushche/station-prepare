#!/bin/bash
set -e
echo Install Visual Studio Code
sudo yum -y remove code || true
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo yum -y check-update || true
sudo yum -y install code
mkdir ~/.vscode
sudo cat << EOF > /usr/share/applications/visual-studio-code.desktop
[Desktop Entry]
Version=1.0
Name=Visual Studio Code
Exec=code --user-data-dir ~/.vscode 
Terminal=false
Type=Application
StartupNotify=true
Categories=Development;
Icon=/usr/share/code/resources/app/resources/linux/code.png
X-Desktop-File-Install-Version=0.1
EOF