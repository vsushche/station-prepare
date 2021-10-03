#!/bin/bash
set -e
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-tools.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-git.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-nodejs.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-docker.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-docker-compose.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-visual-studio-code.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-jetbrains-toolbox-app.sh | sh


