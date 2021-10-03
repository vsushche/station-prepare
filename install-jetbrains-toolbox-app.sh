#!/bin/bash
set -e
echo "Jetbrains Toolbox App"
curl https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.21.9712.tar.gz | tar -xz
(cd jetbrains-toolbox-* && ./jetbrains-toolbox)
rm -rf jetbrains-toolbox-*

