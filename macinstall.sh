#!/bin/sh
#https://formulae.brew.sh/cask/
#chmod a+x macinstall.sh

#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask
brew install wget
brew install --cask xcodes

#PKG python
wget https://www.python.org/ftp/python/3.10.0/python-3.10.0-macos11.pkg
PKG=$(find *.pkg)
sudo installer -package $PKG -target /
rm $PKG

#PKG anaconda https://repo.anaconda.com/archive/
wdet https://repo.anaconda.com/archive/Anaconda3-2021.05-MacOSX-x86_64.pkg
PKG=$(find *.pkg)
sudo installer -package $PKG -target /
rm $PKG

#Dev
brew install docker
brew install --cask visual-studio-code
brew install --cask pycharm-ce
brew install --cask raspberry-pi-imager
#git clone https://github.com/marcelstoer/nodemcu-pyflasher.git

#DMG flasher
GITHUB_URL=https://github.com/marcelstoer/nodemcu-pyflasher/releases
VERSION_PY_FLASHER=$(curl -w '%{url_effective}' -I -L -s -S ${GITHUB_URL}/latest -o /dev/null | sed -e 's|.*/||')
wget https://github.com/marcelstoer/nodemcu-pyflasher/releases/download/${VERSION_PY_FLASHER}/NodeMCU-PyFlasher.dmg
DMG=$(find *.dmg)
sudo hdiutil attach $DMG
APP=$(find /Volumes -name '*.app')
sudo cp -R $APP /Applications
DET="$(cut -d'/' -f3 <<<"$APP")"
sudo hdiutil detach /Volumes/$DET
rm $DMG

#TAR ESP Flasher
wget https://github.com/Jason2866/ESP_Flasher/releases/download/v.1.3/ESP-Flasher_macOS.zip
unzip -a ESP-Flasher_macOS.zip
rm ESP-Flasher_macOS.zip
#tar -xvf dist.tar

#ZIP Arduino
LAST=$(curl https://arduino-cli.github.io/arduino-version/list | grep -oE "[^,]+$")
wget https://downloads.arduino.cc/arduino-$LAST-macosx.zip
unzip -a arduino-$LAST-macosx.zip
sudo mv Arduino.app /Applications/Arduino.app
rm arduino-$LAST-macosx.zip

#Tools
brew install --cask trezor-suite
brew install --cask itsycal
brew install --cask enpass
brew install --cask tuxera-ntfs
brew install --cask firefox
brew install --cask balenaetcher

wget https://info.eidentita.cz/Download/eObcanka.dmg
DMG=$(find *.dmg)
sudo hdiutil attach $DMG
PKG=$(find /Volumes -name '*.pkg')
sudo installer -package $PKG -target /
DET="$(cut -d'/' -f3 <<<"$PKG")"
sudo hdiutil detach /Volumes/$DET
rm $DMG


#Transfer (SFTP,SSH...)
brew install wget
brew install telnet
brew install --cask tunnelblick
brew install duck
brew install --cask cyberduck
brew install --cask teamviewer
#brew install --cask transfer
brew install --cask termius

#Media
brew install --cask kodi
brew install --cask vlc
brew install --cask airflow

#Translate
brew install --cask deepl

#Filezilla
wget https://download.filezilla-project.org/client/FileZilla_3.55.1_macosx-x86.app.tar.bz2
tar -xvf FileZilla_3.55.1_macosx-x86.app.tar.bz2
sudo mv FileZilla.app /Applications/FileZilla.app
rm FileZilla_3.55.1_macosx-x86.app.tar.bz2

