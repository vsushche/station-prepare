#!/bin/bash
set -e
echo Install Git
sudo dnf update -y
sudo dnf install git -y
git --version
