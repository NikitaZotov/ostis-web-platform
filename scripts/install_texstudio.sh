#!/bin/bash

sudo apt-get update
sudo apt install texlive-full

sudo add-apt-repository ppa:sunderme/texstudio
sudo apt remove texstudio-doc texstudio-l10n
sudo apt update
sudo apt install texstudio
