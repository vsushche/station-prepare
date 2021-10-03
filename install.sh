#!/bin/bash
set -e
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-tools.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-git.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-nodejs.sh | sh
curl -fsSL https://raw.githubusercontent.com/vsushche/station-prepare/main/install-docker.sh | sh

